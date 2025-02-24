class ArticleModel {
  final int id;
  final int themeID;
  final int videoID;// todo  remove
  final String title;
  final List<ArticleContentEntity> content;

  ArticleModel({
    required this.id,
    required this.themeID,
    required this.videoID,
    required this.title,
    required this.content,
  });
}

class ArticleContentEntity {
  final ContentType type;
  final String data;
  final String keyword;

  ArticleContentEntity({
    required this.type,
    required this.data,
    required this.keyword,
  });
}

enum ContentType { title, text, code, image, quote }

List<ArticleModel> mockArticles = [
  ArticleModel(id: 1, themeID: 1, videoID: 1, title: "HTML Basics", content: [
    ArticleContentEntity(type: ContentType.title, data: "Introduction to HTML", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "HTML (HyperText Markup Language) is the standard language used to create web pages.", keyword: ""),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg", keyword: ""),
    ArticleContentEntity(type: ContentType.title, data: "Basic HTML Structure", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "A simple HTML document consists of elements such as <html>, <head>, and <body>.", keyword: ""),
    ArticleContentEntity(type: ContentType.code, data: "<!DOCTYPE html>\n<html>\n<head>\n<title>My First HTML Page</title>\n</head>\n<body>\n<h1>Welcome to HTML</h1>\n<p>This is a basic HTML page.</p>\n</body>\n</html>", keyword: "html"),
    ArticleContentEntity(type: ContentType.quote, data: "HTML is the foundation of all web pages.", keyword: ""),
  ]),

  ArticleModel(id: 2, themeID: 2, videoID: 2, title: "HTML Forms & Inputs", content: [
    ArticleContentEntity(type: ContentType.title, data: "Understanding HTML Forms", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "Forms are essential for user interaction on websites.", keyword: ""),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/4/4d/HTML_Form_Example.png", keyword: ""),
    ArticleContentEntity(type: ContentType.title, data: "Basic Form Example", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "Below is an example of a simple HTML form.", keyword: ""),
    ArticleContentEntity(type: ContentType.code, data: '<form action="/submit" method="post">\n<label for="name">Name:</label>\n<input type="text" id="name" name="name">\n<input type="submit" value="Submit">\n</form>', keyword: "html"),
    ArticleContentEntity(type: ContentType.quote, data: "Forms are the bridge between users and backend systems.", keyword: ""),
  ]),

  ArticleModel(id: 3, themeID: 3, videoID: 3, title: "HTML Forms & Inputs", content: [
    ArticleContentEntity(type: ContentType.title, data: "Understanding HTML Forms", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "Forms are essential for user interaction on websites.", keyword: ""),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/4/4d/HTML_Form_Example.png", keyword: ""),
    ArticleContentEntity(type: ContentType.title, data: "Basic Form Example", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "Below is an example of a simple HTML form.", keyword: ""),
    ArticleContentEntity(type: ContentType.code, data: '<form action="/submit" method="post">\n<label for="name">Name:</label>\n<input type="text" id="name" name="name">\n<input type="submit" value="Submit">\n</form>', keyword: "html"),
    ArticleContentEntity(type: ContentType.quote, data: "Forms are the bridge between users and backend systems.", keyword: ""),
  ]),

  ArticleModel(id: 4, themeID: 4, videoID: 4, title: "CSS Fundamentals", content: [
    ArticleContentEntity(type: ContentType.title, data: "Introduction to CSS", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "CSS (Cascading Style Sheets) is used to style HTML elements.", keyword: ""),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/6/62/CSS3_logo_and_wordmark.svg", keyword: ""),
    ArticleContentEntity(type: ContentType.title, data: "Basic CSS Example", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "Below is an example of how CSS is applied to an HTML document.", keyword: ""),
    ArticleContentEntity(type: ContentType.code, data: "body { background-color: lightblue; }\nh1 { color: navy; text-align: center; }\np { font-size: 16px; }", keyword: "css"),
    ArticleContentEntity(type: ContentType.quote, data: "CSS brings design to the web.", keyword: ""),
  ]),

  ArticleModel(id: 5, themeID: 5, videoID: 5, title: "CSS Flexbox & Grid", content: [
    ArticleContentEntity(type: ContentType.title, data: "Mastering CSS Layouts", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "Flexbox and Grid are two powerful CSS modules.", keyword: ""),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/d/d3/CSS_Flexbox_and_Grid.png", keyword: ""),
    ArticleContentEntity(type: ContentType.title, data: "Flexbox Example", keyword: ""),
    ArticleContentEntity(type: ContentType.code, data: "display: flex;\njustify-content: center;\nalign-items: center;", keyword: "css"),
    ArticleContentEntity(type: ContentType.quote, data: "Modern layouts are built with Flexbox and Grid.", keyword: ""),
  ]),

  ArticleModel(id: 6, themeID: 6, videoID: 6, title: "CSS Animations & Transitions", content: [
    ArticleContentEntity(type: ContentType.title, data: "Adding Motion to Web Pages", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "CSS animations allow developers to create smooth transitions.", keyword: ""),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/8/88/CSS_Animation_Example.png", keyword: ""),
    ArticleContentEntity(type: ContentType.title, data: "Basic Animation", keyword: ""),
    ArticleContentEntity(type: ContentType.code, data: "@keyframes example {\nfrom {background-color: red;}\nto {background-color: yellow;}\n}", keyword: "css"),
    ArticleContentEntity(type: ContentType.quote, data: "Animations make websites more engaging.", keyword: ""),
  ]),

  ArticleModel(id: 7, themeID: 7, videoID: 7, title: "TypeScript Basics", content: [
    ArticleContentEntity(type: ContentType.title, data: "Introduction to TypeScript", keyword: ""),
    ArticleContentEntity(type: ContentType.text, data: "TypeScript is a typed superset of JavaScript.", keyword: ""),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/2/29/TypeScript_Logo_%28Blue%29.svg", keyword: ""),
    ArticleContentEntity(type: ContentType.title, data: "Basic TypeScript Example", keyword: ""),
    ArticleContentEntity(type: ContentType.code, data: "let message: string = 'Hello, TypeScript!';\nconsole.log(message);", keyword: "typescript"),
    ArticleContentEntity(type: ContentType.quote, data: "TypeScript brings safety to JavaScript.", keyword: ""),
  ]),
];
