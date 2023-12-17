import 'package:flutter/material.dart';
import 'package:frontend/widgets/connector.dart';
import 'package:frontend/widgets/message_bubble.dart';
import 'package:frontend/widgets/time_widget.dart';

import '../models/Message_Model.dart';

class Message extends StatefulWidget {
  const Message({super.key, this.msg});
  final MessageModel? msg;
  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TimeWidget(),
        const Connector(
          length: 8,
        ),
        MessageBubble(
          text: widget.msg?.text,
        ),
      ],
    );
  }
}
