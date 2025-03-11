part of 'imports.dart';

class _TopicItem extends StatelessWidget {
  final TopicEntity topic;
  final int index;

  const _TopicItem({required this.topic, required this.index});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.toNamed(AppRoutes.detailTheme, arguments: topic);
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
                  index.toString().padLeft(2, "0"),
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
                    topic.title,
                    style: context.name,
                  ),
                  Text(
                    topic.description,
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
                  value: topic.progress / 100,
                  color: context.textPrimary,
                  strokeCap: StrokeCap.round,
                  strokeAlign: 4,
                  strokeWidth: 3,
                  backgroundColor: context.dividerColor,
                ),
                Text(
                  "${topic.progress}%",
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
