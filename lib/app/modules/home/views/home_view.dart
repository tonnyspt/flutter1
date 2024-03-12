import 'package:flutter/material.dart';
import 'package:flutter_application_test_getcli/app/modules/loginPage/views/login_page_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.blue[400],
          title: const Text(
            'Home Page',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                // color: Colors.grey[400],
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 16),
                        child: FlutterLogo(
                          size: 120,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 350,
                        height: 150,
                        color: Colors.white,
                        child: const Text(
                          'Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase. ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                        child: GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 80,
                          color: Colors.purple,
                          alignment: Alignment.center,
                          child: Text("Item 1 ListView"),
                        ),
                        Container(
                          height: 80,
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text("Item 2 ListView"),
                        ),
                        Container(
                          height: 80,
                          color: Colors.green,
                          alignment: Alignment.center,
                          child: Text("Item 3 ListView"),
                        ),
                        Container(
                          height: 80,
                          color: Colors.blue,
                          alignment: Alignment.center,
                          child: Text("Item 4 ListView"),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            )),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            Get.offAll(() => LoginPageView());
          },
          child: Text('Log Out',
          style: TextStyle(color: Colors.white, fontSize: 18),),
        ),
      ),
    );
  }
}
