import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          leading: Container(
              // color: Colors.red,
              child: Image.asset('images/food.png')),              
          backgroundColor: Colors.white,
          title: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  // color: Colors.blue[300],
                  child: const Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      Text(
                        'Katalog Resep Makanan',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.settings,
                        size: 40,
                      )
                    ],
                  )),
              SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 10),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.black),
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/food-black.png',
                                        alignment: Alignment.center,
                                        width: 30,
                                        height: 30,
                                        color: Colors.white,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      const Text(
                                        'All',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.red),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/hamburger.png',
                                        alignment: Alignment.center,
                                        width: 30,
                                        height: 30,
                                        color: Colors.black,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      const Text(
                                        'Makanan',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.red),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/ramen.png',
                                        alignment: Alignment.center,
                                        width: 30,
                                        height: 30,
                                        color: Colors.black,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      const Text(
                                        'Kuah',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.red),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/soda.png',
                                        alignment: Alignment.center,
                                        width: 30,
                                        height: 30,
                                        color: Colors.black,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      const Text(
                                        'Minuman',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ])),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.extent(
                  maxCrossAxisExtent: 200,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 80,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.red),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox.fromSize(
                                child: Image.asset(
                                  'images/apple-pie.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                                alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.only(top: 10),
                                child: const Text(
                                  'Apple Pie',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                            Container(
                                padding: EdgeInsets.only(top: 10),
                                child: const Row(
                                  children: [
                                    Wrap(
                                      alignment: WrapAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.alarm,
                                          size: 20,
                                        ),
                                        Text(
                                          '90 Menit',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text('Makanan',
                                            style: TextStyle(
                                                color: Colors.white,
                                                backgroundColor: Colors.amber)),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 80,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.red),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox.fromSize(
                                child: Image.asset(
                                  'images/beef-burger.jpg',
                                  height: 100,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                                alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.only(top: 10),
                                child: const Text(
                                  'Beef Burger',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                            Container(
                                padding: EdgeInsets.only(top: 10),
                                child: const Row(
                                  children: [
                                    Wrap(
                                      alignment: WrapAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.alarm,
                                          size: 20,
                                        ),
                                        Text(
                                          '90 Menit',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text('Makanan',
                                            style: TextStyle(
                                                color: Colors.white,
                                                backgroundColor: Colors.amber)),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 80,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.red),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox.fromSize(
                                child: Image.asset(
                                  'images/ramen-udang.jpg',
                                  height: 100,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                                alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.only(top: 10),
                                child: const Text(
                                  'Ramen Udang',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                            Container(
                                padding: EdgeInsets.only(top: 10),
                                child: const Row(
                                  children: [
                                    Wrap(
                                      alignment: WrapAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.alarm,
                                          size: 20,
                                        ),
                                        Text(
                                          '90 Menit',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text('Kuah',
                                            style: TextStyle(
                                                color: Colors.white,
                                                backgroundColor: Colors.red)),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 80,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.red),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox.fromSize(
                                child: Image.asset(
                                  'images/karage.jpg',
                                  height: 100,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                                alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.only(top: 10),
                                child: const Text(
                                  'Karage',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                            Container(
                                padding: EdgeInsets.only(top: 10),
                                child: const Row(
                                  children: [
                                    Wrap(
                                      alignment: WrapAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.alarm,
                                          size: 20,
                                        ),
                                        Text(
                                          '90 Menit',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text('Makanan',
                                            style: TextStyle(
                                                color: Colors.white,
                                                backgroundColor: Colors.amber)),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 80,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.red),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox.fromSize(
                                child: Image.asset(
                                  'images/takoyaki.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                                alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.only(top: 10),
                                child: const Text(
                                  'Takoyaki',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                            Container(
                                padding: EdgeInsets.only(top: 10),
                                child: const Row(
                                  children: [
                                    Wrap(
                                      alignment: WrapAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.alarm,
                                          size: 20,
                                        ),
                                        Text(
                                          '90 Menit',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text('Makanan',
                                            style: TextStyle(
                                                color: Colors.white,
                                                backgroundColor: Colors.amber)),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        color: Colors.transparent,
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.all(10),
                        child: Container(
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red,
                          ),
                          child: const IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              iconSize: 25,
                              onPressed: (null)),
                        ))
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
