import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @Created by akash on 20-02-2026.
/// Know more about author at https://akash.cloudemy.in

class DashboardController extends GetxController{
  var currentIndex = 0.obs;
  final List<Widget> pages = [/*HomeScreen(), LeadsListScreen(), ProfileScreen()*/];

  void changeIndex(int index) {
    currentIndex.value = index;
  }
  @override
  void onReady() {
    super.onReady();
  }



  @override
  void onClose() {
    super.onClose();
  }
}