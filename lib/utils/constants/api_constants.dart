class ApiConstants {
  static const String baseURL = "http://85.92.110.162:8021/";

  /// STUDY
  static const String themeList = "/api/v1/theme/list/";
  static const String topicList = "/api/v1/topic/{theme_id}/";
  static const String document = "/api/v1/get-document/{document_id}/";
  static const String quiz = "/api/v1/get-task/topic/{topic_id}/";

  /// Auth
  static const String login = "/api/v1/login/";

}
