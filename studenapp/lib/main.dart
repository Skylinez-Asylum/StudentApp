import 'package:flutter/material.dart';
import 'package:studenapp/screen/screen_cash.dart';
import 'package:studenapp/screen/screen_delete.dart';
import 'package:studenapp/screen/screen_otp.dart';
import 'package:studenapp/screen/screen_phNo.dart';
import 'package:studenapp/screen/screen_update.dart';

void main() {
  runApp(const Condutor());
}

class Condutor extends StatelessWidget {
  const Condutor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: OtpScreen(),
    );
  }
}