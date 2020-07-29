import 'package:ghelasomnath/util/image.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CommonDrawer extends StatefulWidget {
  @override
  CommonDrawerState createState() => CommonDrawerState();
}

class CommonDrawerState extends State<CommonDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Material(
          child: Stack(children: <Widget>[
        Container(
            width: 280,
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white70),
                  accountName: Row(children: <Widget>[
                    Text(appName,
                        style: TextStyle(fontSize: 18.0, color: Colors.black))
                  ]),
                  currentAccountPicture: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      backgroundImage: ExactAssetImage(profilePictureImage))),
              CustomListView(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Modular.to.pushNamed(allDarsanRoute);
                  },
                  name: drawerHome,
                  leading: Icon(FeatherIcons.image, color: Colors.blue)),
              CustomListView(
                  onPressed: () {
                    Modular.to.pop();
                    Modular.to.pushNamed(historyRoute);
                  },
                  name: drawerHistory,
                  leading: Icon(FeatherIcons.info, color: Colors.brown)),
              CustomListView(
                  onPressed: () {
                    Modular.to.pop();
                    Modular.to.pushNamed(nearTempleVisitRoute);
                  },
                  name: drawerVisitNearTemple,
                  leading: Icon(FeatherIcons.mapPin, color: Colors.green)),
              CustomListView(
                  onPressed: () {
                    Modular.to.pop();
                    Modular.to.pushNamed(templeFindRoute);
                  },
                  name: drawerHowToReach,
                  leading: Icon(FeatherIcons.map, color: Colors.orange)),
              CustomListView(
                  onPressed: () {
                    Modular.to.pop();
                    Modular.to.pushNamed(contactUsRoute, arguments: contactUsRoute);

                    /*Navigator.pushNamed(
                      context,
                      contactUsRoute,
                      arguments: titleContactUs,
                    );*/
                  },
                  name: drawerContactUs,
                  leading: Icon(FeatherIcons.phone, color: Colors.brown)),
              Divider(color: Colors.grey)
            ]))
      ]));
}

class CustomListView extends StatelessWidget {
  CustomListView(
      {@required this.onPressed, @required this.name, @required this.leading});

  final GestureTapCallback onPressed;
  final String name;
  final Widget leading;

  @override
  Widget build(BuildContext context) => ListTile(
      title: Text(name,
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w300,
              fontSize: 16.0)),
      leading: leading,
      onTap: onPressed);
}
