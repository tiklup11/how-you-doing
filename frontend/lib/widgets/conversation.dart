import 'package:flutter/cupertino.dart';

import '../models/Message_Model.dart';
import 'connector.dart';
import 'message.dart';

class Conversation extends StatefulWidget {
  const Conversation({super.key});

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  int? connectorLen = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        reverse: true,
        children: [
          const SizedBox(
            height: 30,
          ),
          Message(
            msg: MessageModel(
                text: "watched a one hours yt video", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          Message(
            msg: MessageModel(
                text: "did some handson", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          Message(
            msg: MessageModel(
                text: "watched one yt video", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          Message(
            msg: MessageModel(
                text: "Read some beginner articles", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          Message(
            msg: MessageModel(
                text: "did some handson", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          Message(
            msg: MessageModel(
                text: "watched one yt video", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(80),
          Message(
            msg: MessageModel(
                text: "Read some beginner articles", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          Message(
            msg: MessageModel(
                text: "did some handson", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          Message(
            msg: MessageModel(
                text: "watched one yt video", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          Message(
            msg: MessageModel(
                text: "Read some beginner articles", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(80),
          Message(
            msg: MessageModel(
                text: "did some handson", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          Message(
            msg: MessageModel(
                text: "watched one yt video", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          Message(
            msg: MessageModel(
                text: "Read some beginner articles", time: "Yesterday, 12:11"),
          ),
          drawVerticalLine(connectorLen),
          CupertinoButton(
              onPressed: () {},
              child: const Icon(CupertinoIcons.add_circled_solid))
        ],
      ),
    );
  }
}

drawVerticalLine(int? len) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Connector(
        length: len,
      )
    ],
  );
}
