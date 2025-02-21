class ArticleModel {
  final int id;
  final int themeID;
  final int videoID;
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

  ArticleContentEntity({
    required this.type,
    required this.data,
  });
}

enum ContentType { title, text, code, image, quote }

List<ArticleModel> mockArticles = [
  ArticleModel(id: 1, themeID: 1, videoID: 1, title: "HTML Basics", content: [
    ArticleContentEntity(type: ContentType.title, data: "Introduction to HTML"),
    ArticleContentEntity(type: ContentType.text, data: "HTML (HyperText Markup Language) is the standard language used to create web pages. It provides the structure of a webpage, allowing developers to organize content with elements such as headings, paragraphs, images, and links."),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"),
    ArticleContentEntity(type: ContentType.title, data: "Basic HTML Structure"),
    ArticleContentEntity(type: ContentType.text, data: "A simple HTML document consists of elements such as <html>, <head>, and <body>. Below is an example of a basic HTML structure."),
    ArticleContentEntity(type: ContentType.code, data: "<!DOCTYPE html>\n<html>\n<head>\n<title>My First HTML Page</title>\n</head>\n<body>\n<h1>Welcome to HTML</h1>\n<p>This is a basic HTML page.</p>\n</body>\n</html>"),
    ArticleContentEntity(type: ContentType.quote, data: "HTML is the foundation of all web pages."),
  ]),

  ArticleModel(id: 2, themeID: 2, videoID: 2, title: "HTML Forms & Inputs", content: [
    ArticleContentEntity(type: ContentType.title, data: "Understanding HTML Forms"),
    ArticleContentEntity(type: ContentType.text, data: "Forms are essential for user interaction on websites. They allow users to input data, which can then be processed by a server."),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/4/4d/HTML_Form_Example.png"),
    ArticleContentEntity(type: ContentType.title, data: "Basic Form Example"),
    ArticleContentEntity(type: ContentType.text, data: "Below is an example of a simple HTML form that collects user input."),
    ArticleContentEntity(type: ContentType.code, data: '<form action="/submit" method="post">\n<label for="name">Name:</label>\n<input type="text" id="name" name="name">\n<input type="submit" value="Submit">\n</form>'),
    ArticleContentEntity(type: ContentType.quote, data: "Forms are the bridge between users and backend systems."),
  ]),

  ArticleModel(id: 3, themeID: 3, videoID: 3, title: "HTML5 Advanced Features", content: [
    ArticleContentEntity(type: ContentType.title, data: "Exploring HTML5"),
    ArticleContentEntity(type: ContentType.text, data: "HTML5 introduced new elements and APIs that enhance multimedia capabilities, graphics, and interactivity."),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/3/38/HTML5_Badge.svg"),
    ArticleContentEntity(type: ContentType.title, data: "New Features in HTML5"),
    ArticleContentEntity(type: ContentType.text, data: "Some of the major features in HTML5 include the <canvas> element, native audio and video support, and improved form controls."),
    ArticleContentEntity(type: ContentType.code, data: '<video width="320" height="240" controls>\n<source src="movie.mp4" type="video/mp4">\n</video>'),
    ArticleContentEntity(type: ContentType.quote, data: "HTML5 makes the web more powerful and interactive."),
  ]),

  ArticleModel(id: 4, themeID: 4, videoID: 4, title: "CSS Fundamentals", content: [
    ArticleContentEntity(type: ContentType.title, data: "Introduction to CSS"),
    ArticleContentEntity(type: ContentType.text, data: "CSS (Cascading Style Sheets) is used to style HTML elements, defining layouts, colors, fonts, and positioning."),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/6/62/CSS3_logo_and_wordmark.svg"),
    ArticleContentEntity(type: ContentType.title, data: "Basic CSS Example"),
    ArticleContentEntity(type: ContentType.text, data: "Below is an example of how CSS is applied to an HTML document."),
    ArticleContentEntity(type: ContentType.code, data: "body { background-color: lightblue; }\nh1 { color: navy; text-align: center; }\np { font-size: 16px; }"),
    ArticleContentEntity(type: ContentType.quote, data: "CSS brings design to the web."),
  ]),

  ArticleModel(id: 5, themeID: 5, videoID: 5, title: "CSS Flexbox & Grid", content: [
    ArticleContentEntity(type: ContentType.title, data: "Mastering CSS Layouts"),
    ArticleContentEntity(type: ContentType.text, data: "Flexbox and Grid are two powerful CSS modules that allow for efficient layout structuring."),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/d/d3/CSS_Flexbox_and_Grid.png"),
    ArticleContentEntity(type: ContentType.title, data: "Flexbox Example"),
    ArticleContentEntity(type: ContentType.code, data: "display: flex;\njustify-content: center;\nalign-items: center;"),
    ArticleContentEntity(type: ContentType.quote, data: "Modern layouts are built with Flexbox and Grid."),
  ]),

  ArticleModel(id: 6, themeID: 6, videoID: 6, title: "CSS Animations & Transitions", content: [
    ArticleContentEntity(type: ContentType.title, data: "Adding Motion to Web Pages"),
    ArticleContentEntity(type: ContentType.text, data: "CSS animations allow developers to create smooth transitions and effects without JavaScript."),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/8/88/CSS_Animation_Example.png"),
    ArticleContentEntity(type: ContentType.title, data: "Basic Animation"),
    ArticleContentEntity(type: ContentType.code, data: "@keyframes example {\nfrom {background-color: red;}\nto {background-color: yellow;}\n}"),
    ArticleContentEntity(type: ContentType.quote, data: "Animations make websites more engaging."),
  ]),

  ArticleModel(id: 7, themeID: 7, videoID: 7, title: "TypeScript Basics", content: [
    ArticleContentEntity(type: ContentType.title, data: "Introduction to TypeScript"),
    ArticleContentEntity(type: ContentType.text, data: "TypeScript is a typed superset of JavaScript that compiles to plain JavaScript."),
    ArticleContentEntity(type: ContentType.image, data: "https://upload.wikimedia.org/wikipedia/commons/2/29/TypeScript_Logo_%28Blue%29.svg"),
    ArticleContentEntity(type: ContentType.title, data: "Basic TypeScript Example"),
    ArticleContentEntity(type: ContentType.code, data: "let message: string = 'Hello, TypeScript!';\nconsole.log(message);"),
    ArticleContentEntity(type: ContentType.quote, data: "TypeScript brings safety to JavaScript."),
  ]),
];
