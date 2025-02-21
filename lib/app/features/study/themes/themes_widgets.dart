part of 'imports.dart';

class _ThemeItem extends StatelessWidget {
  final ThemeEntity theme;

  const _ThemeItem({required this.theme});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.toNamed(AppRoutes.detailTheme, arguments: theme);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: context.cardColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CachedNetworkWidget(
                theme.image,
                height: 40,
                width: 40,
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
            const SizedBox(width: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: theme.progress / 100,
                  color: context.textPrimary,
                  strokeCap: StrokeCap.round,
                  strokeAlign: 1,
                  strokeWidth: 3,
                  backgroundColor: context.dividerColor,
                ),
                Text(
                  "${theme.progress}%",
                  style: context.smallName,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
