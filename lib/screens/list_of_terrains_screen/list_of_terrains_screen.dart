import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListOfTerrainsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: Get.back,
            child: const Text('Moj botun'),
          ),
        ),
      );
}
