import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _compNameController = TextEditingController();
  final TextEditingController _locController = TextEditingController();

  bool? isSubmit = false;
 
  List cardList=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dream Company",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          TextField(
            //For UserName
            controller: _unameController,
            showCursor: true,
            decoration: InputDecoration(
              hintText: "Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.pink)),
            ),
            cursorColor: Colors.black,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            //For Company Name
            controller: _compNameController,
            showCursor: true,
            decoration: InputDecoration(
              hintText: "Company Name",
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.pink)),
            ),
            cursorColor: Colors.black,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            //For Location
            controller: _locController,
            showCursor: true,
            decoration: InputDecoration(
              hintText: "Location",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.pink)),
            ),
            cursorColor: Colors.black,
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                cardList.add([_unameController.text,_compNameController.text,_locController.text]); 
                isSubmit = true;
                _unameController.clear();
                _compNameController.clear();
                _locController.clear();
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              fixedSize: const Size(300, 30),
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
            child: const Text(
              "Submit",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          if(isSubmit == true)
            SizedBox(
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: cardList.length,
                itemBuilder: ((context, index){
                return  Container(
                    width: 250,
                    height: 100,
                    color: const Color.fromARGB(255, 231, 233, 233),
                    margin:const EdgeInsets.only(top:20 ,left: 20,right: 20) ,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name :  ${cardList[index][0]}",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          "Company Name : ${cardList[index][1]}",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          "Location : ${cardList[index][2]}",
                          style: Theme.of(context).textTheme.displayMedium,
                        )
                      ],
                    ),
                  );
              })),
            )
             
             
        ],
      ),
    );
  }
}



