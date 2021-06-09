import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(
      service: LoginServiceImpl(),
    );
    autorun((_) {
      if (controller.state is LoginStateSuccess) {
        final user = (controller.state as LoginStateSuccess).user;
        Navigator.pushReplacementNamed(context, "/home", arguments: user);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 238,
                  child: Text(
                    "Divida \nsuas contas com seus amigos",
                    style: AppTheme.textStyles.title,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 110),
                child: ListTile(
                  leading: Image.asset("assets/images/emoji.png"),
                  minLeadingWidth: 50,
                  title: Text(
                    "Faça seu login com uma das contas abaixo",
                    textAlign: TextAlign.left,
                    style: AppTheme.textStyles.button,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Observer(builder: (context) {
                if (controller.state is LoginStateLoading)
                  return CircularProgressIndicator();
                else if (controller.state is LoginStateFailure)
                  return Text((controller.state as LoginStateFailure).message);
                else
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: SocialButtonWidget(
                      imagePath: "assets/images/google_icon.png",
                      label: "Entrar com Google",
                      onTap: () {
                        controller.googleSignIn();
                      },
                    ),
                  );
              }),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: SocialButtonWidget(
                  imagePath: "assets/images/apple_icon.png",
                  label: "Entrar com Apple",
                  onTap: () async {
                    try {
                      final credential =
                          await SignInWithApple.getAppleIDCredential(
                        scopes: [
                          AppleIDAuthorizationScopes.email,
                          AppleIDAuthorizationScopes.fullName,
                        ],
                      );
                      print(credential);
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
