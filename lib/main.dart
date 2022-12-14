import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/common/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// void main() {
//   runApp(const MyApp());
// }

// main方法简写
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 去除debug标签
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      // 注册路由表
      // routes: routes,
      onGenerateRoute: onGenerateRoute,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh', 'CH'),
        Locale('en', 'US'),
      ],
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // 首页
      home: const Index(),
    );
  }
}
