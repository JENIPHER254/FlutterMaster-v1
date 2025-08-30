import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PageviewTiktokEffect extends StatefulWidget {
  const PageviewTiktokEffect({super.key});

  @override
  State<PageviewTiktokEffect> createState() => _PageviewTiktokEffectState();
}

class _PageviewTiktokEffectState extends State<PageviewTiktokEffect> {
  late VideoPlayerController _videoPlayerController;

  // videos map
  final List<Map<String, dynamic>> videos = [
    {
      'id': 'video1',
      'url': 'assets/videos/video1.mp4',
      'username': 'James',
      'phone': '123-456-7890',
      'description': 'This is the first video description.',
      'profile_img': 'assets/images/img1.jpg',
    },
    {
      'id': 'video2',
      'url': 'assets/videos/video2.mp4',
      'username': 'JohnDoe',
      'phone': '987-654-3210',
      'description': 'This is the second video description.',
      'profile_img': 'assets/images/img2.jpg',
    },
    {
      'id': 'video3',
      'url': 'assets/videos/video3.mp4',
      'username': 'Alice',
      'phone': '555-555-5555',
      'description': 'This is the third video description.',
      'profile_img': 'assets/images/img3.jpg',
    },
  ];

  // initializing the video player controller
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(videos[0]['url'])
      ..initialize().then((_) {
        setState(() {
          _videoPlayerController.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videos.length,
        onPageChanged: (value) {
          _videoPlayerController.pause();
          _videoPlayerController =
              VideoPlayerController.asset(videos[value]['url'])
                ..initialize().then((_) {
                  setState(() {
                    _videoPlayerController.play();
                  });
                });
        },
        itemBuilder: (context, index) {
          final video = videos[index];
          return Column(
            children: [
              Expanded(
                child: PageView(
                  children: [
                    VideoPlayer(
                      _videoPlayerController,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(video['profile_img']),
                            ),
                            SizedBox(height: 10),
                            Text(
                              video['username'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              video['phone'],
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                video['description'],
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
