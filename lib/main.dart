import 'package:flutter/material.dart';
import 'package:fuel_q/account/account_type.dart';
import 'package:fuel_q/account/my_account.dart';
import 'package:fuel_q/other/fuel_station.dart';
import 'package:fuel_q/other/fuel_status.dart';
import 'package:fuel_q/other/join_queue.dart';
import 'package:fuel_q/register/create_account.dart';
import 'package:fuel_q/signin/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CreateAccount(),
    );
  }
}

