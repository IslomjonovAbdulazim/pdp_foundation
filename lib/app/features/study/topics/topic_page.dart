part of 'imports.dart';

class TopicPage extends GetView<TopicController> {
  const TopicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(controller.theme.value.name),
      ),
    );
  }
}
