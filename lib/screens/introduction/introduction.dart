import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_study_app/configs/themes/app_colors.dart';
import 'package:flutter_study_app/screens/home/home_screen.dart';
import 'package:flutter_study_app/widgets/app_circle_button.dart';
import 'package:get/get.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(gradient: mainGradient(context)),
            alignment: Alignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.14),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, size: 65),
                    SizedBox(height: 40),
                    const Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: onSurfaceTextColor,
                            fontWeight: FontWeight.bold),
                        'This is a study app. You can use it as you want. If you understand how it works you would be able to scale it. With this you will master firebase backend and flutter front end.'),
                    SizedBox(height: 40),
                    AppCircleButton(
                        onTap: () => Get.offAndToNamed(HomeScreen.routeName),
                        child: const Icon(Icons.arrow_forward, size: 35))
                  ]),
            )));
  }
}
