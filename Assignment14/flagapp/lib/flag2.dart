import 'package:flutter/material.dart';

class Flag2 extends StatefulWidget {
  const Flag2({super.key});
  @override
  State<Flag2> createState() => _Flag2State();
}

class _Flag2State extends State<Flag2> {
  int _count = -1;
  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (_count>=0)?
       AppBar(
        title: const Text("Republic Day"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 203, 131, 215),
      ):AppBar(backgroundColor:const Color.fromARGB(255, 203, 131, 215),),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orange, Colors.white, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_count >= 1)
                  Container(
                    height: 500,
                    width: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 502,
              child: Column(
                children: [
                  if (_count >= 2)
                    Container(
                      height: 70,
                      width: 300,
                      color: Colors.orange,
                    ),
                  if (_count >= 3)
                    Container(
                        height: 70,
                        width: 300,
                        color: Colors.white,
                        child: (_count >= 4)?
                           Image.asset("assets/ashokchkra.jpg")   : Container()),
                  if (_count >= 5)
                    Container(
                      height: 70,
                      width: 300,
                      color: const Color.fromARGB(255, 65, 156, 68),
                    ),
                  if(_count>=6)
                   Container(
                      padding: const EdgeInsets.only(top: 100,left: 100),
                      child:  const Text("75th \nREPUBLIC DAY \nJANUARY 26",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color:  Color.fromARGB(255, 203, 131, 215), ),),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCount,
        backgroundColor: const Color.fromARGB(255, 203, 131, 215),
        child: const Icon(Icons.add),
      ),
    );
  }
}
