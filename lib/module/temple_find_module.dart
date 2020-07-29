import 'package:ghelasomnath/store/temple_find_store.dart';
import 'package:ghelasomnath/ui/page/temple_find_page.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TempleFindModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => TempleFindStore(i.get()))];

  @override
  List<Router> get routers => [
        Router(templeFindRoute, child: (_, args) => TempleFindPage()),
      ];
}
