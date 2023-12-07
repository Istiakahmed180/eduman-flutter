class ChatModelContent {
  final int id;
  final String name;
  final String message;
  final String time;
  final String messageCount;
  final String image;

  ChatModelContent(
      {required this.id,
      required this.name,
      required this.message,
      required this.messageCount,
      required this.time,
      required this.image});
}

List<ChatModelContent> chatModel = [
  ChatModelContent(
      id: 1,
      name: "Jane Cooper",
      message: "perfect!",
      messageCount: "2",
      time: "11:15",
      image: "lib/src/assets/chat/chate1.png"),
  ChatModelContent(
      id: 2,
      name: "Leslie Alexander",
      message: "How are you?",
      messageCount: "3",
      time: "11:15",
      image: "lib/src/assets/chat/chate2.png"),
  ChatModelContent(
      id: 3,
      name: "Jacob Jones",
      message: "How can i help you?",
      messageCount: "4",
      time: "11:15",
      image: "lib/src/assets/chat/chate3.png"),
  ChatModelContent(
      id: 4,
      name: "Jacob Jones",
      message: "How can i help you?",
      messageCount: "5",
      time: "11:15",
      image: "lib/src/assets/chat/chate4.png"),
  ChatModelContent(
      id: 5,
      name: "Jacob Jones",
      message: "How can i help you?",
      messageCount: "6",
      time: "11:15",
      image: "lib/src/assets/chat/chate5.png"),
  ChatModelContent(
      id: 6,
      name: "Jane Cooper",
      message: "perfect!",
      messageCount: "2",
      time: "11:15",
      image: "lib/src/assets/chat/chate1.png"),
  ChatModelContent(
      id: 7,
      name: "Leslie Alexander",
      message: "How are you?",
      messageCount: "3",
      time: "11:15",
      image: "lib/src/assets/chat/chate2.png"),
  ChatModelContent(
      id: 8,
      name: "Jacob Jones",
      message: "How can i help you?",
      messageCount: "4",
      time: "11:15",
      image: "lib/src/assets/chat/chate3.png"),
  ChatModelContent(
      id: 9,
      name: "Jacob Jones",
      message: "How can i help you?",
      messageCount: "5",
      time: "11:15",
      image: "lib/src/assets/chat/chate4.png"),
  ChatModelContent(
      id: 10,
      name: "Jacob Jones",
      message: "How can i help you?",
      messageCount: "6",
      time: "11:15",
      image: "lib/src/assets/chat/chate5.png")
];
