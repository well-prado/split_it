import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/topay_card_widget.dart';
import 'package:split_it/modules/home/widgets/toreceive_card_widget.dart';
import 'package:split_it/theme/app_theme.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final UserModel? photoUrl;
  AppBarWidget({required this.user, this.photoUrl})
      : super(
          preferredSize: Size.fromHeight(250),
          child: Expanded(
            child: Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    height: 244,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.maxFinite,
                    decoration:
                        BoxDecoration(gradient: AppTheme.gradients.background),
                    child: Row(
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(user.photoUrl!),
                          ),
                        ),
                        SizedBox(width: 16),
                        //
                        Text(
                          user.name!,
                          style: AppTheme.textStyles.userName,
                        ),
                        SizedBox(width: 32),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.5)),
                              visualDensity:
                                  VisualDensity(horizontal: -4, vertical: 4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.8, 2.7),
                    child: ToReceiveCardWidget(),
                  ),
                  Align(
                    alignment: Alignment(0.8, 2.7),
                    child: ToPayCardWidget(),
                  ),
                ],
              ),
            ),
          ),
        );
}
