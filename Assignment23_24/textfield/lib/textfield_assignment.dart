import 'package:flutter/material.dart';

class TextFieldApp extends StatefulWidget {
  const TextFieldApp({super.key});

  @override
  State<TextFieldApp> createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  final TextEditingController _nameTextEditingController =
      TextEditingController();

  List nameList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text("Add Names"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _nameTextEditingController,
              decoration: InputDecoration(
                hintText: "Enter Names",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(color: Colors.teal, width: 2),
                ),
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 50,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: nameList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(20),
                    height: 50,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(-10, 10),
                              blurRadius: 9)
                        ]),
                    child: Text(
                      nameList[index],
                      style: const TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            nameList.add(_nameTextEditingController.text);
            _nameTextEditingController.clear();
          });
        },
        child: const Text("Add"),
      ),
    );
  }
}
