import 'package:admob_flutter/admob_flutter.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ghelasomnath/util/string.dart';
import 'common_drawer.dart';

class CommonScaffold extends StatefulWidget {
  final appTitle;
  final showAppBar;
  final Widget bodyData;
  final showDrawer;
  final Widget floatingActionButton;
  final GlobalKey appBarKey;
  final elevation;
  final Widget bottomNavigationBar;
  final VoidCallback voidCallback;
  final showActionBar;

  CommonScaffold(
      {this.appTitle = '',
      this.bodyData,
      this.showDrawer = false,
      this.appBarKey,
      this.showAppBar = true,
      this.elevation = 0.5,
      this.bottomNavigationBar,
      this.floatingActionButton,
      this.voidCallback,
      this.showActionBar = false});
  @override
  createState() => _CommonScaffoldState();
}

class _CommonScaffoldState extends State<CommonScaffold> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: widget.showAppBar
          ? AppBar(
              actions: <Widget>[
                  widget.showActionBar
                      ? Container(
                          margin: EdgeInsets.all(10),
                          child: GestureDetector(
                              child: Icon(FeatherIcons.upload),
                              onTap: () {
                                Modular.to.pushNamed(uploadRoute);
                              }))
                      : Container(),
                ],
              key: this.widget.appBarKey,
              brightness: Brightness.dark,
              iconTheme: IconThemeData(color: Colors.white),
              elevation: widget.elevation,
              title: Text(widget.appTitle,
                  style: TextStyle(fontSize: 18.0, color: Colors.white)))
          : null,
      drawer: widget.showDrawer ? CommonDrawer() : null,
      body: widget.bodyData,
      bottomNavigationBar: AdmobBanner(
        adUnitId: 'ca-app-pub-2279512980469610/6177043962',
        adSize: AdmobBannerSize.BANNER,
        listener: (AdmobAdEvent event, Map<String, dynamic> args) {},
        onBannerCreated: (AdmobBannerController controller) {},
      ));
}
