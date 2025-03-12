import 'package:get/get.dart';
import 'package:pdp_foundation/app/features/home/profile/imports.dart';

import '../bindings/leaderboard/live_quiz_binding.dart';
import '../bindings/leaderboard/live_quiz_history_binding.dart';
import '../bindings/leaderboard/live_quiz_result_binding.dart';
import '../bindings/leaderboard/user_profile_binding.dart';
import '../bindings/screens/auth_binding.dart';
import '../bindings/screens/internal_error_binding.dart';
import '../bindings/screens/splash_binding.dart';
import '../bindings/screens/upgrade_binding.dart';
import '../bindings/study/detail_theme_binding.dart';
import '../bindings/study/quiz_binding.dart';
import '../bindings/study/quiz_history_binding.dart';
import '../bindings/study/quiz_result_binding.dart';
import '../bindings/study/quiz_stats_binding.dart';
import '../bindings/study/topic_binding.dart';
import '../bindings/study/watch_binding.dart';
import '../features/home/home/imports.dart';
import '../features/leaderboard/leaderboard/imports.dart';
import '../features/leaderboard/live_quiz/imports.dart';
import '../features/leaderboard/live_quiz_history/imports.dart';
import '../features/leaderboard/live_quiz_result/imports.dart';
import '../features/leaderboard/user_profile/imports.dart';
import '../features/screens/auth/auth_page.dart';
import '../features/screens/bnb/imports.dart';
import '../features/screens/internal_error/imports.dart';
import '../features/screens/offline/imports.dart';
import '../features/screens/splash/splash_page.dart';
import '../features/screens/upgrade/imports.dart';
import '../features/study/detail_theme/imports.dart';
import '../features/study/quiz/imports.dart';
import '../features/study/quiz_history/imports.dart';
import '../features/study/quiz_result/imports.dart';
import '../features/study/quiz_stats/imports.dart';
import '../features/study/themes/imports.dart';
import '../features/study/topics/imports.dart';
import '../features/study/watch/imports.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    /// #HOME
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfilePage(),
    ),

    /// #LEADERBOARD
    GetPage(
      name: AppRoutes.leaderboard,
      page: () => const LeaderboardPage(),
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
    GetPage(
      name: AppRoutes.liveQuiz,
      page: () => const LiveQuizPage(),
      binding: LiveQuizBinding(),
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
    ),
    GetPage(
      name: AppRoutes.topics,
      page: () => const TopicPage(),
      bindings: [
        TopicBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.themes,
      page: () => const WatchPage(),
      binding: WatchBinding(),
    ),

    /// #SCREENS
    GetPage(
      name: AppRoutes.offline,
      page: () => OfflinePage(),
    ),
    GetPage(
      name: AppRoutes.bnb,
      page: () => const BNBPage(),
      transition: Transition.topLevel,
      bindings: [],
    ),
    GetPage(
      name: AppRoutes.auth,
      page: () => const AuthPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.internalError,
      page: () => const InternalErrorPage(),
      binding: InternalErrorBinding(),
    ),
    GetPage(
      name: AppRoutes.upgrade,
      page: () => const UpgradePage(),
      binding: UpgradeBinding(),
    ),
  ];
}
