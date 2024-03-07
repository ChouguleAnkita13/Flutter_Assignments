import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => TodoListState();
}

class TodoListState extends State<TodoList> {
  List cardList = [0];
  int count = 0;

  List cardColorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style:
              GoogleFonts.quicksand(fontWeight: FontWeight.w700, fontSize: 26),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: ListView.builder(
            itemCount: cardList.length,
            itemBuilder: ((context, index) {
              return Container(
                width: 330,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: cardColorList[index % cardColorList.length],
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(0, 10),
                          blurRadius: 20)
                    ]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          margin: const EdgeInsets.only(top: 20, left: 10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.07),
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    spreadRadius: 1)
                              ]),
                          child: Image.asset(
                            "assets/img.png",
                            color: const Color.fromRGBO(199, 199, 199, 1),
                            height: 13,
                            width: 13,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5,),
                            SizedBox(
                              width: 243,
                              child: Text(
                                "Lorem Ipsum is simply setting industry",
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 243,
                              child: Text(
                                "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: const Color.fromRGBO(84, 84, 84, 1),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 58,
                          margin: const EdgeInsets.only(left: 8),
                          child: Text(
                            "10 July 2023",
                            style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: const Color.fromRGBO(132, 132, 132, 1)),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit_outlined),
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          style: IconButton.styleFrom(
                            fixedSize: const Size(12, 12),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete_outlined),
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          style: IconButton.styleFrom(
                            fixedSize: const Size(12, 12),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            cardList.add(count);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
