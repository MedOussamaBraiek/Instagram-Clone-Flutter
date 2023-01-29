import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});

  final List postItems = [
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/photo-1.jpeg",
      "photoProfile": "assets/images/profile/photo-1.webp",
      "description":
          "🤩😱 Loock amazing,contact with different people, what do you like to see ?",
      "likes": "57 858"
    },
    {
      "pseudo": 'Tunisia',
      "photo": "assets/images/photo/photo-2.jpeg",
      "photoProfile": "assets/images/profile/photo-2.jpeg",
      "description":
          "🤩🤩 good food,contact with different people, contact with different people",
      "likes": "2125"
    },
    {
      "pseudo": 'France',
      "photo": "assets/images/photo/photo-3.jpeg",
      "photoProfile": "assets/images/profile/photo-3.jpeg",
      "description": "😩 good food, contact with different people",
      "likes": "3509"
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/photo-4.jpeg",
      "photoProfile": "assets/images/profile/photo-4.webp",
      "description":
          "😭😩 bad and irregular food, contact with different people",
      "likes": "250"
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/photo-5.jpeg",
      "photoProfile": "assets/images/profile/photo-5.jpeg",
      "description":
          "😭😩 bad and irregular food, contact with different people",
      "likes": "43"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(post['photoProfile']),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    post['pseudo'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/images/verification-badge.png',
                    height: 13,
                  ),
                  Expanded(child: Container()), //Take all space left
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post['photo']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.comment_outlined)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.send_outlined)),
                Expanded(child: Container()),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.bookmark_outline)),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(post['photoProfile']),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'Liked by ',
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: post['pseudo'],
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const TextSpan(text: ' and '),
                        const TextSpan(
                          text: '225 other persons',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          post['pseudo'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            post['description'],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'See more',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade400),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'See 20 comments',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          '4 min ago - ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400),
                        ),
                        const Text(
                          'translate',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ]),
            )
          ],
        );
      }).toList(),
    );
  }
}
