import 'package:flutter/material.dart';
import 'package:flutter_application_test_getcli/app/modules/home/views/home_view.dart';
import 'package:flutter_application_test_getcli/app/modules/loginPage/views/login_page_view.dart';
import 'package:get/get.dart';

import '../controllers/register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.blue[400],
          title: const Text(
            'Register Page',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: Colors.grey[400],
            child: Column(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 16),
                    child: FlutterLogo(
                      size: 80,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 350,
                    // height: 50,
                    color: Colors.white,
                    child: const Text(
                      'Welcome Newcomer!!! We\re Happy You\'re Gonna Join Us. Yeay!',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Username',
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password',
                          border: UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ),
                // Sesi Login & Register
                Container(
                  width: 350,
                  alignment: Alignment.topCenter,
                  // color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Get.off(() => const HomeView());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              'Create Account',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Get.to(() => const LoginPageView());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              'Already Have An Account',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
