import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/controllers/counterController.dart';
import 'package:web_project/screens/otherscreen.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({ Key? key }) : super(key: key);

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Clicks: ${counterController.counter.value}"),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(OtherScreen());
                  },
                  child: Text('Other Screen'))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          counterController.increment();
        },
      ),
    );
  }
}
