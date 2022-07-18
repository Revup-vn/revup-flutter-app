class UserModel {
  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.date,
    required this.address,
    required this.urlImage,
  });

  final String name;
  final String email;
  final String phone;
  final DateTime date;
  final String address;
  final String urlImage;
}
