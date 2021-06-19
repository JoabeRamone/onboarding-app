import 'package:flutter/material.dart';
import 'package:onboarding_app/screen/home_screen.dart';
import 'package:onboarding_app/screen/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _ativo = false;
  final String _ativoVar = 'ativo';

  @override
  void initState() {
    _initAppVerificaSeEstaAtivo();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: _ativo ? HomeScreen() : OnboardingScreen(),
    );
  }

  _initAppVerificaSeEstaAtivo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final ativo = prefs.getBool(_ativoVar) ?? false;

    setState(() {
      _ativo = ativo;
    });
  }
}
