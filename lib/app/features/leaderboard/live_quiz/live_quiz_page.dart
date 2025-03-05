part of 'imports.dart';

class LiveQuizPage extends StatelessWidget {
  const LiveQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: GridView.builder(
                          itemCount: 16,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, index) {
                            return AspectRatio(
                              aspectRatio: .8,
                              child: Container(
                                margin: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: index < 5
                                      ? context.greenColor
                                      : index < 7
                                          ? context.error
                                          : context.dividerColor,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: Text(
                                    "${index + 1}",
                                    style: context.name,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            minRadius: 40,
                            backgroundImage: NetworkImage(
                              faker.image.image(),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            faker.person.name(),
                            style: context.name,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "1200exp #12",
                            style: context.name,
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "4",
                                style: TextStyle(
                                  fontFamily: FontConstants.nunito,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: context.greenColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "vs",
                                style: context.name,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontFamily: FontConstants.nunito,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: context.error,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              5,
                              (index) => Container(
                                padding: const EdgeInsets.all(6),
                                margin: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: index % 3 == 0
                                      ? context.error
                                      : context.greenColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(thickness: .5),
                SizedBox(
                  height: 40,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(16, (index) {
                        return AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: index < 2
                                  ? context.error
                                  : index < 10
                                      ? context.greenColor
                                      : context.dividerColor,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "${index + 1}",
                                style: context.name,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  quizzes.first.question,
                  style: context.title,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                _buildCodeBlock(
                  context,
                  quizzes.first.codeSnippet,
                  quizzes.first.language,
                ),
                const Spacer(),
                CupertinoButton(
                  color: context.onSurface,
                  borderRadius: BorderRadius.circular(15),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Continue",
                      style: context.elevatedButton,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
