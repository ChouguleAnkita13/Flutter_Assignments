import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget {
  const Assignment6({super.key});
  @override
  State<Assignment6> createState() => _Assigment6State();
}

class _Assigment6State extends State<Assignment6> {
  int pCount = 0;
  int aCount = 0;
  final List<int> list2 = [145, 371, 2, 1, 153, 121, 123, 242, 1221, 454];
  int sCount = 0;

//Palindrome
  void countPalindrome() {
    pCount = 0;
    for (int i = 0; i < list2.length; i++) {
      int rev = 0;
      int q = list2[i];
      while (q != 0) {
        int rem = q % 10;
        rev = rev * 10 + rem;
        q = q ~/ 10;
      }
      if (list2[i] == rev) {
        setState(() {
          pCount = pCount + 1;
        });
      }
    }
  }

//Asmstrong Number
  void countAsmstrong() {
    aCount = 0;
    int mul = 1;
    for (int i = 0; i < list2.length; i++) {
      int count = 0;
      int result = 0;
      int q = list2[i];
      while (q != 0) {
        count++;
        q = q ~/ 10;
      }
      q = list2[i];
      int cnt = count;
      while (q != 0) {
        int rem = q % 10;
        while (cnt > 0) {
          mul = mul * rem;
          cnt--;
        }
        result = result + mul;
        cnt = count;
        mul = 1;
        q = q ~/ 10;
      }
      if (list2[i] == result) {
        setState(() {
          aCount = aCount + 1;
        });
      }
    }
  }

//Count Strong Number
  void countStrong() {
    sCount = 0;
    for (int i = 0; i < list2.length; i++) {
      int result = 0;
      int q = list2[i];
      while (q != 0) {
        int fact = 1;
        int rem = q % 10;
        while (rem > 0) {
          fact = fact * rem;
          rem--;
        }
        result = result + fact;
        q = q ~/ 10;
      }
      if (list2[i] == result) {
        setState(() {
          sCount = sCount + 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Number System"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: countPalindrome,
            child: const Text("Calculate Palindrome Number"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Count of Palindrome Numbers=$pCount"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: countAsmstrong,
            child: const Text("Calculate Asmstrong Number"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Count of Asmstrong Numbers=$aCount"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: countStrong,
            child: const Text("Calculate strong Number"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Count of strong Numbers=$sCount"),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                pCount = aCount = sCount = 0;
              });
            },
            child: const Text("Reset"),
          ),
        ],
      )),
    );
  }
}
