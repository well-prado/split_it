import 'package:flutter/material.dart';
import 'package:split_it/modules/error/error_page.dart';
import 'package:split_it/modules/home/home_page.dart';
import 'package:split_it/modules/login/login_page.dart';
import 'package:split_it/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Split.it",
      home: SplashPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/error": (context) => ErrorPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}

// class AppWidget extends StatefulWidget {
//   @override
//   _AppWidgetState createState() => _AppWidgetState();
// }

// class _AppWidgetState extends State<AppWidget> {
//   bool _initialized = false;
//   bool _error = false;

//   void initializeFlutterFire() async {
//     try {
//       await Firebase.initializeApp();
//       setState(() {
//         _initialized = true;
//       });
//     } catch (e) {
//       setState(() {
//         _error = true;
//       });
//     }
//   }

//   @override
//   void initState() {
//     initializeFlutterFire();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_error) {
//       return Material(
//         child: Center(
//           child: Text("Erro na inicialização do Firebase"),
//         ),
//       );
//     }

//     if (!_initialized) {
//       return Material(
//         child: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     }
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Split.it",
//       home: LoginPage(),
//     );
//   }
// }
