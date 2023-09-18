import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_triad/core/resources/manager_assets.dart';
import 'package:flutter_triad/core/resources/manager_icons.dart';
import 'package:flutter_triad/core/resources/manager_strings.dart';
import 'package:flutter_triad/features/outboarding/presentation/controller/out_boarding_controller.dart';
import 'package:flutter_triad/features/outboarding/presentation/view/widget/main_button_visibility.dart';
import 'package:get/get.dart';

import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes_util.dart';
import '../../../../../core/resources/manager_styles.dart';
import 'slider_indicator.dart';

class OutBoardingPage extends StatelessWidget {
  String title;
  String subTitle;
  String image;

  OutBoardingPage({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<OutBoardingController>(
      builder: (controller) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: ManagerWidth.w16,
              ),
              child: Column(
                children: [
                  SizedBox(height: ManagerHeight.h20),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: ManagerWidth.w18,
                      vertical: ManagerHeight.h20,
                    ),
                    decoration: BoxDecoration(
                      color: ManagerColors.lightGreyColor,
                      borderRadius: BorderRadius.circular(
                        ManagerRadius.r32,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Visibility(
                              visible: controller.isNotFirstPage(),
                              replacement: SvgPicture.asset(
                                ManagerAssets.quickMart,
                              ),
                              child: InkWell(
                                  child: Icon(ManagerIcons.arrow_back_android,size: ManagerIconSize.s30,),
                                  onTap: () {
                                    controller.previousPage();
                                  }),
                              ),
                            Container(
                              alignment: Alignment.topRight,
                              child: InkWell(
                                onTap: () {
                                  controller.skipPage();
                                },
                                child: Text(
                                  controller.getCurrentPage() != 2
                                      ? ManagerStrings.skip
                                      : ManagerStrings.empty,
                                  style: getRegularTextStyle(
                                    fontSize: ManagerFontSize.s14,
                                    color: ManagerColors.secondaryColor_,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: ManagerHeight.h46),
                        Image.asset(
                          image,
                        ),
                        SizedBox(height: ManagerHeight.h50),
                      ],
                    ),
                  ),
                  SizedBox(height: ManagerHeight.h24),
                ],
              ),
            ),
            SizedBox(
              height: ManagerHeight.h16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: getBoldTextStyle(
                  fontSize: ManagerFontSize.s24,
                  color: ManagerColors.primaryColor_,
                  height: 1.2,
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                subTitle,
                textAlign: TextAlign.center,
                style: getRegularTextStyle(
                  fontSize: ManagerFontSize.s14,
                  color: ManagerColors.subTitleColor,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h24,
            ),
            MainButtonVisibility(size: size),
            SizedBox(
              height: ManagerHeight.h24,
            ),
            SizedBox(
              height: ManagerHeight.h10,
              child: const SliderIndicator(),
            ),
          ],
        );
      }
    );
  }
}