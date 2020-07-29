import 'package:ghelasomnath/store/upload_store.dart';
import 'package:ghelasomnath/ui/page/upload_page.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UploadModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => UploadStore(i.get()))];

  @override
  List<Router> get routers => [
        Router(uploadRoute, child: (_, args) => UploadPage()),
      ];
}
