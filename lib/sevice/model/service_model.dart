class ServiceModel {
  ServiceModel({
    required this.name,
    required this.price,
  });

  final String name;
  final int price;
  // double totalPrice(List<ServiceModel> serviceList) {
  //   double totalPrice = 0;
  //   for (var i = serviceList.length; i > 0; i--) {
  //     totalPrice += serviceList.elementAt(i).price;
  //   }
  //   return totalPrice;
  // }
}
