import 'package:ghelasomnath/store/temple_event_store.dart';
import 'package:ghelasomnath/ui/page/home_page.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TempleEventModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => TempleEventStore(i.get()))];

  @override
  List<Router> get routers => [
        Router(homeRoute, child: (_, args) => HomePage()),
      ];
}
