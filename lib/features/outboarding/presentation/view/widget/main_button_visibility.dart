import 'package:flutter/material.dart';
import 'package:flutter_triad/core/resources/manager_colors.dart';
import 'package:flutter_triad/core/resources/manager_fonts.dart';
import 'package:flutter_triad/core/resources/manager_icons.dart';
import 'package:flutter_triad/core/resources/manager_sizes_util.dart';
import 'package:flutter_triad/core/resources/manager_strings.dart';
import 'package:flutter_triad/core/resources/manager_styles.dart';
import 'package:flutter_triad/core/widgets/main_button.dart';
import 'package:flutter_triad/features/outboarding/presentation/controller/out_boarding_controller.dart';
import 'package:get/get.dart';

class MainButtonVisibility extends StatelessWidget {
  const MainButtonVisibility({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OutBoardingController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Visibility(
              visible: controller.isNotLastedPage(),
              replacement: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  mainButton(
                    elevation: 0,
                    onPressed: () {
                      controller.getLogin();
                    },
                    borderSide: const BorderSide(
                      width: 1,
                      color: ManagerColors.lightGreyColor,
                    ),
                    child: Text(
                      ManagerStrings.login,
                      style: getRegularTextStyle(
                        fontSize: ManagerFontSize.s14,
                        color: ManagerColors.primaryColor_,
                      ),
                    ),
                    color: ManagerColors.white,
                    minWidth: size.width * 0.45,
                  ),
                  SizedBox(
                    width: ManagerWidth.w8,
                  ),
                  mainButton(
                    onPressed: () {
                      controller.getStarted();
                    },
                    child: Row(
                      children: [
                        Text(
                          ManagerStrings.getStartButton,
                          style: getRegularTextStyle(
                            fontSize: ManagerFontSize.s14,
                            color: ManagerColors.white,
                          ),
                        ),
                        SizedBox(width: ManagerWidth.w6,),
                        Icon(ManagerIcons.arrow_forward_android,color: ManagerColors.white,)
                      ],
                    ),
                    color: ManagerColors.primaryColor,
                    minWidth: size.width * 0.45,
                  ),
                ],
              ),
              child: mainButton(
                onPressed: () {
                  controller.nextPage();
                },
                child: Text(
                  ManagerStrings.next,
                  style: getRegularTextStyle(
                    fontSize: ManagerFontSize.s15,
                    color: ManagerColors.white,
                  ),
                ),
                minWidth: double.infinity,
                color: ManagerColors.primaryColor,
              ),
            ),
          );
        }
    );
  }
}
