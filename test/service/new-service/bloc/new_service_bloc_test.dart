import '../image_picker.mocks.dart' as base_mock;

// Add the mixin to make the platform interface accept the mock.
class MockImagePickerPlatform extends base_mock.MockImagePickerPlatform {}

void main() {
  // late NewServiceBloc newServiceBloc;

  // setUp(() {
  //   newServiceBloc = NewServiceBloc();
  // });
  // blocTest<NewServiceBloc, NewServiceState>(
  //   'emits ChoosePhotoSuccess when ImageFromGallerySelected is added.',
  //   build: () {
  //     return newServiceBloc;
  //   },
  //   act: (bloc) async {
  //     bloc.add(const NewServiceEvent.imageFromGallerySelected());
  //     final ImagePicker picker = ImagePicker();
  //     await picker.pickImage(source: ImageSource.gallery);
  //   },
  //   expect: () => [NewServiceState.choosePhotoSuccess(File(''))],
  // );
}
