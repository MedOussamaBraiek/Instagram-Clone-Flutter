import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/chat_screen.dart';
import 'package:instagram/widgets/message_widget.dart';

class MessagesPage extends StatelessWidget {
  MessagesPage({super.key});
  static const id = '/messages';

  final List messageItems = [
    {
      "pseudo": 'Oussama Braiek',
      "photoProfile": "assets/images/profile/photo-7.jpg",
      "message":
          "🤩😱 Loock amazing,contact with different people, what do you like to see ?",
      "time": "Sent 14 min ago"
    },
    {
      "pseudo": 'Lionel Messi',
      "photoProfile": "assets/images/profile/photo-1.webp",
      "message":
          "🤩🤩 good food,contact with different people, contact with different people",
      "time": "Sent 40 min ago"
    },
    {
      "pseudo": 'Cristiano Ronaldo',
      "photoProfile": "assets/images/profile/photo-3.jpeg",
      "message": "😩 good food, contact with different people",
      "time":
          "🤩😱 Loock amazing,contact with different people, what do you like to see ?"
    },
    {
      "pseudo": 'Ed Sheeren',
      "photoProfile": "assets/images/profile/photo-4.webp",
      "message": "😭😩 bad and irregular food, contact with different people",
      "time": "😭😩 bad and irregular food, contact with different people"
    },
    {
      "pseudo": 'Mark Zuckerberg',
      "photoProfile": "assets/images/profile/photo-5.jpeg",
      "message": "😭😩 bad and irregular food, contact with different people",
      "time": "Sent 2h ago"
    },
    {
      "pseudo": 'Sebastian',
      "photoProfile": "assets/images/profile/photo-3.jpeg",
      "message": "😭😩 bad and irregular food, contact with different people",
      "time": "Sent 2h ago"
    },
    {
      "pseudo": 'Justin',
      "photoProfile": "assets/images/profile/photo-6.webp",
      "message": "😭😩 bad and irregular food, contact with different people",
      "time": "Sent 3h ago"
    },
    {
      "pseudo": 'Lionel Messi',
      "photoProfile": "assets/images/profile/photo-1.webp",
      "message":
          "🤩🤩 good food,contact with different people, contact with different people",
      "time": "Sent 4h ago"
    },
    {
      "pseudo": 'Cristiano Ronaldo',
      "photoProfile": "assets/images/profile/photo-3.jpeg",
      "message": "😩 good food, contact with different people",
      "time":
          "🤩😱 Loock amazing,contact with different people, what do you like to see ?"
    },
    {
      "pseudo": 'Ed Sheeren',
      "photoProfile": "assets/images/profile/photo-4.webp",
      "message": "😭😩 bad and irregular food, contact with different people",
      "time": "😭😩 bad and irregular food, contact with different people"
    },
    {
      "pseudo": 'Mark Zuckerberg',
      "photoProfile": "assets/images/profile/photo-5.jpeg",
      "message": "😭😩 bad and irregular food, contact with different people",
      "time": "Sent 5h ago"
    },
    {
      "pseudo": 'Sebastian',
      "photoProfile": "assets/images/profile/photo-3.jpeg",
      "message": "😭😩 bad and irregular food, contact with different people",
      "time": "Sent 5h ago"
    },
    {
      "pseudo": 'Justin',
      "photoProfile": "assets/images/profile/photo-1.webp",
      "message": "😭😩 bad and irregular food, contact with different people",
      "time": "Sent 7h ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_outlined)),
              Text(
                messageItems[0]['pseudo'],
                style: const TextStyle(color: Colors.black, fontSize: 15),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_call_outlined,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.penToSquare,
                size: 20,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ]),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              cursorColor: Colors.grey.shade600,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: const Color.fromRGBO(239, 239, 239, 1),
                focusColor: Colors.white,
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Messages',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: const Text('Requests(3)'))
              ],
            ),
          ),
          Column(
            children: messageItems.map((message) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ChatPage.id);
                },
                child: MessageWidget(
                  pseudo: message['pseudo'],
                  image: message['photoProfile'],
                  message: message['time'],
                ),
              );
            }).toList(),
          )
        ],
      )),
    );
  }
}
