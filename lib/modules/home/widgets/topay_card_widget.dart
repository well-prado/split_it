import 'package:flutter/material.dart';

class ToPayCardWidget extends StatelessWidget {
  const ToPayCardWidget({Key? key}) : super(key: key);

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
              "assets/images/red_dollar.png",
              height: 48,
              width: 48,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A pagar",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "R\$48,00",
                  style: TextStyle(
                    color: Colors.red,
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
