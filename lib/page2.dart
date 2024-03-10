import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 2"),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  colorText: Colors.blue,
                  "Judul SnackBar",
                  "Isi SnackBar",
                );
              },
              child: Text("Tampilkan SnackBar",style: TextStyle(color: Colors.red),),
            ),
          ),
          Container(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Get.back(result: 'Ini dari halaman 2');
              },
              child: Text("Kembali"),
            ),
          ),
          Container(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => Page3());
              },
              child: Container(
                
                child: Text("Selanjutnya")),
            ),
          ),
          // Text(Get.arguments),
        ],
      )),
    );
  }
}
