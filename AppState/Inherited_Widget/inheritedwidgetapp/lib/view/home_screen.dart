import 'package:flutter/material.dart';
import 'package:inheritedwidgetapp/controller/inherited_state_controller.dart';
import 'package:inheritedwidgetapp/view/song_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SharedDataWidget sharedDataObj = SharedDataWidget.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Music"),
          backgroundColor: Colors.pink.shade100,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.yellow.shade200, Colors.green.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                width: 400,
                child: Image.network(
                  "data:image/jpeg;base64,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",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 400,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.orange.shade100,
                  Colors.pink.shade100
                ])),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Best Top ${sharedDataObj.song}",
                          style:
                              const TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          sharedDataObj.name,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 126, 122, 122)),
                        ),
                       
                      ],
                    ),
                    const Spacer(),
                     IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.pause_circle_filled_rounded,
                              color: Colors.pink.shade300,
                              size: 40,
                            ))
                  ],
                ),
              ),
              const Songs(songName: "Aapki Najrone Samja"),
              const Songs(songName: "Lag Jaa Gale"),

            ],
          ),
        ));
  }
}
