import 'package:flutter/material.dart';

class ToReceiveCardWidget extends StatelessWidget {
  const ToReceiveCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      width: 168,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 1.8,
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/images/green_dollar.png",
            height: 48,
            width: 48,
          ),
        ],
      ),
    );
  }
}
