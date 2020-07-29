import 'package:ghelasomnath/model/contact_response.dart';
import 'package:ghelasomnath/store/contact_us_store.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ghelasomnath/ui/widget/common_scaffold.dart';
import 'package:ghelasomnath/util/string.dart';

class ContactUsPage extends StatefulWidget {
  final String title;

  const ContactUsPage({Key key, this.title}) : super(key: key);

  @override
  createState() => _ContactUsState();
}

class _ContactUsState extends ModularState<ContactUsPage, ContactUsStore> {
  _bodyData() => Observer(builder: (context) {
        return ListView(
            children: controller.contactUsList.map((ContactResponse _contactUs) {
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        leading: Icon(FeatherIcons.info),
                        title: Text('Website'),
                        subtitle: Text(_contactUs.webSite)),
                    ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        leading: Icon(FeatherIcons.mail),
                        title: Text('Email'),
                        subtitle: Text(_contactUs.email)),
                    ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        leading: Icon(FeatherIcons.phone),
                        title: Text('Mobile'),
                        subtitle: Text(_contactUs.mobile)),
                    ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        leading: Icon(FeatherIcons.map),
                        title: Text('Address'),
                        subtitle: Text(_contactUs.address))
                  ]);
            }).toList());
      });

  @override
  Widget build(BuildContext context) => _scaffold();

  _scaffold() =>
      CommonScaffold(appTitle: widget.title, bodyData: _bodyData());
}
