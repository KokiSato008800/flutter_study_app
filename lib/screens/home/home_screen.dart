import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study_app/controllers/question_paper/question_paper_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
        body: Obx(() => ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                  child: SizedBox(
                      height: 200,
                      width: 200,
                      child: FadeInImage(
                        image: NetworkImage(
                            _questionPaperController.allPaperImages[index]),
                        placeholder:
                            AssetImage("assets/images/app_splash_logo.png"),
                      )));
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 20);
            },
            itemCount: _questionPaperController.allPaperImages.length)));
  }
}
