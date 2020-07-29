import 'package:ghelasomnath/store/all_darsan_store.dart';
import 'package:ghelasomnath/ui/page/all_darsan_page.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AllDarsanModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => AllDarsanStore(i.get()))];

  @override
  List<Router> get routers => [
        Router(allDarsanRoute, child: (_, args) => AllDarsanPage()),
      ];
}
