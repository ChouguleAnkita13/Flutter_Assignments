import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:practical_consumer_changenotifierprovider/controller/product_controller.dart';
import 'package:provider/provider.dart';

class DisplayProduct extends StatefulWidget {
  const DisplayProduct({super.key});
  @override
  State createState() => _DisplayProductState();
}

class _DisplayProductState extends State {
  @override
  Widget build(BuildContext context) {
    log("In Display product build");
    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Display",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.network(
                "${providerObj.productModelObj?.productImage}",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 50,
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "${Provider.of<ProductController>(context).productModelObj?.productName}",
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                  "${Provider.of<ProductController>(context).productModelObj?.price}"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Consumer<ProductController>(
                    builder: (context, provider, child) {
                  log("In like consumer");
                  return GestureDetector(
                      onTap: () {
                        providerObj.addToFavorite();
                      },
                      child: Icon(
                        (providerObj.productModelObj!.isFavorite!)
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_rounded,
                        color: Colors.red,
                      ));
                }),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        providerObj.removeQuantity();
                      },
                      child: const Icon(Icons.remove),
                    ),

                    const SizedBox(
                      width: 5,
                    ),
                    //ADD
                    Consumer(builder: (context, value, child) {
                      log("In Quantity");
                      return Text("${providerObj.productModelObj?.quantity}");
                    }),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        providerObj.addQuantity();
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
