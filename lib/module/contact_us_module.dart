import 'package:ghelasomnath/store/contact_us_store.dart';
import 'package:ghelasomnath/ui/page/contact_us_page.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ContactUsModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => ContactUsStore(i.get()))];

  //static Inject get to => Inject<ContactUsModule>.of();

  @override
  List<Router> get routers => [
        Router(contactUsRoute,
            child: (context, args) => ContactUsPage(title: args.data),
            transition: TransitionType.rotate)
      ];
}
