part of 'imports.dart';

class UpgradePage extends StatelessWidget {
  const UpgradePage({super.key});

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
                  "New Update!",
                  style: context.display,
                ),
                const SizedBox(height: 5),
                Text(
                  "New Version is Available",
                  style: context.title,
                ),
                const SizedBox(height: 5),
                Text(
                  "Upgrade to latest 1.5.2 version!",
                  style: context.name,
                ),
                const SizedBox(height: 20),
                CupertinoButton(
                  color: context.textPrimary,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  borderRadius: BorderRadius.circular(15),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Upgrade Now",
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
