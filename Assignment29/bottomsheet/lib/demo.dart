import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State<BottomSheetDemo> createState() => BottomSheetDemoState();
}

class BottomSheetDemoState extends State<BottomSheetDemo> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _despController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To-do list",
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  width: 360,
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(248, 248, 248, 1),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    border: Border.all(
                      width: 0.5,
                      color: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Create Task",
                        style: GoogleFonts.quicksand(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text("Title",
                            style: GoogleFonts.quicksand(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 139, 148, 1))),
                      ),
                      SizedBox(
                        width: 330,
                        height: 40,
                        child: TextField(
                          controller: _titleController,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text("Description",
                            style: GoogleFonts.quicksand(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 139, 148, 1))),
                      ),
                      SizedBox(
                        width: 330,
                        height: 40,
                        child: TextField(
                          controller: _despController,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text("Date",
                            style: GoogleFonts.quicksand(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 139, 148, 1))),
                      ),
                      SizedBox(
                        height: 40,
                        width: 330,
                        child: TextField(
                          controller: _dateController,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                           
                          _titleController.clear();
                          _despController.clear();
                          _dateController.clear();
                          Navigator.pop(context);
                        
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(300, 50),
                            backgroundColor:
                                const Color.fromRGBO(0, 139, 148, 1),
                          ),
                          child: Text(
                            "Submit",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          )),
                    ],
                  ),
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
