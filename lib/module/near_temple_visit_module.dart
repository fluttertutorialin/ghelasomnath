import 'package:ghelasomnath/store/near_temple_visit_store.dart';
import 'package:ghelasomnath/ui/page/near_temple_visit_page.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NearTempleVisitModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => NearTempleVisitStore(i.get()))];

  @override
  List<Router> get routers => [
        Router(nearTempleVisitRoute, child: (_, args) => NearTempleVisitPage()),
      ];
}
