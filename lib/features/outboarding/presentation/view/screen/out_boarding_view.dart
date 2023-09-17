import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../controller/out_boarding_controller.dart';

class OutBoardingView extends StatelessWidget {
  const OutBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OutBoardingController>(
            builder: (controller) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: ManagerColors.white,
              body: SafeArea(
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: (int page) {
                    controller.setCurrentIndex(page);
                  },
                  children: [
                    ...controller.outBoardingItems,

                  ],
                ),
              ),
            );
          },
        );
  }
}
