import 'package:flutter/material.dart';
import 'ux_designer_page.dart';
import 'package:google_fonts/google_fonts.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
            child: SizedBox(
              width: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.menu,
                        size: 26,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications_none,
                        size: 26,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                   Text(
                    "Welcome to New",
                    style: GoogleFonts.jost(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 26.61,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                   Text(
                    "Educourse",
                    style: GoogleFonts.jost(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 37,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Your keyword",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(28)),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          size: 27,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  )),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        "Course For You",
                        style: GoogleFonts.jost(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UXDesignerPage()));
                              },
                              child: Container(
                                width: 190,
                                height: 242,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    gradient: const LinearGradient(
                                        colors: [
                                          Color.fromRGBO(197, 4, 98, 1),
                                          Color.fromRGBO(80, 3, 112, 1)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        stops: [0.2, 0.8])),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                     Text(
                                        "UX Designer from Scratch.",
                                        style: GoogleFonts.jost(
                                          color: const Color.fromRGBO(255, 255, 255, 1),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 10,
                                      // ),
                                      Image.asset("assets/ux.png")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 190,
                              height: 242,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color.fromRGBO(0, 77, 228, 1),
                                        Color.fromRGBO(1, 47, 135, 1)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: [0.2, 0.8])),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                     Text(
                                      "Design Thinking The Beginner",
                                      style: GoogleFonts.jost(
                                        color: const Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Image.asset("assets/design.png")
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                       Text(
                        "Course By Category",
                        style: GoogleFonts.jost(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)),
                                child: Image.asset(
                                    "assets/bottom/Traced Image1.png"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "UI/UX",
                                style: GoogleFonts.jost(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)),
                                child: Image.asset(
                                    "assets/bottom/Traced Image2.png"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                               Text(
                                "VISUAL",
                                style: GoogleFonts.jost(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)),
                                child: Image.asset(
                                    "assets/bottom/Traced Image3.png"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                               Text(
                                "ILLUSTRATON",
                                style: GoogleFonts.jost(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)),
                                child: Image.asset(
                                    "assets/bottom/Traced Image4.png"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                               Text(
                                "PHOTO",
                                style: GoogleFonts.jost(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
