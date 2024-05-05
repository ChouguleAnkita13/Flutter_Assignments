import 'package:flutter/material.dart';
import 'package:practical_consumer_changenotifierprovider/controller/product_controller.dart';
import 'package:practical_consumer_changenotifierprovider/view/get_product_details.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(const MyApp() );
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => ProductController(
      ),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
        ),
        home: const GetProductDetails(),
      ),
    );
  }
}

