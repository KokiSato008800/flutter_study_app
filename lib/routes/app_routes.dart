import 'package:flutter_study_app/controllers/question_paper/question_paper_controller.dart';
import 'package:flutter_study_app/screens/introduction/introduction.dart';
import 'package:flutter_study_app/screens/splash/splash_screen.dart';
import 'package:flutter_study_app/services/firebase_storage_service.dart';
import 'package:get/get.dart';

import '../screens/home/home_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const SplashScreen()),
        GetPage(
            name: "/introduction", page: () => const AppIntroductionScreen()),
        GetPage(
            name: "/home",
            page: () => const HomeScreen(),
            binding: BindingsBuilder(() {
              Get.put(FirebaseStorageService());
              Get.put(QuestionPaperController());
            }))
      ];
}
