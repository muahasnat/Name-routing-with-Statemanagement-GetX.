import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

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
          Text("This is Next Screen"),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Next")),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "${Get.parameters['someValue']}",
            style: TextStyle(color: Colors.purple, fontSize: 20),
          ),
        ],
      )),
    );
  }
}
