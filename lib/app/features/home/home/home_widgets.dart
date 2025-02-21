part of 'imports.dart';

class _LastRead extends StatelessWidget {
  const _LastRead();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: CircularProgressIndicator(
                      value: mockLastReadTheme.progress / 100,
                      strokeCap: StrokeCap.round,
                      strokeWidth: 5,
                      backgroundColor: context.dividerColor,
                    ),
                  ),
                  Text(
                    "${mockLastReadTheme.progress}%",
                    style: context.name,
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chapter ${mockLastReadTheme.themeID}",
                      style: context.name,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      mockLastReadTheme.title,
                      style: context.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Continue Your Journey!",
                      style: context.body,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: context.elevatedButtonSmallStyle,
            onPressed: () {},
            child: Center(
              child: Text(
                "Continue Studying",
                style: context.button,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
