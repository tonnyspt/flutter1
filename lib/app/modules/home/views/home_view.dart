import 'package:tugas_5_1_api/app/modules/home/models/meal_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_5_1_api/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 18,
                      color: Colors.grey[500],
                    ),
                    Text(
                      "Search",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ).paddingAll(10),
              ),
            ).paddingSymmetric(horizontal: 20, vertical: 10),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "List Meal From API",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Flexible(
            child: FutureBuilder<MealModel>(
              future: controller.getRestaurants(),
              builder: (_, snapshot) {
                var data = snapshot.data?.categories;
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                if (snapshot.hasData) {
                  return GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      childAspectRatio: .8,
                    ),
                    itemBuilder: (_, index) => GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.BEEF,
                              arguments:
                                  snapshot.data!.categories[index].strCategory);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.network(
                                  data?[index].strCategoryThumb ?? "",
                                  width: 160,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        data?[index].strCategory ?? "",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      // paddingOnly(bottom: 1),
                                      
                                      Text(
                                        data?[index].strCategoryDescription ??
                                            "",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 4,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                        itemCount: snapshot.data?.categories.length,
                  );
                } else {
                  return const Center(
                    child: Text("Data Kosong"),
                  );
                }
              },
            ),
          )
        ],
      ).paddingOnly(left: 20, right: 20, bottom: 10),
    );
  }
}