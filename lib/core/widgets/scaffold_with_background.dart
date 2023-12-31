import 'package:flutter_triad/config/constants.dart';
import 'package:flutter_triad/core/resources/manager_colors.dart';
import 'package:flutter_triad/core/resources/manager_sizes_util.dart';
import 'package:flutter_triad/core/widgets/pop_cope_widget.dart';
import 'package:flutter/material.dart';
import '../resources/manager_assets.dart';
import 'arrow_back_button.dart';

Widget scaffoldWithImageBackground({
  required Widget child,
  bool isRegisterView = false,
}) {
  return willPopScope(
    child: Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: Constants.elevation,
      //   leading: isRegisterView ? arrowBackButton() : Container(),
      // ),
      extendBodyBehindAppBar: true,
      backgroundColor: ManagerColors.white,
      body: Container(
        margin: EdgeInsetsDirectional.only(start: ManagerWidth.w16,end: ManagerWidth.w16,top: ManagerHeight.h20),
        child: child /* add child content here */,
      ),
    ),
  );
}
