import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // AppBar
      appBar: AppBar(
          backgroundColor: Colors.white,
          // Title
          title: const Text('NEW RECIPE',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          // action close
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Close",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                  ),
                ))
          ]),
      // content
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [          
              Container(
                padding: EdgeInsets.only(top: 8, left: 15),
                // width: 380,
                height: 60,
                color: Colors.red,
                child: const Text(
                    "Super Cool you are creating a new recipe! Let's get started.",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: Colors.white)),
              ),
              // nama resep
              Container(
                padding: EdgeInsets.only(top: 50),
                width: 380,
                height: 80,
                // color: Colors.grey[300],
                child: const Text('Give your recipe a name',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15)),
              ),
              const SizedBox(
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Masukkan nama menu',
                      labelStyle: TextStyle(fontSize: 12)),
                ),
              ),
              // waktu masak
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 380,
                height: 50,
                // color: Colors.grey[300],
                child: const Text('Estimasi Waktu Memasak (dalam menit)',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15)),
              ),
              const SizedBox(
                width: 380,
                child: TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Masukkan waktu pembuatan',
                      labelStyle: TextStyle(fontSize: 12)),
                ),
              ),
              // resep & bahan
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 380,
                height: 50,
                // color: Colors.grey[300],
                child: const Text('Resep, bahan dan langkah',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15)),
              ),
              const SizedBox(
                width: 380,
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Masukkan resep dan cara pembuatan',
                      labelStyle: TextStyle(fontSize: 12)),
                ),
              ),
            ],
          ),
        ),
      ),
      // submit fixed button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red),
          child: const Center(
            child: Text(
              'Add Menu',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
