import 'package:flutter_triad/config/constants.dart';
import 'package:flutter_triad/core/resources/manager_colors.dart';
import 'package:flutter_triad/core/resources/manager_sizes_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/out_boarding_controller.dart';

class SliderIndicator extends StatelessWidget {
  const SliderIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<OutBoardingController>(

      builder: (controller) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              ManagerRadius.r24,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: ManagerWidth.w4,
              ),
              ...List.generate(
                controller.outBoardingItems.length,
                (index) => Row(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(
                        milliseconds: Constants.sliderTimeMillSecond,
                      ),
                      width:  ManagerWidth.w6,
                      height: ManagerHeight.h6,
                      decoration: BoxDecoration(
                        color: controller.getCurrentPage() == index ? ManagerColors.secondaryColor_
                            : ManagerColors.greyLight,
                        borderRadius: BorderRadius.circular(
                          ManagerRadius.r24,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: ManagerWidth.w4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
