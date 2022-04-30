import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admissionproject/constants.dart';
import 'package:admissionproject/controllers/MenuController.dart';
import 'package:admissionproject/screens/create-new-account.dart';
import 'package:admissionproject/screens/forgot-password.dart';
import 'package:admissionproject/screens/login-screen.dart';
import 'main/components/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return AdaptiveTheme(
      light: ThemeData.light().copyWith(
        scaffoldBackgroundColor: creamColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        canvasColor: snowColor,
      ),
      dark: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Adaptive Theme',
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
        '/': (context) => LoginScreen(),
        'MainWindow': (context) => MainScreen(),
        'ForgotPassword': (context) => ForgotPassword(),
        'CreateNewAccount': (context) => CreateNewAccount(),
        },
      ),
    );
  }
}
