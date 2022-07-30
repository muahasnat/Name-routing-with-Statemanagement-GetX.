import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is Home Screen"),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                // Get.toNamed("/nextScreen");
                Get.toNamed("/nextScreen/545555");
              },
              child: Text("Next")),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Back to main")),
          SizedBox(
            height: 30,
          ),
          // Text(
          //   "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters["content"]}",
          //   style: TextStyle(color: Colors.purple, fontSize: 20),
          // ),
        ],
      )),
    );
  }
}
