import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:revup_core/core.dart';

import '../../../gen/assets.gen.dart';
import '../../../l10n/l10n.dart';
import '../../../router/router.dart';
import '../../../shared/fallbacks.dart';
import '../../../shared/widgets/dismiss_keyboard.dart';
import '../../../shared/widgets/loading.u.dart';
import '../../../shared/widgets/unknown_failure.dart';
import '../../image_picker/bloc/image_picker_bloc.u.dart';
import '../bloc/new_service_bloc.dart';

class NewServiceRequestView extends StatefulWidget {
  const NewServiceRequestView({
    super.key,
    required this.optionalService,
    required this.providerId,
    required this.isSelectProduct,
    this.recordId,
  });
  final List<OptionalService> optionalService;
  final String providerId;
  final bool isSelectProduct;
  final String? recordId;

  @override
  State<NewServiceRequestView> createState() => _NewServiceRequestViewState();
}

class _NewServiceRequestViewState extends State<NewServiceRequestView> {
  final _formKey = GlobalKey<FormBuilderState>();
  var _image = File('');
  List<OptionalService> optionalService = <OptionalService>[];
  @override
  void initState() {
    super.initState();
    optionalService.addAll(widget.optionalService);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocImgPicker = context.watch<ImagePickerBloc>();
    final blogPage = context.watch<NewServiceBloc>();

    return DismissKeyboard(
      child: Scaffold(
        appBar: AppBar(
          title: AutoSizeText(context.l10n.newRequestServiceAppBarTitle),
          centerTitle: false,
          leading: widget.isSelectProduct
              ? null
              : BackButton(
                  onPressed: () {
                    context.router.popAndPush(
                      ChooseServiceRoute(
                        providerId: widget.providerId,
                        optionalService: optionalService,
                      ),
                    );
                  },
                ),
        ),
        body: BlocBuilder<NewServiceBloc, NewServiceState>(
          builder: (context, state) {
            return state.when(
              initial: () => SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showMaterialModalBottomSheet<Widget>(
                          context: context,
                          builder: (context) => SafeArea(
                            top: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  title:
                                      AutoSizeText(l10n.imageFromGalleryLabel),
                                  leading:
                                      const Icon(Icons.photo_library_rounded),
                                  onTap: () async {
                                    blocImgPicker.add(
                                      const ImagePickerEvent
                                          .imageUploadSelected(
                                        ImageSource.gallery,
                                      ),
                                    );
                                    await context.router.pop();
                                  },
                                ),
                                ListTile(
                                  title:
                                      AutoSizeText(l10n.photoWithCameraLabel),
                                  leading: const Icon(Icons.camera_alt_rounded),
                                  onTap: () async {
                                    blocImgPicker.add(
                                      const ImagePickerEvent
                                          .imageUploadSelected(
                                        ImageSource.camera,
                                      ),
                                    );
                                    await context.router.pop();
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
                        builder: (context, state) => state.when(
                          initial: () => SizedBox(
                            width: double.infinity,
                            height: 120,
                            child: DottedBorder(
                              color: Theme.of(context).colorScheme.primary,
                              borderType: BorderType.RRect,
                              dashPattern: const [6, 5],
                              radius: const Radius.circular(12),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Assets.screens.addImage.svg(),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    AutoSizeText(
                                      l10n.chooseImageLabel,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          choosePhotoSuccess: (image) {
                            _image = image;

                            return Stack(
                              children: [
                                SizedBox(
                                  height: 120,
                                  child: Image.file(
                                    image,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Positioned(
                                  child: IconButton(
                                    onPressed: () {
                                      context.read<ImagePickerBloc>().add(
                                            const ImagePickerEvent.started(),
                                          );
                                    },
                                    icon: Icon(
                                      Icons.cancel,
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AutoSizeText(
                      l10n.chooseImageNoteLabel,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FormBuilder(
                      key: _formKey,
                      child: Column(
                        children: [
                          FormBuilderTextField(
                            maxLength: 50,
                            name: 'name',
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: l10n.serviceNameLabel,
                            ),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.match(
                                r'^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\sW0-9]{1,50}$',
                                errorText: l10n.invalidFormatLabel,
                              ),
                              FormBuilderValidators.required(
                                errorText: l10n.emptyErrorLabel,
                              ),
                            ]),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          FormBuilderTextField(
                            name: 'desc',
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: l10n.serviceDescriptionLabel,
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            maxLength: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState?.saveAndValidate() ??
                              false) {
                            final name = _formKey
                                    .currentState?.fields['name']?.value
                                    .toString() ??
                                '';
                            final desc = _formKey
                                    .currentState?.fields['desc']?.value
                                    .toString() ??
                                '';
                            var isStarted = false;
                            if (widget.recordId?.isNotEmpty ?? false) {
                              isStarted = (await context
                                      .read<IStore<RepairRecord>>()
                                      .get(widget.recordId ?? ''))
                                  .map<Option<RepairRecord>>(
                                    (r) => r.maybeMap(
                                      accepted: some,
                                      started: some,
                                      orElse: none,
                                    ),
                                  )
                                  .fold<Option<RepairRecord>>(
                                    (l) => none(),
                                    (r) => r,
                                  )
                                  .any(
                                    (a) => a.maybeMap(
                                      started: (v) => true,
                                      orElse: () => false,
                                    ),
                                  );
                            }
                            // submit new request service as needToVerify
                            widget.isSelectProduct
                                ? blogPage.add(
                                    NewServiceEvent.submitted(
                                      onRoute: () => isStarted
                                          ? context.router.popUntil(
                                              (route) =>
                                                  route.settings.name ==
                                                  RepairStatusRoute.name,
                                            )
                                          : context.router.pop(),
                                      optionalService: OptionalService(
                                        img: _image.path,
                                        name: name,
                                        desc: desc,
                                      ),
                                    ),
                                  )
                                : context.router.popAndPush(
                                    ChooseServiceRoute(
                                      providerId: widget.providerId,
                                      optionalService: optionalService
                                        ..add(
                                          OptionalService(
                                            img: _image.path.isEmpty
                                                ? kFallbackServiceImg
                                                : _image.path,
                                            name: name,
                                            desc: desc,
                                          ),
                                        ),
                                    ),
                                  );
                          }
                        },
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: AutoSizeText(l10n.confirmLabel),
                      ),
                    ),
                  ],
                ),
              ),
              loading: Loading.new,
              failure: UnknownFailure.new,
            );
          },
        ),
      ),
    );
  }
}
