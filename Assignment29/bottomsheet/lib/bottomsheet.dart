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
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Task",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Title",
                        style: GoogleFonts.quicksand(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 139, 148, 1))),
                    TextField(
                      controller: _titleController,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Description",
                        style: GoogleFonts.quicksand(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 139, 148, 1))),
                    TextField(
                      controller: _despController,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Date",
                        style: GoogleFonts.quicksand(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 139, 148, 1))),
                    TextField(
                      controller: _dateController,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
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
                        child: const Text("Submit"))
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
