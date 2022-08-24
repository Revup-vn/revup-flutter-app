import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';
import '../../shared/fallbacks.dart';
import '../../shared/widgets/dismiss_keyboard.dart';
import '../bloc/add_report_bloc.dart';
import '../bloc/dropdown_list_bloc.dart';
import '../bloc/upload_image_bloc.dart';
import '../cubit/upload_image_cubit.u.dart';

class AddReportView extends StatelessWidget {
  AddReportView({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final items = [
      ReportCategory.Product,
      ReportCategory.Service,
      ReportCategory.Unknown,
    ];
    var reportCategory = ReportCategory.Service;
    var list = <File>[
      File(''),
      File(''),
      File(''),
    ];
    var map = <ReportCategory, String>{
      ReportCategory.Product: l10n.productLabel,
      ReportCategory.Service: l10n.serviceLabel,
      ReportCategory.Unknown: l10n.otherLabel,
    };
    return LoaderOverlay(
      child: DismissKeyboard(
        child: Scaffold(
          appBar: AppBar(
            title: AutoSizeText(
              l10n.reportLabel,
              style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold) ??
                  const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: SingleChildScrollView(
                child: FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      AutoSizeText(
                        l10n.reportImgLabel,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                                  color: Theme.of(context).colorScheme.outline,
                                ) ??
                            TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: BlocBuilder<UploadImageBloc, UploadImageState>(
                          builder: (context, state) => state.maybeWhen(
                            orElse: () => ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: list.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Center(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      _showModalButtonSheet(
                                          context, index, list);
                                    },
                                    icon: const Icon(
                                      Icons.add_photo_alternate_outlined,
                                    ),
                                  ),
                                ),
                              ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 20),
                            ),
                            choosePhotoSuccess: (newImgUrls) {
                              list = newImgUrls;
                              return ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: newImgUrls.length,
                                itemBuilder: (context, index) => Center(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: newImgUrls[index].path.isEmpty
                                        ? Center(
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .outline,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: IconButton(
                                                onPressed: () {
                                                  _showModalButtonSheet(
                                                    context,
                                                    index,
                                                    list,
                                                  );
                                                },
                                                icon: const Icon(
                                                  Icons
                                                      .add_photo_alternate_outlined,
                                                ),
                                              ),
                                            ),
                                          )
                                        : Stack(
                                            alignment: Alignment.center,
                                            clipBehavior: Clip.none,
                                            fit: StackFit.passthrough,
                                            children: [
                                              if (newImgUrls[index]
                                                  .path
                                                  .isEmpty)
                                                CachedNetworkImage(
                                                  imageUrl: kFallbackServiceImg,
                                                  fit: BoxFit.fill,
                                                )
                                              else
                                                Image.file(
                                                  newImgUrls[index],
                                                  fit: BoxFit.fill,
                                                ),
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: IconButton(
                                                  onPressed: () {
                                                    context
                                                        .read<UploadImageBloc>()
                                                        .add(
                                                          UploadImageEvent
                                                              .remove(
                                                            currentListStorage:
                                                                list,
                                                            typeUpload: index,
                                                          ),
                                                        );
                                                  },
                                                  icon: Icon(
                                                    Icons.cancel_rounded,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .error,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                  ),
                                ),
                                separatorBuilder: (context, index) => Container(
                                  width: 20,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      AutoSizeText(
                        l10n.reportDesLabel,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(height: 5),
                      FormBuilderTextField(
                        name: 'desc',
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: l10n.reportDesLabel,
                        ),
                        style: Theme.of(context).textTheme.labelLarge,
                        keyboardType: TextInputType.multiline,
                        maxLength: 500,
                        maxLines: 9,
                        validator: FormBuilderValidators.compose(
                          [
                            FormBuilderValidators.required(
                              errorText: l10n.emptyLabel,
                            ),
                            FormBuilderValidators.match(
                              r'^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s\W|_]+$',
                              errorText: l10n.invalidFormatLabel,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      AutoSizeText(
                        l10n.reportCategory,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: BlocSelector<DropdownListBloc, DropdownListState,
                            ReportCategory>(
                          selector: (state) => state.maybeWhen(
                            success: (value) {
                              reportCategory = value;
                              return value;
                            },
                            orElse: () => ReportCategory.Service,
                          ),
                          builder: (context, value) => DropdownButton(
                            value: map[value],
                            underline: const SizedBox(),
                            isExpanded: true,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((items) {
                              return DropdownMenuItem(
                                value: map[items],
                                child: Text(map[items] ?? ''),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              if (value.toString() == l10n.serviceLabel) {
                                context.read<DropdownListBloc>().add(
                                      const DropdownListEvent.dropdownChanged(
                                        value: ReportCategory.Service,
                                      ),
                                    );
                              } else if (value.toString() ==
                                  l10n.productLabel) {
                                context.read<DropdownListBloc>().add(
                                      const DropdownListEvent.dropdownChanged(
                                        value: ReportCategory.Product,
                                      ),
                                    );
                              } else {
                                context.read<DropdownListBloc>().add(
                                      const DropdownListEvent.dropdownChanged(
                                        value: ReportCategory.Unknown,
                                      ),
                                    );
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState?.saveAndValidate() ==
                              true) {
                            context.loaderOverlay.show();
                            final data = _formKey.currentState?.value;
                            final desc = data?['desc'].toString();
                            final listStorage = ilist(
                              list.map(
                                (e) => StorageFile.profile(file: e),
                              ),
                            );
                            if (list[0].path.isNotEmpty ||
                                list[1].path.isNotEmpty ||
                                list[2].path.isNotEmpty) {
                              await context
                                  .read<SignupUploadImageCubit>()
                                  .uploadImg(files: listStorage)
                                  .then((value) async {
                                await context
                                    .read<StorageBloc>()
                                    .state
                                    .whenOrNull(
                                  success: (eitherFailuresOrUrls) async {
                                    final tmp = eitherFailuresOrUrls
                                        .map<Option<String>>(
                                      (a) => a.fold(
                                        (l) => none(),
                                        some,
                                      ),
                                    );

                                    final listLink =
                                        tmp.filter((a) => a.isSome()).map(
                                              (a) => a.getOrElse(
                                                () => throw NullThrownError(),
                                              ),
                                            );
                                    final list = listLink.toList();
                                    final rp = RepairReport.unresolved(
                                      category: reportCategory,
                                      desc: desc ?? '',
                                      imgs: list,
                                      created: DateTime.now(),
                                    );
                                    context.read<AddReportBloc>().add(
                                          AddReportEvent.submited(rp: rp),
                                        );
                                    context.loaderOverlay.hide();
                                    await context.router.pop();
                                  },
                                );
                              });
                            } else {
                              final rp = RepairReport.unresolved(
                                category: reportCategory,
                                desc: desc ?? '',
                                imgs: [],
                                created: DateTime.now(),
                              );
                              context.read<AddReportBloc>().add(
                                    AddReportEvent.submited(rp: rp),
                                  );
                              context.loaderOverlay.hide();
                              await context.router.pop();
                            }
                          }
                        },
                        child: AutoSizeText(l10n.doneLabel),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showModalButtonSheet(
    BuildContext context,
    int type,
    List<File> list,
  ) {
    final bloc = context.read<UploadImageBloc>();
    showMaterialModalBottomSheet<Widget>(
      context: context,
      builder: (context) => SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: AutoSizeText(context.l10n.imageFromGalleryLabel),
              leading: const Icon(Icons.photo_library_rounded),
              onTap: () async {
                bloc.add(
                  UploadImageEvent.imageUploadSelected(
                    source: ImageSource.gallery,
                    currentListStorage: list,
                    typeUpload: type,
                  ),
                );
                await context.router.pop();
              },
            ),
            ListTile(
              title: AutoSizeText(context.l10n.photoWithCameraLabel),
              leading: const Icon(Icons.camera_alt_rounded),
              onTap: () async {
                bloc.add(
                  UploadImageEvent.imageUploadSelected(
                    source: ImageSource.camera,
                    currentListStorage: list,
                    typeUpload: type,
                  ),
                );
                await context.router.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
