import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  _LastPageState createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppTheme.gradients.background),
      child: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 60),
                Row(
                  children: [
                    Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                        "assets/images/rectangle-right-big.png",
                        width: 240,
                        height: 128,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                        "assets/images/rectangle-right-small.png",
                        width: 154,
                        height: 84,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              "assets/images/logo.png",
              width: 168,
              height: 142,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                        "assets/images/rectangle-left-big.png",
                        width: 154,
                        height: 84,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                        "assets/images/rectangle-left-small.png",
                        width: 240,
                        height: 128,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
