class ChatMessageModelContent {
  final String type;
  final String time;
  final String message;

  ChatMessageModelContent(
      {required this.type, required this.time, required this.message});
}

List<ChatMessageModelContent> chatMessageModel = [
  ChatMessageModelContent(
      type: "receve",
      time: "2.55 PM",
      message:
          "Hi Professor I wanted to talk about the upcoming assignments for our education course. I find the topics fascinating, but I'm a bit unsure about the expectations."),
  ChatMessageModelContent(
      type: "send",
      time: "3.10 PM",
      message:
          " Of course, I'm here to help. Which specific assignments are you referring to?"),
  ChatMessageModelContent(
      type: "receve",
      time: "3.10 PM",
      message:
          "I'm leaning towards a combination, but I'm not sure how to integrate them cohesively."),
  ChatMessageModelContent(
      type: "send",
      time: "3.12 PM",
      message:
          "Excellent choice! You can start by outlining the core principles of each theory and then identify areas of overlap or potential conflict."),
  ChatMessageModelContent(
      type: "receve",
      time: "3.12 PM",
      message:
          "That's helpful, thank you! One more thing – any specific resources you recommend for further research?"),
  ChatMessageModelContent(
      type: "send",
      time: "3.15 PM",
      message:
          "You're welcome, Sarah! If you have any more questions or need assistance along the way, feel free to reach out. Good luck with your research paper!")
];
