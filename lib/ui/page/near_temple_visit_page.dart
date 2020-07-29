import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ghelasomnath/model/near_temple_visit_response.dart';
import 'package:ghelasomnath/store/near_temple_visit_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:ghelasomnath/ui/widget/common_scaffold.dart';
import 'package:ghelasomnath/util/string.dart';

class NearTempleVisitPage extends StatefulWidget {
  @override
  createState() => _NearTempleVisitState();
}

class _NearTempleVisitState extends ModularState<NearTempleVisitPage, NearTempleVisitStore> {

  _bodyData() => Observer(builder: (_) {
        if (controller.nearTempleVisitList.hasError) {
          return Center(child: Text('Data not found'));
        }

        if (controller.nearTempleVisitList.value == null) {
          return Center(child: CircularProgressIndicator());
        }

        List<NearTempleVisitResponse> list =
            controller.nearTempleVisitList.value;

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
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                          Text(index.toString() + ') ', style: TextStyle(fontSize: 16)),
                            Text(_nearTempleVisit.name, style: TextStyle(fontSize: 16))
                        ]))
                  ]);
            });
      });

  @override
  Widget build(BuildContext context) => _scaffold();

  _scaffold() => CommonScaffold(
      appTitle: titleVisitNearTemple, bodyData: _bodyData(), showDrawer: false);
}
