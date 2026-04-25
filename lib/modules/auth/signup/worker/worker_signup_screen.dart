import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/custom_image_picker.dart';
import '../../../../core/widgets/dotted_border.dart';
import '../../../../core/widgets/image_picker_card.dart';
import '../../../../core/widgets/rounded_button.dart';
import '../../../../core/widgets/text_field_with_label.dart';
import 'worker_signup_controller.dart';

class SignupScreen extends GetView<SignupController> {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Hello Worker 👋",
              style: TextStyle(
                color: context.colorScheme.tertiaryContainer,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Create Account",
              style: TextStyle(
                color: context.colorScheme.surface,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          "assets/images/img.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black.withOpacity(0.2),
                                Colors.black.withOpacity(0.6),
                              ],
                            ),
                          ),
                        ),
                      ),

                      /// Bottom Text
                       Positioned(
                        left: 16,
                        bottom: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Join as a Worker',
                              style: TextStyle(
                                color: context.colorScheme.surface,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          Spacing.h4,
                            Text(
                              'Fill in your details to start getting calls',
                              style: TextStyle(
                                color: context.colorScheme.surface.withOpacityX(0.8),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

           Spacing.h16,
              _SectionLabel(label: 'Full Name'),
              TextFieldWithLabel(
                controller: controller.fullNameController,
                textInputType: TextInputType.name,
                autofillHints: const [AutofillHints.name],
                hint: "Enter Your Full Name",
                validator: (value) =>
                (value?.trim().length ?? 0) < 3 ? "Enter valid full name" : null,
                prefix: Icon(
                  Icons.person_outline,
                  color: context.colorScheme.primaryContainer,
                ),
              ),

              _SectionLabel(label: 'Email'),
              TextFieldWithLabel(
                controller: controller.emailController,
                textInputType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                hint: "Enter Email",
                validator: (value) {
                  if (value == null || value.isEmpty) return "Email required";
                  if (!GetUtils.isEmail(value)) return "Enter valid email";
                  return null;
                },
                prefix: Icon(
                  Icons.email_outlined,
                  color: context.colorScheme.primaryContainer,
                ),
              ),

              _SectionLabel(label: 'Password'),
              PassWordTextFormFieldWithLabel(
                controller: controller.passwordController,
                hint: 'Enter your password',
                label: 'Password',
                autofillHints: const [AutofillHints.password],
                textInputFormatter: [
                  LengthLimitingTextInputFormatter(16),
                ],
                inputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Password required';
                  if (value.length < 6) return 'Min 6 characters';
                  return null;
                },
              ),

              _SectionLabel(label: 'Confirm Password'),
              PassWordTextFormFieldWithLabel(
                controller: controller.confirmPasswordController,
                hint: 'Re-enter password',
                label: 'Confirm Password',
                autofillHints: const [AutofillHints.password],
                textInputFormatter: [
                  LengthLimitingTextInputFormatter(16),
                ],
                inputAction: TextInputAction.done,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Confirm password required';
                  if (value != controller.passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              ///  Phone
              Spacing.h8,
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text("+91"),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFieldWithLabel(
                        controller: controller.phoneController,
                        label: "Phone",
                        hint: "Mobile number",
                        textInputType: TextInputType.phone,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ],
              ),
              Spacing.h16,

              ///  Skill + Area
              Row(
                children: [
                  Expanded(
                    child: Obx(() => DropDownTextField<String>(
                      label: "Skill",
                      hint: "Select Skill",
                      items: controller.skills,
                      value: controller.selectedSkill.value,
                      getTitle: (item) => item,
                      onChanged: controller.setSkill,
                    )),
                  ),
                  Expanded(
                    child: TextFieldWithLabel(
                      controller: controller.areaController,
                      label: "Area",
                      hint: "Locality",
                    ),
                  ),
                ],
              ),

            Spacing.h8,

              ///  Verification Box
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Basic Verification",
                      style: TextStyle(
                        color: Color(0xFFFF6B00),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  Spacing.h8,

                    TextFieldWithLabel(
                      controller: controller.aadhaarController,
                      label: "Aadhaar Number",
                      hint: "12-digit number",
                      textInputType: TextInputType.number,
                      textInputFormatter: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(12),
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Aadhaar number required";}
                        if (value.length != 12) {return "Aadhaar must be 12 digits";}
                        if (!RegExp(r'^[0-9]{12}$').hasMatch(value)) {
                          return "Invalid Aadhaar number";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Obx(() {
                        final file = controller.selectedImage.value;
                        return GestureDetector(
                          onTap: () => openImagePicker(context),
                          child: DottedBorderContainer(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.shade400,
                            dashWidth: 6,
                            dashSpacing: 4,
                            strokeWidth: 1.2,
                            child: Container(
                              height: 120,
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: file != null
                                  ? Stack(
                                children: [
                                  Positioned.fill(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.file(file, fit: BoxFit.cover),
                                    ),
                                  ),

                                ],
                              )
                                  : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.upload_file),
                                  SizedBox(height: 6),
                                  Text("Upload ID Photo"),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),

            Spacing.h8,

              ///  Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Obx(() => Center(
                  child: RoundedButton(
                    width: double.infinity,
                    text: "Register Now",
                    radius: 10,
                    isLoading: controller.isLoading.value,
                    backgroundColor:context.colorScheme.secondary,
                    foregroundColor:context.colorScheme.surface,
                             /*       onPressed: controller.register,*/
                  ),
                )),
              ),

              Spacing.h24,

              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: context.textStyle.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.colorScheme.onSurface,
                        ),
                        children: [
                          TextSpan(
                            text: "Login In",
                            style: context.textStyle.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.colorScheme.primary,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.back();
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

         Spacing.h24,
            ],
          ),
        ),
      ),
    );
  }
  void openImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.35,
          minChildSize: 0.25,
          maxChildSize: 0.5,
          expand: false,
          builder: (context, scrollController) {
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: ImagePickerCard(
                  file: controller.selectedImage.value,
                  onImageSelected: (file) {
                    Get.back();
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String label;
  const _SectionLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          label,
          textAlign: TextAlign.start,
          style: context.textStyle.bodyMedium,
        ),
      ),
    );
  }
}