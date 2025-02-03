import 'package:dhan_dhoom_web/screens/web/auth/forget_password_screen.dart';
import 'package:dhan_dhoom_web/screens/web/auth/put_pin_screen.dart';
import 'package:dhan_dhoom_web/screens/web/auth/login_screen.dart';
import 'package:dhan_dhoom_web/screens/web/auth/sign_up/sign_up_next_screen.dart';
import 'package:dhan_dhoom_web/screens/web/auth/sign_up/sign_up_screen.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/dashboard_screen.dart';
import 'package:dhan_dhoom_web/screens/web/fantacy/context/context_screen.dart';
import 'package:dhan_dhoom_web/screens/web/fantacy/fantacy_screen.dart';
import 'package:dhan_dhoom_web/screens/web/leaderboard/leader_board_screen.dart';
import 'package:dhan_dhoom_web/screens/web/my_team/my_team_screen.dart';
import 'package:dhan_dhoom_web/screens/web/settings/Settings_screen.dart';
import 'package:dhan_dhoom_web/screens/web/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
      // home: ContextScreen(),
      // home: FantacyScreen(),
      // home: DashboardScreen(),
      // home: SettingsScreen(),
      // home: WalletScreen(),
      // home: LeaderBoardScreen(),
      // home: MyTeamScreen(),
      // home: HelperDesign(),
      // home: ForgetPasswordScreen(),
      // home: SignUpScreen(),
      // home: SignUpNextScreen(),
      // home: PutPinScreen(),
    );
  }
}
