part of 'imports.dart';

Widget _buildCodeBlock(BuildContext context, String content, String language) {
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
          content,
          language: language,
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
          Clipboard.setData(ClipboardData(text: content));
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
