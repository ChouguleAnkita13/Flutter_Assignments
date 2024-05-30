import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screens/second.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  goToNext() {
    Get.to(const Second());
  }

  _showSnackBar() {
    Get.snackbar(
      "Hey There",
      "Snackbar is easy",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  _showDialog() {
    Get.defaultDialog(
      title: "Simple Dialog",
      content: const Text("Too Easy"),
    );
  }

  _showBottomSheet() {
    Get.bottomSheet(
      Wrap(
          children: <Widget>[
            ListTile(
                leading: const Icon(Icons.music_note),
                title: const Text('Music'),
                onTap: () => {}),
            ListTile(
              leading: const Icon(Icons.videocam),
              title: const Text('Video'),
              onTap: () => {},
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      
      backgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Package | Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Go To Second"),
              onPressed: () => goToNext(),
            ),
            ElevatedButton(
              onPressed: _showSnackBar,
              child: const Text("Snackbar"),
            ),
            ElevatedButton(
              onPressed: _showDialog,
              child: const Text("Dialog"),
            ),
            ElevatedButton(
              onPressed: _showBottomSheet,
              child: const Text("Bottom Sheet"),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              child: const Text("Name Route: /second"),
              onPressed: () {
                Get.toNamed("/second");
              },
            )
          ],
        ),
      ),
    );
  }
}