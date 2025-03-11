part of 'imports.dart';

class _Question extends StatelessWidget {
  final String text;

  const _Question({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: context.title,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _Code extends StatelessWidget {
  final String code;
  final String language;

  const _Code({required this.code, required this.language});

  @override
  Widget build(BuildContext context) {
    return code.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: _buildCodeBlock(context, code.trim(), language),
          )
        : const SizedBox.shrink();
  }
}

class _Variants extends GetView<QuizController> {
  final void Function(String) onTap;
  final List<String> options;
  final bool isSelected;

  const _Variants(this.onTap, this.options, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: 4,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        reverse: true,
        itemBuilder: (context, index) {
          final String option = options[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Obx(
              () => CupertinoButton(
                disabledColor: controller.variantColor(option, context),
                padding: const EdgeInsets.symmetric(vertical: 15),
                borderRadius: BorderRadius.circular(15),
                color: controller.variantColor(option, context),
                onPressed: isSelected
                    ? null
                    : () {
                        onTap(option);
                      },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    option,
                    style: context.name,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final void Function() onTap;
  final String buttonText;

  const _Button(this.onTap, {required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CupertinoButton(
        color: context.dividerColor,
        padding: const EdgeInsets.symmetric(vertical: 10),
        borderRadius: BorderRadius.circular(15),
        onPressed: onTap,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: context.textPrimary,
              fontSize: 22,
              fontFamily: FontConstants.nunito,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

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
