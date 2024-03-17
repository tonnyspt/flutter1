import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/beef_controller.dart';

class BeefView extends GetView<BeefController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: Text("${Get.arguments} Recepie"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
          ),
          Flexible(
              child: FutureBuilder(
            future: controller.getBeef(Get.arguments),
            builder: (_, snapshot) {
              // var data = snapshot.data?.meals;
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data?.meals.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  snapshot.data!.meals[index].strMealThumb),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          height: 100,
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(1),
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text(
                            snapshot.data!.meals[index].strMeal,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: Text('Data Kosong'),
                );
              }
            },
          ))
        ],
      ).paddingOnly(left: 20, right: 20, bottom: 10),
    );
  }
}