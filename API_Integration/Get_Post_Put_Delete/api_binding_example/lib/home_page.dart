import 'dart:developer';
import 'package:api_binding_example/api_controller.dart';
import 'package:api_binding_example/todo_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Todos> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: const Text("API Binding"),
        centerTitle: true,
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      ///GET DATA FROM API PASSED FROM APICONTROLLER.GETDATAFROMAPI FUNCTION
                      ///
                      TodoModel todoObj = await ApiController.getDataFromApi();

                      ///STORE LIST  IN LOCAL TODOLIST
                      todoList = todoObj.todosList!;
                      setState(() {});
                      log("${todoList[0].todo}");
                    },
                    child: const Text("Get Data")),
                ElevatedButton(
                    onPressed: () {
                      ApiController.postData();
                    },
                    child: const Text("Post Data")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Delete Data")),
                const ElevatedButton(
                    onPressed: ApiController.updateData,
                    child: Text("Update Data")),
              ],
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: ListTile(
                            tileColor: todoList[index].completed!
                                ? Colors.yellow.withOpacity(0.2)
                                : Colors.yellow.withOpacity(0.5),
                            contentPadding: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            leading: Text("${todoList[index].id}"),
                            title: Text("${todoList[index].todo}"),
                            subtitle: Text("${todoList[index].userId}"),
                            trailing: Checkbox(
                                value: todoList[index].completed,
                                activeColor: Colors.green,
                                onChanged: (value) {}),
                          ),
                        )))
          ],
        ),
      ),
    );
  }
}
