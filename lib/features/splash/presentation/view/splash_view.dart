import 'package:flutter_triad/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_triad/core/resources/manager_fonts.dart';
import 'package:flutter_triad/core/resources/manager_strings.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_sizes_util.dart';
import '../../../../core/widgets/scaffold_with_background.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: SizedBox(
          height: ManagerHeight.h80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ManagerAssets.qLogo,
                fit: BoxFit.contain,

                ),
              SizedBox(width: ManagerWidth.w4),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    ManagerAssets.uickMartLogo,
                    fit: BoxFit.contain,
                    width: ManagerWidth.w180,
                  ),
                  SizedBox(height: ManagerHeight.h2),
                  Text(
                    ManagerStrings.logoText,
                    style: TextStyle(
                      color: ManagerColors.primaryColor_,
                      fontSize: ManagerFontSize.s13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
