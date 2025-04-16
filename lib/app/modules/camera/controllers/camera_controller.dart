import 'package:camera/camera.dart' as camera_plugin; // Memberi alias ke CameraController plugin
import 'package:get/get.dart';

class CameraController extends GetxController {
  late camera_plugin.CameraController _cameraController; // Menggunakan alias
  final isCameraInitialized = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    try {
      final cameras = await camera_plugin.availableCameras(); // Menggunakan alias
      _cameraController = camera_plugin.CameraController(
        cameras[0], // Menggunakan kamera pertama (biasanya kamera belakang)
        camera_plugin.ResolutionPreset.medium, // Menggunakan alias
      );

      await _cameraController.initialize();
      if (!isClosed) {
        isCameraInitialized.value = true;
      }
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  camera_plugin.CameraController get cameraController => _cameraController; // Menggunakan alias

  @override
  void onClose() {
    _cameraController.dispose();
    super.onClose();
  }
}