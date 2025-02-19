import 'package:get/get.dart';

import '../bindings/home/home_binding.dart';
import '../bindings/leaderboard/leaderboard_binding.dart';
import '../bindings/leaderboard/live_quiz_binding.dart';
import '../bindings/leaderboard/live_quiz_history_binding.dart';
import '../bindings/leaderboard/live_quiz_result_binding.dart';
import '../bindings/leaderboard/user_profile_binding.dart';
import '../bindings/study/detail_theme_binding.dart';
import '../bindings/study/quiz_binding.dart';
import '../bindings/study/quiz_history_binding.dart';
import '../bindings/study/quiz_result_binding.dart';
import '../bindings/study/quiz_stats_binding.dart';
import '../bindings/study/themes_binding.dart';
import '../features/home/home/imports.dart';
import '../features/leaderboard/leaderboard/imports.dart';
import '../features/leaderboard/live_quiz/imports.dart';
import '../features/leaderboard/live_quiz_history/imports.dart';
import '../features/leaderboard/live_quiz_result/imports.dart';
import '../features/leaderboard/user_profile/imports.dart';
import '../features/screens/offline/imports.dart';
import '../features/study/detail_theme/imports.dart';
import '../features/study/quiz/imports.dart';
import '../features/study/quiz_history/imports.dart';
import '../features/study/quiz_result/imports.dart';
import '../features/study/quiz_stats/imports.dart';
import '../features/study/themes/imports.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    /// #HOME
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),

    /// #LEADERBOARD
    GetPage(
      name: AppRoutes.leaderboard,
      page: () => const LeaderboardPage(),
      binding: LeaderboardBinding(),
    ),
    GetPage(
      name: AppRoutes.liveQuiz,
      page: () => const LiveQuizPage(),
      binding: LiveQuizBinding(),
    ),
    GetPage(
      name: AppRoutes.liveQuizHistory,
      page: () => const LiveQuizHistoryPage(),
      binding: LiveQuizHistoryBinding(),
    ),
    GetPage(
      name: AppRoutes.liveQuizResult,
      page: () => const LiveQuizResultPage(),
      binding: LiveQuizResultBinding(),
    ),
    GetPage(
      name: AppRoutes.userProfile,
      page: () => const UserProfilePage(),
      binding: UserProfileBinding(),
    ),

    /// #STUDY
    GetPage(
      name: AppRoutes.detailTheme,
      page: () => const DetailThemePage(),
      binding: DetailThemeBinding(),
    ),
    GetPage(
      name: AppRoutes.quiz,
      page: () => const QuizPage(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: AppRoutes.quizHistory,
      page: () => const QuizHistoryPage(),
      binding: QuizHistoryBinding(),
    ),
    GetPage(
      name: AppRoutes.quizResult,
      page: () => const QuizResultPage(),
      binding: QuizResultBinding(),
    ),
    GetPage(
      name: AppRoutes.quizStats,
      page: () => const QuizStatsPage(),
      binding: QuizStatsBinding(),
    ),
    GetPage(
      name: AppRoutes.themes,
      page: () => const ThemesPage(),
      binding: ThemesBinding(),
    ),

    /// #SCREENS
    GetPage(
      name: AppRoutes.offline,
      page: () => OfflinePage(),
    ),
  ];
}
