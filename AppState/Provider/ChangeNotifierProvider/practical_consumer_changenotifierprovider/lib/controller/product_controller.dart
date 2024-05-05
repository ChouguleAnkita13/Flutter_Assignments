import 'package:flutter/material.dart';
import 'package:practical_consumer_changenotifierprovider/model/product_model.dart';

class ProductController with ChangeNotifier {
  ProductModel? productModelObj;

  //ADD DATA
  void addProduct({required ProductModel pObj1}) {
    productModelObj = pObj1;
  }

  //ADD TO FAVORITE
  void addToFavorite() {
    productModelObj!.isFavorite = !productModelObj!.isFavorite!;
    notifyListeners();
  }

  //INCREMENT QUANTITY
  void addQuantity() {
    productModelObj!.quantity = productModelObj!.quantity! + 1;
    notifyListeners();
  }

  //DECREMENT QUANTITY
  void removeQuantity() {
    if (productModelObj!.quantity! >=1) {
      productModelObj!.quantity = productModelObj!.quantity! - 1;
      notifyListeners();
    }
  }
}
