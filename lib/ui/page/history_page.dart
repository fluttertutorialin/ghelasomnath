import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ghelasomnath/store/history_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:ghelasomnath/ui/widget/common_scaffold.dart';
import 'package:ghelasomnath/util/string.dart';

class HistoryPage extends StatefulWidget {
  @override
  createState() => _HistoryState();
}

class _HistoryState extends ModularState<HistoryPage, HistoryStore> {
  _bodyData() => Observer(builder: (_) {
        if (controller.historyList.hasError) {
          return Center(child: Text('Data not found'));
        }

        if (controller.historyList.value == null) {
          return Center(child: CircularProgressIndicator());
        }

        var historyList = controller.historyList.value;

        if (historyList.isEmpty) {
          return Center(child: Text('Data not found'));
        }

        return ListView.builder(
            itemCount: historyList.length,
            itemBuilder: (BuildContext context, int position) {
              return InkWell(
                  onTap: () {},
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(historyList[position].history, style: TextStyle(fontSize: 16))));
            });
      });

  @override
  Widget build(BuildContext context) => _scaffold();

  _scaffold() => CommonScaffold(
      appTitle: titleHistory, bodyData: _bodyData(), showDrawer: false);
}
