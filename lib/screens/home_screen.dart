import 'package:flutter/material.dart';
import 'package:travo_app/core/color.dart';
import 'package:travo_app/helpers/asset_helper.dart';
import 'package:travo_app/widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, James!",
                      style: TextStyle(
                          color: AppColor.whiteColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Text('Where are you going next?',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.whiteColor,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.notification_add_sharp),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Image.asset(
                        AssetHelper.onboarding1,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
