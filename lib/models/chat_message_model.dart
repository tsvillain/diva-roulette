import 'package:flutter/material.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({
    @required this.messageContent,
    @required this.messageType,
  });
}

List<ChatMessage> dummyMessage = [
  ChatMessage(messageContent: "Hello", messageType: "receiver"),
  ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  ChatMessage(
      messageContent: "Hey, I am doing fine dude.", messageType: "sender"),
  ChatMessage(messageContent: "What about you?", messageType: "sender"),
  ChatMessage(messageContent: "Doing Good.", messageType: "receiver"),
];
