import 'package:exchange_currency/app/configs/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Exchange currency',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.light,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
