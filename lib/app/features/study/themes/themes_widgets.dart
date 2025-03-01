part of 'imports.dart';

class _ThemeItem extends StatelessWidget {
  final ThemeEntity theme;

  const _ThemeItem({required this.theme});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.toNamed(AppRoutes.topics, arguments: theme);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: context.cardColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: context.dividerColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  theme.number.toString().padLeft(2, "0"),
                  style: context.title,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    theme.name,
                    style: context.name,
                  ),
                  Text(
                    theme.description,
                    style: context.body,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 15),
            Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: theme.progress / 100,
                  color: context.textPrimary,
                  strokeCap: StrokeCap.round,
                  strokeAlign: 4,
                  strokeWidth: 3,
                  backgroundColor: context.dividerColor,
                ),
                Text(
                  "${theme.progress}%",
                  style: context.smallName,
                ),
              ],
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
