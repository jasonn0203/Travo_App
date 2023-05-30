import 'package:flutter/material.dart';
import 'package:travo_app/core/color.dart';
import 'package:travo_app/helpers/asset_helper.dart';

class CustomAppBar extends StatelessWidget {
  final Widget child;

  const CustomAppBar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 200,
            child: AppBar(
              centerTitle: true,
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: AppColor.mainBackgroundColor,
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: AppGradient.mainGradient,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(35))),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset(AssetHelper.ovalTopLeft),
                  ),
                  Positioned(
                    child: Image.asset(AssetHelper.ovalBottomRight),
                    bottom: 0,
                    right: 0,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60, left: 25, right: 25),
            child: child,
          )
        ],
      ),
    );
  }
}
