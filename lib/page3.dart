import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 3"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.dialog(
                  AlertDialog(
                    title: Text("Page Selection"),
                    content: Text("Go To Next Page?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("Close"),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(Page4());
                        },
                        child: const Text("Yes"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Tampilkan Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'Ini dari halaman 3');
              },
              child: Text("Kembali"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => Page4());
              },
              child: Text("Selanjutnya"),
            ),
          ],
        ),
      ),
    );
  }
}
