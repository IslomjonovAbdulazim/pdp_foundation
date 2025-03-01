part of 'imports.dart';

class _Video extends StatelessWidget {
  const _Video({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: const AspectRatio(
        aspectRatio: 16 / 9,
        child: AwesomeVideoPlayer(
          videoUrl:
              "https://videos.pexels.com/video-files/5220279/5220279-hd_1920_1080_25fps.mp4",
        ),
      ),
    );
  }
}
