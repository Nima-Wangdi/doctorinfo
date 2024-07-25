// class MedicineModel {
//   String imgUrl;
//   String productName;
//   double price;
//
//   MedicineModel(
//       {required this.imgUrl, required this.price, required this.productName});
// }

class MedicineModel {
  String name;
  double price;
  String imgUrl;
  String description;

  MedicineModel(
      {required this.name,
      required this.price,
      required this.imgUrl,
      required this.description});
}
