part of 'imports.dart';

class InternalErrorPage extends StatelessWidget {
  const InternalErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Server Error!",
                  style: context.display,
                ),
                const SizedBox(height: 5),
                Text(
                  "Server is not working",
                  style: context.title,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  "Please be patient, our team is working on that problem!",
                  style: context.name,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                CupertinoButton(
                  color: context.textPrimary,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  borderRadius: BorderRadius.circular(15),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Refresh",
                      style: context.button,
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
