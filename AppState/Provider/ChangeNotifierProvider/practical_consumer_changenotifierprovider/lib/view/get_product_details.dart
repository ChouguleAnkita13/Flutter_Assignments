import 'package:flutter/material.dart';
import 'package:practical_consumer_changenotifierprovider/controller/product_controller.dart';
import 'package:practical_consumer_changenotifierprovider/model/product_model.dart';
import 'package:practical_consumer_changenotifierprovider/view/product_display.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

class GetProductDetails extends StatefulWidget {
  const GetProductDetails({super.key});
  @override
  State createState() => _GetProductDetailsState();
}

class _GetProductDetailsState extends State {
  final TextEditingController _productImageController = TextEditingController();
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    log("In product details build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Product Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // PRODUCT Image
            SizedBox(
              width: 300,
              child: TextField(
                controller: _productImageController,
                decoration:
                    const InputDecoration(hintText: "Enter Product URL"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //PRODUCT Name
            SizedBox(
              width: 300,
              child: TextField(
                controller: _productNameController,
                decoration:
                    const InputDecoration(hintText: "Enter Product Name"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //PRODUCT PRICE
            SizedBox(
              width: 300,
              child: TextField(
                controller: _priceController,
                decoration:
                    const InputDecoration(hintText: "Enter Product Price"),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    var tempObj = ProductModel(
                      isFavorite: false,
                      price: _priceController.text.trim(),
                      productImage: _productImageController.text.trim(),
                      productName: _productNameController.text.trim(),
                      quantity: 0,
                    );
                    Provider.of<ProductController>(context, listen: false)
                        .addProduct(pObj1: tempObj);
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const DisplayProduct();
                    }));
                  },
                  child: const Text("SUBMIT")),
            )
          ],
        ),
      ),
    );
  }
}
