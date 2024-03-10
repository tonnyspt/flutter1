import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  var user = "CHANGE ME!".obs;
  var test = "Home Page".obs;

  Page1({super.key});
  void ubah() {
    if (user.value.toLowerCase() == user.value) {
      user.value = user.value.toUpperCase();
      print("The string is Uppercase");
    } else {
      user.value = user.value.toLowerCase();
      print("The string is Lowercase");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halaman 1'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Obx(() => Text(
                    '${user}',
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  )),
              Text("By",style: TextStyle(fontSize: 18),),
              
              ElevatedButton(
                onPressed: () {ubah();},
                child: Text("Clicking ME!",style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () async {
                    test.value = await Get.to(() => Page2(),
                        arguments: "Ini dari halaman 1");
                  },
                  child: Text("Halaman Selanjutnya"),
                ),
              ),
              Obx(() => Text(test.value))
            ],
          ),
        ),
      ),
    );
  }
}
