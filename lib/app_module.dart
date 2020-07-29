import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:ghelasomnath/app_widget.dart';
import 'package:ghelasomnath/module/all_darsan_module.dart';
import 'package:ghelasomnath/module/contact_us_module.dart';
import 'package:ghelasomnath/module/history_module.dart';
import 'package:ghelasomnath/module/near_temple_visit_module.dart';
import 'package:ghelasomnath/module/temple_event_module.dart';
import 'package:ghelasomnath/module/temple_find_module.dart';
import 'package:ghelasomnath/module/upload_module.dart';
import 'package:ghelasomnath/shared/api_service_interface.dart';
import 'package:ghelasomnath/shared/local_storage_repository_inteface.dart';
import 'package:ghelasomnath/shared/repository.dart';
import 'package:ghelasomnath/store/local_store.dart';
import 'package:ghelasomnath/ui/page/splash_page.dart';
import 'package:ghelasomnath/util/string.dart';

import 'shared/local_storage_repository.dart';

class AppModule extends MainModule {

  @override
  List<Bind> get binds => [
        Bind<IAPIService>(
            (i) => Repository(i.get<Firestore>(), i.get<FirebaseAuth>())),
        Bind<ISharedLocalRepository>((i) => SharedRepository()),
        Bind((i) => Firestore.instance),
        Bind((i) => FirebaseAuth.instance),
        Bind((i) => LocalStore()),
      ];

  @override
  List<Router> get routers => [
        Router(firstLaunchRoute, child: (_, args) => SplashPage()),
        Router(homeRoute, module: TempleEventModule()),
        Router(historyRoute, module: HistoryModule()),
        Router(contactUsRoute, module: ContactUsModule()),
        Router(allDarsanRoute, module: AllDarsanModule()),
        Router(nearTempleVisitRoute, module: NearTempleVisitModule()),
        Router(templeFindRoute, module: TempleFindModule()),
        Router(uploadRoute, module: UploadModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
