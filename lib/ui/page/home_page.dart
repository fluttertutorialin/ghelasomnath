import 'dart:io';
import 'dart:typed_data';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ghelasomnath/store/temple_event_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:ghelasomnath/ui/widget/common_scaffold.dart';
import 'package:ghelasomnath/util/string.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends ModularState<HomePage, TempleEventStore> {
  _bodyData() => Observer(builder: (_) {
        if (controller.liveEventList.hasError) {
          return Center(child: Text('Data not found'));
        }

        if (controller.liveEventList.value == null) {
          return Center(child: CircularProgressIndicator());
        }

        var templeEvent = controller.liveEventList.value;

        if (templeEvent.isEmpty) {
          return Center(child: Text('Data not found'));
        }

        return Column(children: <Widget>[
          Text(titleTodayDarsan,
              style: TextStyle(fontSize: 18, color: Colors.blue)),
          ListView.builder(
              shrinkWrap: true,
              itemCount: templeEvent.length,
              itemBuilder: (BuildContext context, int position) {
                return InkWell(
                    onTap: () {},
                    child: Container(
                        margin: EdgeInsets.only(bottom: 0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                                height: 230,
                                child: Stack(children: <Widget>[
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0)),
                                          image: DecorationImage(
                                              colorFilter: ColorFilter.mode(
                                                  Colors.black.withOpacity(0.9),
                                                  BlendMode.dstATop),
                                              image: NetworkImage(
                                                  templeEvent[position].shortImage),
                                              fit: BoxFit.fill))),
                                  Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0)),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomRight,
                                              end: Alignment.topRight,
                                              stops: [
                                                0.0,
                                                1
                                              ],
                                              colors: [
                                                Colors.black,
                                                Colors.black.withOpacity(0.0)
                                              ]))),
                                  Positioned(
                                      bottom: 0.0,
                                      child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          padding: const EdgeInsets.all(5.0),
                                          child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                        templeEvent[position]
                                                            .description, //document.documentID
                                                        maxLines: 5,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.white)),
                                                    Text(
                                                        visitType(templeEvent[
                                                                position]
                                                            .visitType),
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white))
                                                  ])))),
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                          margin: EdgeInsets.all(5),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                SizedBox(width: 10),
                                                GestureDetector(
                                                    onTap: () async {
                                                      var request = await HttpClient().getUrl(Uri.parse( templeEvent[position].shortImage));
                                                      var response = await request.close();
                                                      Uint8List bytes = await consolidateHttpClientResponseBytes(response);
                                                      await Share.file(templeEvent[position].description, 'amlog.jpg', bytes, 'image/jpg');
                                                    },
                                                    child: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.white,
                                                        child: Icon(
                                                            FeatherIcons.share2,
                                                            size: 20,
                                                            color:
                                                                Colors.blue)))
                                              ])))
                                ])))));
              })
        ]);
      });

  visitType(String visitType) {
    if (visitType == morningSelect) {
      return morningVisit;
    }
    if (visitType == afterSelect) {
      return afterNoonVisit;
    }
    if (visitType == nightSelect) {
      return nightVisit;
    }
  }

  @override
  Widget build(BuildContext context) => _scaffold();

  _scaffold() => CommonScaffold(
      appTitle: appName,
      bodyData: _bodyData(),
      showActionBar: true,
      showDrawer: true);
}
