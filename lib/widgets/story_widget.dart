import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({super.key});

  final List storyItems = [
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/photo-1.jpeg",
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/photo-2.jpeg",
    },
    {
      "pseudo": 'dramaLove',
      "photo": "assets/images/photo/photo-3.jpeg",
    },
    {
      "pseudo": 'moonTomato',
      "photo": "assets/images/photo/photo-4.jpeg",
    },
    {
      "pseudo": 'Tunisia',
      "photo": "assets/images/photo/photo-5.jpeg",
    },
    {
      "pseudo": 'France',
      "photo": "assets/images/photo/photo-6.jpeg",
    },
    {
      "pseudo": 'Italy',
      "photo": "assets/images/photo/photo-7.jpeg",
    },
    {
      "pseudo": 'Spain',
      "photo": "assets/images/photo/photo-8.jpeg",
    },
    {
      "pseudo": 'Algeria',
      "photo": "assets/images/photo/photo-9.jpeg",
    },
    {
      "pseudo": 'USA',
      "photo": "assets/images/photo/photo-10.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/story-circle.png',
                      height: 70,
                    ),
                    Image.asset(
                      'assets/images/story-circle.png',
                      height: 68,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(story['photo']),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
