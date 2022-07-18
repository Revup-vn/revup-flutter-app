import 'user_model.dart';

class UserData {
  static List<UserModel> fetchAll() {
    return [
      UserModel(
        name: 'Nam Anh',
        email: 'namanh231@gmail.com',
        phone: '0893876555',
        date: DateTime.utc(1989, 12, 9),
        address: 'Yen Khanh, Ninh Binh',
        urlImage:
            'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280s.jpg',
      )
    ];
  }
}
