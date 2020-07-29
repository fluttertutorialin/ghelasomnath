import 'package:ghelasomnath/store/history_store.dart';
import 'package:ghelasomnath/ui/page/history_page.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HistoryModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => HistoryStore(i.get()))];

  @override
  List<Router> get routers => [
        Router(historyRoute, child: (_, args) => HistoryPage()),
      ];
}
