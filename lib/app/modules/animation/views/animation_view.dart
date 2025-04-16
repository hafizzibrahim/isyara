import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animation_controller.dart' as custom;

class AnimationView extends GetView<custom.AnimationController> {
  const AnimationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnimationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
