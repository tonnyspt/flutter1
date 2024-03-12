import 'package:flutter/material.dart';
import 'package:flutter_application_test_getcli/app/modules/home/views/home_view.dart';
import 'package:flutter_application_test_getcli/app/modules/RegisterPage/views/register_page_view.dart';
import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.blue[400],
          title: const Text(
            'Login Page',
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
                    padding: EdgeInsets.only(top: 10, bottom: 10),
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
                      'Welcome To Our Login Page! Login or Register If You Don\'t  Have An Account!',
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
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Get.to(() => const HomeView());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Get.to(() => const RegisterPageView());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              'Register',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Text(''),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
