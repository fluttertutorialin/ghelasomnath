import 'dart:io';
import 'package:ghelasomnath/shared/repository.dart';
import 'package:mobx/mobx.dart';
part 'upload_store.g.dart';

class UploadStore = _UploadStore with _$UploadStore;

abstract class _UploadStore with Store {
  final Repository _repository;

  _UploadStore(Repository repository) : this._repository = repository;

  @observable
  String path;

  @action
  void setPath(String value) => path = value;

  @observable
  String description = '';

  @action
  void setDescription(String value) => description = value;

  @observable
  int visitType = 0;

  @action
  void setVisitType(int value) => visitType = value;

  @observable
  String visitTypeText = "";

  @action
  void setVisitTypeText(String value) => visitTypeText = value;


  @observable
  File file;

  @action
  void setFile(File value) => file = value;

  @action
  Future<void> upload() async {
    _repository.upload(path, description, visitTypeText, file);
  }
}
