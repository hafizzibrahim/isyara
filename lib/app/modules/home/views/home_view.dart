import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:isyara/app/modules/animation/views/animation_view.dart';
import 'package:isyara/app/modules/home/widgets/history_card_widget.dart';

import '../../../../themes.dart';
import '../../camera/views/camera_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: softBlue,
      appBar: AppBar(
        backgroundColor: softBlue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icons/ic_isyara.png', width: 40, height: 40),
            SizedBox(width: 10),
            Text("Isyara", style: semiBoldText22),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            // Menambahkan shadow
            BoxShadow(
              color: Colors.black.withOpacity(0.3), // Warna shadow
              spreadRadius: 1, // Jarak penyebaran shadow
              blurRadius: 3, // Tingkat keabuan (blur) shadow
              offset: Offset(1, 3), // Posisi shadow (horizontal, vertical)
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello..!!", style: semiBoldText22),
              Text("Welcome to Isyara", style: regularText12),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => const CameraView(),
                        transition:
                            Transition
                                .rightToLeft, // Animasi geser dari kanan ke kiri
                        duration: const Duration(milliseconds: 400),
                      );
                    },
                    child: Container(
                      width: 160,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Video to Text",
                                  style: semiBoldText16.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Image.asset(
                                'assets/icons/ic_hand_sign.png',
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                          Text(
                            "Record your hand sign to generate and get the text!",
                            style: regularText10.copyWith(color: Colors.white),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => const AnimationView(),
                        transition:
                            Transition
                                .rightToLeft, // Animasi geser dari kanan ke kiri
                        duration: const Duration(milliseconds: 400),
                      );
                    },
                    child: Container(
                      width: 160,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Text to Gesture",
                                  style: semiBoldText16.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Image.asset(
                                'assets/icons/ic_play.png',
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Record your hand sign to generate and get the text!",
                            style: regularText10.copyWith(color: Colors.white),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("History", style: semiBoldText22),
                  Text("See All", style: semiBoldText12.copyWith(color: blue)),
                ],
              ),
              SizedBox(height: 10),
              HistoryCardWidget(),
              SizedBox(height: 16),
              HistoryCardWidget(),
              SizedBox(height: 16),
              HistoryCardWidget(),
              SizedBox(height: 16),
              HistoryCardWidget(),
              SizedBox(height: 16),
              HistoryCardWidget(),
              SizedBox(height: 16),
              HistoryCardWidget(),
              SizedBox(height: 16),
              HistoryCardWidget(),
              SizedBox(height: 16),
              HistoryCardWidget(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
