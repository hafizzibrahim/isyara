import 'package:camera/camera.dart' as camera_lib;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isyara/themes.dart';
import '../controllers/camera_controller.dart';

class CameraView extends GetView<CameraController> {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    final CameraController controller = Get.put(CameraController());
    return Scaffold(
      backgroundColor: softBlue,
      appBar: AppBar(
        backgroundColor: softBlue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        title: Text("Video to Text", style: semiBoldText22),
        centerTitle: true,
      ), // Warna latar belakang biru muda
      body: Column(
        children: [
          // Kamera Preview dengan border rounded & layout tengah
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    width: double.infinity,
                    height: 750,
                    color: Colors.grey[700],
                    child: Obx(() {
                      if (controller.isCameraInitialized.value) {
                        return camera_lib.CameraPreview(
                          controller.cameraController,
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    }),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Translated Result",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
