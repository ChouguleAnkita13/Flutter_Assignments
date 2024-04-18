import 'package:flutter/material.dart';
import 'package:inheritedwidgetapp/controller/inherited_state_controller.dart';

class Songs extends StatefulWidget {
  final String songName;
  
  const Songs({super.key, required this.songName});

  @override
  State<Songs> createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  @override
  Widget build(BuildContext context) {
    SharedDataWidget sharedDataObj = SharedDataWidget.of(context);
    return Row(
      children: [
        const SizedBox(
          height: 10,
        ),
        
        Container(
          width: 500,
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
             border: Border(bottom: BorderSide(color: Colors.grey)) 
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.songName,
                    style:
                        const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    sharedDataObj.name,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 126, 122, 122)),
                  ),
                 
                ],
              ),
              const Spacer(),
              const Text(
                    "2:34",
                    style:  TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 125, 124, 124)),
                  ),
             const SizedBox(width: 10,),
               IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      ))
            ],
          ),
        ),
      ],
    );
  }
}
