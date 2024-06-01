import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/homecontroller.dart';
import 'package:getx/view/itemcard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SizedBox(
        height: 500,
        child: FutureBuilder(
            future: Future.value(
              controller.ModelateData(),
            ),
            builder: (context, snapshot) =>
                snapshot.connectionState == ConnectionState.waiting
                    ? CircularProgressIndicator()
                    : GridView.builder(
                        itemCount: controller.modeledData.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) => ItemCard(
                              product: snapshot.data![index],
                            ))),
      ),
    );
    ;
  }
}
