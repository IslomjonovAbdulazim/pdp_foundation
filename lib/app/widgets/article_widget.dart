import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:get/get.dart';
import 'package:pdp_foundation/app/widgets/cashed_network_image_widget.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';

import '../../domain/entities/study/article_entity.dart';
import '../../utils/extenstions/code_style.dart';
import '../../utils/extenstions/color_extension.dart';

class ArticleWidget extends StatelessWidget {
  final ArticleModel article;

  const ArticleWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: article.content.length,
        itemBuilder: (context, index) {
          final content = article.content[index];
          return _buildContent(context, content);
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context, ArticleContentEntity content) {
    switch (content.type) {
      case ContentType.title:
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            content.data,
            style: context.title,
          ),
        );
      case ContentType.text:
        return Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            content.data,
            style: context.body,
          ),
        );
      case ContentType.image:
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkWidget(imageUrl: content.data),
          ),
        );
      case ContentType.code:
        return _buildCodeBlock(context, content);
      case ContentType.quote:
        return Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: context.selection.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
            border: Border(
              left: BorderSide(color: context.selection, width: 4),
            ),
          ),
          child: Text(
            content.data,
            style: context.italic,
          ),
        );
    }
  }
}

Widget _buildCodeBlock(BuildContext context, ArticleContentEntity content) {
  return Stack(
    alignment: Alignment.topRight,
    children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: context.backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: context.dividerColor),
        ),
        child: HighlightView(
          content.data,
          language: content.keyword,
          theme: Get.isDarkMode
              ? githubThemeDarkCustom(context)
              : githubThemeLightCustom(context),
          padding: const EdgeInsets.all(8),
          textStyle: context.code,
        ),
      ),
      IconButton(
        icon: Icon(
          Icons.copy,
          color: context.textPrimary,
          size: 20,
        ),
        onPressed: () {
          Clipboard.setData(ClipboardData(text: content.data));
          Get.closeAllSnackbars();
          Get.snackbar(
            "Copied!",
            "The code has been successfully copied to your clipboard.",
            snackPosition: SnackPosition.BOTTOM,
            duration: const Duration(seconds: 3),
          );
        },
      )
    ],
  );
}
