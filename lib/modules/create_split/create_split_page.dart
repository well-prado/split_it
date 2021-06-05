import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final pages = [
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.purple,
    ),
  ];

  var index = 0;

  void nextPage() {
    if (index < 2) {
      index++;
      setState(() {});
    }
  }

  void backPage() {
    if (index > 0) {
      index--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: PreferredSize(
          child: SafeArea(
            top: true,
            bottom: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                index > 0
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: AppTheme.colors.backButton,
                          ),
                          onPressed: () {
                            backPage();
                          },
                        ),
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text.rich(TextSpan(
                    text: "${index + 1}",
                    style: AppTheme.textStyles.stepperIndicatorPrimary,
                    children: [
                      TextSpan(
                        text: " - ${pages.length}",
                        style: AppTheme.textStyles.stepperIndicatorSecondary,
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60)),
      body: pages[index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                width: 1.0, color: AppTheme.colors.border.withOpacity(0.8)),
          ),
        ),
        height: 72,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancelar",
                      style: AppTheme.textStyles.stepperNextButton,
                    ))),
            Container(
              width: 1,
              height: 72,
              color: AppTheme.colors.border.withOpacity(0.8),
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      nextPage();
                    },
                    child: Text(
                      "Continuar",
                      style: AppTheme.textStyles.stepperNextButton,
                    ))),
          ],
        ),
      ),

      // floatingActionButton: index < 2
      //     ? FloatingActionButton(
      //         onPressed: () {
      //           nextPage();
      //         },
      //         child: Icon(Icons.arrow_forward),
      //       )
      //     : Container(),
    );
  }
}
