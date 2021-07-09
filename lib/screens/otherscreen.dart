import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  // const OtherScreen({ Key? key }) : super(key: key);

  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${_counterController.counter.value} Times'),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Other Screen'))
          ],
        ),
      ),
    );
  }
}
