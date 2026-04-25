import 'package:flutter_demo/modules/auth/data/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../core/common_controller.dart';
import '../../../core/network/ui_state.dart';
import '../../../core/utils/extensions.dart';
import '../../../route/app_routes.dart';

class LoginController extends GetxController {
  final AuthRepo repo;
  LoginController({required this.repo});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final isLoading = false.obs;
  final formKey = GlobalKey<FormState>();

  final obscurePassword = true.obs;
  final selectedTab = 0.obs;

  ///  Dynamic role
  bool get isWorker => selectedTab.value == 1;
  void togglePassword() => obscurePassword.value = !obscurePassword.value;

  void changeTab(int index) {
    selectedTab.value = index;
  }

  void login() {
    if (formKey.currentState?.validate() == false) return;

    repo.login(
      emailController.text.trim(),
      passwordController.text,
      role: isWorker ? "worker" : "user",
          (state) {
        isLoading.value = state.isLoading;

        state.handleWithErrorBox(
          showLoader: false,
              (data) async {
            TextInput.finishAutofillContext();
            await CommonController.to.setUserData(data);

            Get.offAllNamed(AppRoutes.dashboard);
          },
        );
      },
    );
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}