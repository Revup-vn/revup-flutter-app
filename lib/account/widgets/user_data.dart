import 'user_model.dart';

class UserData {
  static List<UserModel> fetchAll() {
    return [
      UserModel(
        name: 'Nam Anh',
        phone: '+84989666888',
        urlImage:
            'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280g.jpg',
      ),
      UserModel(
        name: 'Hoang Son',
        phone: '+84989666777',
        urlImage:
            'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280.jpgs',
      ),
    ];
  }
}
