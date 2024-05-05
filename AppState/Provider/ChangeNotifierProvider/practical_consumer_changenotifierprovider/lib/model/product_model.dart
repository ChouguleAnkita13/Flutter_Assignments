class ProductModel {
  String? productImage;
  String? productName;
  String? price;
  bool? isFavorite;
  int? quantity=0;

  ProductModel({
    this.productName,
     this.price,
     this.productImage,
    this.isFavorite,
     this.quantity,
    });
}