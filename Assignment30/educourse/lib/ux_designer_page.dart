import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UXDesignerPage extends StatelessWidget {
  UXDesignerPage({super.key});

  final List cardList = [0, 1,2,3,4,5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(197, 4, 98, 1),
                Color.fromRGBO(80, 3, 112, 1)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.5]
              )
              ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 38, top: 90),
            child: Column(
              children: [
             Text(
                  "UX Designer from Scratch.",
                  style: GoogleFonts.jost(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 32.61,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
               Text(
                  "Basic guideline & tips & tricks for how to become a UX designer easily.",
                  style: GoogleFonts.jost(
                    color: const Color.fromRGBO(228, 205, 225, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/Group.png",
                      width: 34,
                      height: 34,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                     Text(
                      "Author:",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(190, 154, 197, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                   Text(
                      "Jenny",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                   Text(
                      "4.8",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Icon(
                      Icons.star_outlined,
                      color: Color.fromRGBO(255, 146, 0, 1),
                      size: 15,
                    ),
                 Text(
                      "(20 review)",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(190, 154, 197, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38))),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: ListView.builder(itemCount: cardList.length,
                itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom:20),
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            offset: Offset(0, 8),
                            blurRadius: 20)
                      ]),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 46,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(230, 239, 239, 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset("assets/youtube.png"),
                      ),
                      const SizedBox(width: 10),
                       Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Introduction", style: GoogleFonts.jost(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),),
                      const SizedBox(height: 5,),
                        Text("Lorem Ipsum is simply dummy text ... ", style: GoogleFonts.jost(
                        color: const Color.fromRGBO(143, 143, 143, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          )),
        ],
      ),
    ));
  }
}
