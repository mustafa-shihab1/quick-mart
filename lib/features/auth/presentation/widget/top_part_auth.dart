import 'package:flutter_triad/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../config/constants.dart';
import '../../../../core/resources/manager_assets.dart';

Widget partTopAuth() {
  return SafeArea(
    child: Align(
      alignment: Alignment.centerLeft,
      child: SvgPicture.asset(
        ManagerAssets.quickMart,
      ),
    ),
  );
}
