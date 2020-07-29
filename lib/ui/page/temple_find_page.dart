import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ghelasomnath/model/near_temple_visit_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:ghelasomnath/store/temple_find_store.dart';
import 'package:ghelasomnath/ui/widget/common_scaffold.dart';
import 'package:ghelasomnath/util/string.dart';

class TempleFindPage extends StatefulWidget {
  @override
  createState() => _TempleFindState();
}

class _TempleFindState extends ModularState<TempleFindPage, TempleFindStore> {
  _bodyData() => Observer(builder: (_) {
        if (controller.templeFindList.hasError) {
          return Center(child: Text('Data not found'));
        }

        if (controller.templeFindList.value == null) {
          return Center(child: CircularProgressIndicator());
        }

        List<NearTempleVisitResponse> list = controller.templeFindList.value;

        if (list.isEmpty) {
          return Center(child: Text('Data not found'));
        }

        return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, index) {
              NearTempleVisitResponse _nearTempleVisit = list[index];
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(7),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Text(_nearTempleVisit.name,
                              style: TextStyle(fontSize: 16, color: Colors.blue)),
                          Text(_nearTempleVisit.address,
                              style: TextStyle(fontSize: 14))
                        ])),
                    Divider()
                  ]);
            });
      });

  @override
  Widget build(BuildContext context) => _scaffold();

  _scaffold() => CommonScaffold(
      appTitle: titleHowToReach, bodyData: _bodyData(), showDrawer: false);
}
