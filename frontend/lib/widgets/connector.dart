import 'package:flutter/material.dart';

class Connector extends StatelessWidget {
  const Connector({super.key, this.length});
  final int? length;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: length!.toDouble(),
      width: 1,
      color: Colors.grey,
    );
  }
}
