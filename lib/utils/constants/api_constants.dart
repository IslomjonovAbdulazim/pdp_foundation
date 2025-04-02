class ApiConstants {
  static const String baseURL = "http://10.10.2.6:8001/";
  static const String streamURL = "ws://10.10.2.6:8001/";
  static const String _ = "http://176.57.214.64:8020/";

  /// Leaderboard
  static const String leaderboard = "ws/students/";
  static const String userinfo = "ws/get-user-data/";

  /// STUDY
  static const String themeList = "/api/v1/theme/list/";
  static const String topicList = "/api/v1/topic/{theme_id}/";
  static const String document = "/api/v1/get-document/{document_id}/";
  static const String quiz = "/api/v1/get-task/topic/{topic_id}/";
  static const String quizResult = "/api/v1/task-result/";

  /// Auth
  static const String login = "/api/v1/login/";

  /// Home
  static const String home = "/api/v1/session_user/";

}
