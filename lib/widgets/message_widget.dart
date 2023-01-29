import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {required this.image, required this.message, required this.pseudo});

  final String pseudo;
  final String image;
  final String message;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(pseudo),
      subtitle: Text(
        message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
        icon: const Icon(Icons.camera_alt_outlined),
        onPressed: () {},
      ),
    );
  }
}
