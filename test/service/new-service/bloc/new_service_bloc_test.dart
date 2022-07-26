import 'dart:typed_data';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mocktail/mocktail.dart';

import 'package:revup/service/models/service_data.dart';
import 'package:revup/service/new-service/bloc/new_service_bloc.dart';

class MockImagePicker extends Mock implements ImagePicker {}

void main() {
  late MockImagePicker mockImagePicker;

  setUp(() {
    mockImagePicker = MockImagePicker();
  });

  final image = Uint8List.fromList([1, 2, 3, 4]);

  blocTest<NewServiceBloc, NewServiceState>(
    'emits ChoosePhotoSuccess when ImageUploadSelected is added.',
    setUp: () {
      when(() => mockImagePicker.pickImage(source: ImageSource.gallery))
          .thenAnswer(
        (_) async => XFile.fromData(image),
      );
    },
    build: () => NewServiceBloc(mockImagePicker),
    act: (NewServiceBloc newServiceBloc) {
      newServiceBloc
          .add(const NewServiceEvent.imageUploadSelected(ImageSource.gallery));
    },
  );
  blocTest<NewServiceBloc, NewServiceState>(
    'emits [loading, success] when Submmitted is added.',
    build: () => NewServiceBloc(mockImagePicker),
    act: (NewServiceBloc newServiceBloc) {
      newServiceBloc.add(
        const NewServiceEvent.submitted(
          ServiceData(
            id: '99',
            name: '',
            isSelected: true,
            desc: '',
            imageUrl: '',
          ),
        ),
      );
    },
    expect: () => [
      const NewServiceState.loading(),
      const NewServiceState.success(
        ServiceData(
          id: '99',
          name: '',
          isSelected: true,
          desc: '',
          imageUrl: '',
        ),
      ),
    ],
  );
}
