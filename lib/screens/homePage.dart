import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/controller.dart';
import 'package:getx_example/screens/secondPage.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobiler GetX Tutorial"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'hello'.tr,
            ),
            Obx(() => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${controller.count.value}',
                    style: TextStyle(fontSize: 25.0),
                  ),
                )), //
            SizedBox(
              height: 20,
            ), // c
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.to(SecondPage(), transition: Transition.upToDown);
              },
              child: Text(
                'Go to Second Page',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.snackbar("Snackbar", "Example Message", colorText: Colors.white, backgroundColor: Colors.red);
              },
              child: Text(
                'Sample Snackbar',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.defaultDialog(title: "Example Dialog", onConfirm: () {}, onCancel: () {});
              },
              child: Text(
                'Sample Dialog',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                controller.themeChanged();
              },
              child: Text(
                'Dark Theme',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: Get.height / 2,
                  ),
                  backgroundColor: Colors.red,
                );
              },
              child: Text(
                'bottomshet',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),

            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                controller.changedLangue(Locale("en", "US"));
              },
              child: Text(
                'change language',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.count.value++,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
