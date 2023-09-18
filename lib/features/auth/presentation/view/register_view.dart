import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_triad/core/resources/manager_assets.dart';
import 'package:flutter_triad/core/resources/manager_colors.dart';
import 'package:flutter_triad/core/resources/manager_fonts.dart';
import 'package:flutter_triad/core/resources/manager_sizes_util.dart';
import 'package:flutter_triad/core/resources/manager_strings.dart';
import 'package:flutter_triad/core/resources/manager_styles.dart';
import 'package:flutter_triad/core/validator/validator.dart';
import 'package:flutter_triad/core/widgets/main_button.dart';
import 'package:flutter_triad/core/widgets/scaffold_with_background.dart';
import 'package:flutter_triad/features/auth/presentation/controller/register_controller.dart';
import 'package:flutter_triad/features/auth/presentation/widget/auth_text_field.dart';
import 'package:flutter_triad/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_icons.dart';
import '../widget/top_part_auth.dart';

class RegisterView extends StatelessWidget {
  final FieldValidator _validator = FieldValidator();

  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return scaffoldWithImageBackground(
      child: SingleChildScrollView(
        child: Column(
          children: [
            partTopAuth(),
            GetBuilder<RegisterController>(
              builder: (controller) {
                return SingleChildScrollView(
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: ManagerHeight.h24,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            ManagerStrings.signUp,
                            style: getBoldTextStyle(
                              fontSize: ManagerFontSize.s24,
                              color: ManagerColors.primaryColor_,

                            ),
                          ),
                        ),
                        SizedBox(
                          height: ManagerHeight.h4,
                        ),
                        Row(
                          children: [
                            Text(
                                ManagerStrings.alreadyHaveAccount,
                                style: getRegularTextStyle(
                                  fontSize: ManagerFontSize.s14,
                                  color: ManagerColors.subTitleColor,
                                ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.offNamed(Routes.login);
                              },
                              child: Text(
                                ManagerStrings.login,
                                style: getRegularTextStyle(
                                  fontSize: ManagerFontSize.s14,
                                  color: ManagerColors.secondaryColor_,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ManagerHeight.h30,
                        ),
                        Row(
                          children: [
                            Text(
                              ManagerStrings.fullName,
                              style: getRegularTextStyle(
                                fontSize: ManagerFontSize.s14,
                                color: ManagerColors.primaryColor_,
                              ),
                            ),
                            Text(
                              ManagerStrings.requiredStar,
                              style: getRegularTextStyle(
                                fontSize: ManagerFontSize.s14,
                                color: ManagerColors.requiredStarColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ManagerHeight.h8,
                        ),
                        AuthTextField(
                          hintText: ManagerStrings.fullName,
                          obscureText: false,
                          validator: (value) => _validator.validateFullName(
                            value!,
                          ),
                          controller: controller.fullName,
                          textInputType: TextInputType.name,
                        ),
                        SizedBox(
                          height: ManagerHeight.h16,
                        ),
                        Row(
                          children: [
                            Text(
                              ManagerStrings.email,
                              style: getRegularTextStyle(
                                fontSize: ManagerFontSize.s14,
                                color: ManagerColors.primaryColor_,
                              ),
                            ),
                            Text(
                              ManagerStrings.requiredStar,
                              style: getRegularTextStyle(
                                fontSize: ManagerFontSize.s14,
                                color: ManagerColors.requiredStarColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ManagerHeight.h8,
                        ),
                        AuthTextField(
                          hintText: ManagerStrings.email,
                          obscureText: false,
                          validator: (value) => _validator.validateEmail(
                            value!,
                          ),
                          controller: controller.email,
                          textInputType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: ManagerHeight.h16,
                        ),
                        Row(
                          children: [
                            Text(
                              ManagerStrings.password,
                              style: getRegularTextStyle(
                                fontSize: ManagerFontSize.s14,
                                color: ManagerColors.primaryColor_,
                              ),
                            ),
                            Text(
                              ManagerStrings.requiredStar,
                              style: getRegularTextStyle(
                                fontSize: ManagerFontSize.s14,
                                color: ManagerColors.requiredStarColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ManagerHeight.h8,
                        ),
                        AuthTextField(
                          hintText: ManagerStrings.enterYourPassword,
                          obscureText: false,
                          validator: (value) => _validator.validatePassword(
                            value!,
                          ),
                          controller: controller.password,
                          textInputType: TextInputType.text,
                          suffixIcon: IconButton(
                            icon: controller.isObscurePassword
                                ? Icon(
                              ManagerIcons.visibility_off,
                              color: ManagerColors.greyLight,
                            )
                                : Icon(
                              ManagerIcons.visibility,
                              color: ManagerColors.primaryColor,
                            ),
                            onPressed: () =>
                                controller.onChangeObscurePassword(),
                          ),
                        ),
                        SizedBox(
                          height: ManagerHeight.h24,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: ManagerHeight.h60,
                          child: mainButton(
                            onPressed: () {
                              controller.performRegister(context);
                            },
                            child: Text(
                              ManagerStrings.createAccount,
                              style: getRegularTextStyle(
                                fontSize: ManagerFontSize.s14,
                                color: ManagerColors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ManagerHeight.h30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ManagerStrings.signupWithGoogle,
                                style: getRegularTextStyle(
                                  fontSize: ManagerFontSize.s14,
                                  color: ManagerColors.primaryColor_,
                                ),
                              ),
                              SizedBox(
                                width: ManagerWidth.w4,
                              ),
                              SvgPicture.asset(ManagerAssets.google)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      isRegisterView: true,
    );
  }
}
