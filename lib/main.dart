import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:name_route_navigation_getx/home.dart';
import 'package:name_route_navigation_getx/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Navigation',
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        defaultTransition: Transition.zoom,
        getPages: [
          GetPage(name: '/', page: () => MyApp()),
          GetPage(name: '/home', page: () => Home()),
          // GetPage(
          //     name: '/nextScreen',
          //     page: () => NextScreen(),
          //     transition: Transition.leftToRight),
          GetPage(
              name: '/nextScreen/:someValue',
              page: () => NextScreen(),
              transition: Transition.leftToRight)
        ],
        home: Scaffold(
          appBar: AppBar(
            title: Text("Name Rauting"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/home");

                      //Get.offNamed("/home");
                      //Get.offAllNamed("home");
                      // Get.toNamed(
                      //     "/home?Channel=Repples Code&content=Flutter GetX");
                    },
                    child: Text("Go to Home page"))
              ],
            ),
          ),
        ));
  }
}
