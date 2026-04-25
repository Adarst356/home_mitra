import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/core/utils/extensions.dart';
import 'package:flutter_demo/core/utils/spacing.dart';
import 'package:flutter_demo/core/widgets/text_field_with_label.dart';
import 'package:flutter_demo/route/app_routes.dart';
import 'package:get/get.dart';
import '../../../core/widgets/rounded_button.dart';
import '../../../modules/auth/login/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    context.colorScheme.primary,
                    context.colorScheme.primaryContainer,
                  ],
                ),
              ),
              child: Stack(
                children: [
                  /// Top Circle
                  Positioned(
                    right: -30,
                    top: -30,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colorScheme.onPrimary.withOpacity(0.06),
                      ),
                    ),
                  ),

                  /// Small Circle
                  Positioned(
                    right: 30,
                    top: 20,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colorScheme.onPrimary.withOpacity(0.06),
                      ),
                    ),
                  ),

                  /// Right Card / Visual Box
                  Positioned(
                    right: 30,
                    bottom: 0,
                    child: Container(
                      width: 130,
                      height: 180,
                      decoration: BoxDecoration(
                        color: context.colorScheme.primaryContainer,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        ),
                      ),
                      child: Icon(
                        Icons.person,
                        size: 80,
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),

                  /// Text Section
                  Positioned(
                    left: 24,
                    bottom: 36,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: context.colorScheme.onPrimary,
                            letterSpacing: 0.3,
                          ),
                        ),
                        Spacing.h4,
                        Text(
                          'Please sign in to continue your journey',
                          style: TextStyle(
                            fontSize: 12,
                            color: context.colorScheme.onPrimary.withOpacityX(
                              0.8,
                            ),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Form(
              key: controller.formKey,
              child: Column(
                children: [
                  Spacing.h24,

                  // Tab Toggle (UI only)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: tabToggle(context),
                  ),

                  Spacing.h16,

                  Obx(() {
                    final isWorker = controller.selectedTab.value == 1;

                    return TextFieldWithLabel(
                      controller: controller.emailController,
                      textInputType: TextInputType.emailAddress,
                      autofillHints: const [AutofillHints.username],
                      hint: isWorker
                          ? 'Enter worker email'
                          : 'Enter your email',
                      label: isWorker ? 'Worker Email' : 'Email',
                      inputAction: TextInputAction.next,
                      prefix: Icon(
                        Icons.email_outlined,
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                      validator: (value) => (value?.length ?? 0) < 4
                          ? 'Enter a valid email'
                          : null,
                    );
                  }),


                  Obx(() {
                    final isWorker = controller.selectedTab.value == 1;
                    return PassWordTextFormFieldWithLabel(
                      controller: controller.passwordController,
                      hint: isWorker
                          ? 'Enter worker password'
                          : 'Enter your password',
                      label: isWorker ? 'Worker Password' : 'Password',
                      autofillHints: const [AutofillHints.password],
                      textInputFormatter: [
                        LengthLimitingTextInputFormatter(16),
                      ],
                      inputAction: TextInputAction.done,
                      validator: (value) => value?.isEmpty == true
                          ? 'Password is required'
                          : null,
                    );
                  }),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 12,
                            color: context.colorScheme.secondary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Spacing.h24,

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Obx(
                      () => RoundedButton(
                        width: double.infinity,
                        text: controller.selectedTab.value == 1
                            ? "Worker Sign In"
                            : "Sign In",
                        radius: 32,
                        isLoading: controller.isLoading.value,
                        enabled: !controller.isLoading.value,
                        onPressed: controller.login,
                        backgroundColor: context.colorScheme.secondary,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),

                  Spacing.h24,
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'OR LOGIN WITH',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: registrationOptions(context),
                  ),

                  Spacing.h24,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget registrationOptions(BuildContext context) {
    return Column(
      children: [
        registrationTile(
          context,
          icon: Icons.person_add_outlined,
          iconColor: context.colorScheme.primary,
          title: 'New here?',
          subtitle: 'Register as a User',
          onTap: () {},
        ),
        const SizedBox(height: 12),
        registrationTile(
          context,
          icon: Icons.work_outline,
          iconColor: context.colorScheme.secondary,
          title: 'Want to work?',
          subtitle: 'Register as a Worker',
          onTap: () {
            Get.toNamed(AppRoutes.signup);
          },
        ),
      ],
    );
  }

  Widget registrationTile(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.shadow.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor, size: 20),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF222222),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                ),
              ],
            ),
            const Spacer(),
            Icon(Icons.chevron_right, color: Colors.grey.shade400, size: 20),
          ],
        ),
      ),
    );
  }

  Widget tabToggle(BuildContext context) {
    return Obx(
      () => Container(
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            /// Sliding Active Background
            AnimatedAlign(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              alignment: controller.selectedTab.value == 0
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: Container(
                width: MediaQuery.of(context).size.width / 2 - 24,
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  gradient: const LinearGradient(
                    colors: [Color(0xFFFF6B2C), Color(0xFFFF8C42)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),

            ///  Tabs Row
            Row(
              children: [
                _tabItem(
                  context,
                  label: 'User Login',
                  isSelected: controller.selectedTab.value == 0,
                  onTap: () => controller.changeTab(0),
                ),
                _tabItem(
                  context,
                  label: 'Worker Login',
                  isSelected: controller.selectedTab.value == 1,
                  onTap: () => controller.changeTab(1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabItem(
    BuildContext context, {
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(26),
        onTap: onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : const Color(0xFF888888),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(label),
          ),
        ),
      ),
    );
  }
}
