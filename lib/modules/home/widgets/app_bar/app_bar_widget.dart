import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/add_button_widget.dart';
import 'package:split_it/modules/home/widgets/bottom_app_bar_widget.dart/bottom_app_bar_widget.dart';
import 'package:split_it/theme/app_theme.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final UserModel? photoUrl;
  final VoidCallback onTapAddButton;

  AppBarWidget(
      {required this.user, this.photoUrl, required this.onTapAddButton})
      : super(
          child: Stack(
            children: [
              Container(
                height: 230,
                color: AppTheme.colors.backgroundSecondary,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 62),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(user.photoUrl!),
                      ),
                      title: Text(
                        user.name!,
                        style: AppTheme.textStyles.userName,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: AddButtonWidget(
                        onTap: onTapAddButton,
                      ),
                    ),
                  ),
                  SizedBox(height: 36),
                  BottomAppBarWidget(),
                ],
              ),
            ],
          ),
          preferredSize: Size.fromHeight(298),
        );
}
