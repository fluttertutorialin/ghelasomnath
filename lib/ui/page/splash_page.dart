import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ghelasomnath/shared/local_storage_repository_inteface.dart';
import 'package:ghelasomnath/util/string.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var prefs = Modular.get<ISharedLocalRepository>();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) => checkLogin());
  }

  checkLogin() async {
    Modular.to.pushReplacementNamed(homeRoute);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Center(child: Image.asset('assets/images/app_icon.jpg', scale: 6)));
}
