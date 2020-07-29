import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ghelasomnath/store/upload_store.dart';
import 'package:ghelasomnath/ui/widget/common_scaffold.dart';
import 'package:ghelasomnath/util/image.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ghelasomnath/util/extensions.dart';

class UploadPage extends StatefulWidget {
  @override
  createState() => _UploadState();
}

class VisitType {
  String name;
  int index;
  VisitType({this.name, this.index});
}

class _UploadState extends ModularState<UploadPage, UploadStore> {
  var _descriptionController = TextEditingController();
  List<String> visitTypeList = [morningSelect, afterSelect, nightSelect];

  _bodyData() => Observer(builder: (_) {
        return ListView(
            physics: BouncingScrollPhysics(), children: <Widget>[uploadUI()]);
      });

  Widget _buildChips() {
    List<Widget> chips = new List();

    for (int i = 0; i < visitTypeList.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
          selected: controller.visitType == i,
          label: Text(visitTypeList[i], style: TextStyle(color: Colors.black)),
          elevation: 0,
          pressElevation: 0,
          shadowColor: Colors.teal,
          backgroundColor: Colors.grey.withOpacity(0.2),
          selectedColor: Colors.blue,
          onSelected: (bool selected) {
            controller.setVisitType(i);
          });

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 10), child: choiceChip));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: chips,
    );
  }

  uploadUI() => Column(children: <Widget>[
        SizedBox(height: 20.0),
        Container(
            margin: EdgeInsets.only(bottom: 0),
            alignment: Alignment.center,
            child: Stack(children: <Widget>[
              CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  backgroundImage: ExactAssetImage(profilePictureImage)),
              Positioned(
                  right: 0,
                  bottom: 8,
                  child: Container(
                      width: 35.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.withOpacity(0.9)),
                      child: RawMaterialButton(
                          shape: CircleBorder(),
                          onPressed: () => chooseFile(),
                          child: Icon(FeatherIcons.camera,
                              color: Colors.white, size: 20))))
            ])),
        SizedBox(height: 20.0),
        _descriptionInput(),
        SizedBox(height: 10.0),
        _buildChips(),
        SizedBox(height: 20.0),
        _uploadPress()
      ]);

  _uploadPress() => Align(alignment: Alignment.bottomCenter).customFloatForm(
      icon: Icons.navigate_next,
      isMini: false,
      qrCallback: () => controller.upload().then((value) {
            Modular.to.pop();
          }));

  chooseFile() async {
    await ImagePicker.pickImage(source: ImageSource.gallery)
        .then((image) async {
      if (image != null) {
        controller.setVisitTypeText(visitTypeList[controller.visitType]);
        controller.setPath(image.path.baseName());
        controller.setFile(image);
      }
    });
  }

  _descriptionInput() => Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      child: widget.inputField(_descriptionController,
          labelText: 'Description',
          keyboardType: TextInputType.text,
          onChanged: controller.setDescription));

  @override
  Widget build(BuildContext context) => _scaffold();

  _scaffold() => CommonScaffold(
      appTitle: titlePhotoUpload, showActionBar: true, bodyData: _bodyData());
}
