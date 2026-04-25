import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/auth_repo.dart';

class SignupController extends GetxController {
  final AuthRepo repo;
  SignupController({required this.repo});

  /// Controllers
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final areaController = TextEditingController();
  final aadhaarController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();




  /// Reactive State
  final selectedSkill = RxnString();
  final selectedImage = Rxn<File>();
  final isLoading = false.obs;

  /// Skill List
  final skills = ["Electrician", "Plumber", "Painter"];

  /// Setters
  void setSkill(String? value) {
    selectedSkill.value = value;
  }



  @override
  void onClose() {
    fullNameController.dispose();
    phoneController.dispose();
    areaController.dispose();
    aadhaarController.dispose();
    super.onClose();
  }
}