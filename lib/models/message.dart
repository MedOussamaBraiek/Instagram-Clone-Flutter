class Message {
  Message({required this.date, required this.text, required this.isSentByMe});

  String text;
  DateTime date;
  bool isSentByMe;

  @override
  String toString() {
    return "{text: $text, date: $date, isSentByMe: $isSentByMe}";
  }
}
