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
      child: Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/green_dollar.png",
              height: 48,
              width: 48,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A receber",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "R\$124,00",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
