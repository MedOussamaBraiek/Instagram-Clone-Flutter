import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/models/message.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});
  static const id = '/chat';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

List<Message> messages = [
  Message(
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 1)),
      text: 'Hello',
      isSentByMe: false),
  Message(
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 2)),
      text: 'Hi!',
      isSentByMe: true),
  Message(
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
      text: 'How are u?',
      isSentByMe: false),
  Message(
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 4)),
      text: 'Good',
      isSentByMe: true),
  Message(
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 5)),
      text: 'And you?',
      isSentByMe: true),
  Message(
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
      text: 'Could you introduce yourself ?',
      isSentByMe: false),
  Message(
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 5)),
      text:
          "I am an Engineering Student in my final year, I have a deep understanding of Web Engineering, Frameworks, Libraries,Design and Protocols, I seek the coding challenges and thrive on collaborating with teams.",
      isSentByMe: true),
  Message(
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 6)),
      text: 'Nice, Good luck with your career',
      isSentByMe: false),
  Message(
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 8)),
      text: 'Thank you 😊',
      isSentByMe: true),
  Message(
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 6)),
      text: 'Can I get your GitHub Account ?',
      isSentByMe: false),
  Message(
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 7)),
      text: 'MedOussamaBraiek 👨‍💻',
      isSentByMe: true),
  Message(
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 8)),
      text: 'Thank you!',
      isSentByMe: false),
  Message(
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 6)),
      text: 'What about your LinkedIn Account ?',
      isSentByMe: false),
  Message(
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 7)),
      text: 'Oussama Braiek',
      isSentByMe: true),
  Message(
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 8)),
      text: 'Thank you 😊',
      isSentByMe: false),
  Message(
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 9)),
      text: 'Welcome',
      isSentByMe: true),
  Message(
      date: DateTime.now().subtract(const Duration(days: 1, minutes: 6)),
      text: 'You are a great developer',
      isSentByMe: false),
  Message(
      date: DateTime.now().subtract(const Duration(days: 1, minutes: 7)),
      text: 'Thank you 😊',
      isSentByMe: true),
];

TextEditingController messageController = TextEditingController(text: '');

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          elevation: 0.5,
          title: Row(children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_outlined),
            ),
            const CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/profile/photo-7.jpg'),
            ),
            const SizedBox(
              width: 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Oussama Braiek',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.black),
                ),
                Text(
                  'oussemabraiek',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            )
          ]),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call_outlined,
                size: 25,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_call_outlined,
                size: 25,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ]),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              elements: messages,
              padding: const EdgeInsets.all(8),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              groupBy: (message) => DateTime(
                  message.date.year, message.date.month, message.date.day),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                child: Center(
                  child: Card(
                      elevation: 0,
                      //color: Colors.grey.shade300,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          DateFormat.yMMMd().format(message.date),
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 10),
                        ),
                      )),
                ),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: BubbleSpecialThree(
                  text: message.text,
                  color: message.isSentByMe
                      ? const Color.fromARGB(255, 234, 231, 231)
                      : const Color.fromARGB(255, 247, 247, 247),
                  tail: false,
                  textStyle: const TextStyle(color: Colors.black, fontSize: 14),
                  isSender: message.isSentByMe,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            height: 40,
            child: TextFormField(
              controller: messageController,
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  hintText: 'Your message...',
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      SizedBox(
                        width: 3,
                      ),
                      SizedBox(
                        height: 30,
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 28, 146, 242),
                          child: Icon(
                            Icons.camera_alt,
                            size: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  suffixIconColor: Colors.black,
                  focusColor: Colors.black,
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.mic_none_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.image_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.file_copy_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15)),
              onFieldSubmitted: (text) {
                final message =
                    Message(text: text, date: DateTime.now(), isSentByMe: true);
                text != ''
                    ? setState(() =>
                        {messages.add(message), messageController.text = ''})
                    : null;
              },
            ),
          )
        ],
      ),
    );
  }
}
