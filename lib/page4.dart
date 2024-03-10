import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page1.dart';
class Page4 extends StatelessWidget {
  const Page4 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 4"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      height: 150,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Get.to(() => Page1());
                            },
                            child: Text("Back To Home Page"),
                          ),
                          SizedBox(height: 10,),
                          ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Close"),
                          ),
                          SizedBox(height: 10,),
                          const SizedBox(
                            height: 20,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      )
                    )
                  );
                },
                child: Text("Tampilkan Bottom Sheets"),
              ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'Ini dari halaman 4');
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}