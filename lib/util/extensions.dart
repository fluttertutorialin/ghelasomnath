import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'color.dart';
import 'package:path/path.dart';

extension ContextExtensions on BuildContext {
  double widthInPercent(double percent) {
    var toDouble = percent / 100;
    return MediaQuery.of(this).size.width * toDouble;
  }

  double heightInPercent(BuildContext context, double percent) {
    var toDouble = percent / 100;
    return MediaQuery.of(this).size.height * toDouble;
  }

  showProgress(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Container(
              alignment: FractionalOffset.center,
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(colorProgressBar)),
            ));
  }

  void hideProgress(BuildContext context) {
    Navigator.pop(context);
  }

  void toast(String message) {
    Flushbar(
      boxShadows: [
        BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0)
      ],
      margin: EdgeInsets.all(0),
      borderRadius: 0,
      backgroundColor: Colors.white,
      messageText: Text(message, style: TextStyle(color: Colors.red)),
      duration: Duration(seconds: 3),
    )..show(this);
  }
}

extension ValiationExtensions on String {
  baseName() {
    return extension(this);
  }

}

/*
 Text('').padding(EdgeInsets.only(bottom: (12)))
 Container(child: Text('f')).cardView(EdgeInsets.all(12), EdgeInsets.all(12)),
 Center(child: Image.asset('assets/images/.png', color: Colors.grey, height: 30)).circleAvatar();
 widget.roundCircleButton(Icons.navigate_next, false, _loginValidate);
*/

extension WidgetExtensions on Widget {
  inputField(TextEditingController textEditingController,
          {ValueChanged<String> onChanged,
          int maxLength,
          TextInputType keyboardType,
          String hintText,
          String labelText,
          bool obscureText = false,
          InkWell inkWell,
          FormFieldValidator<String> validation}) =>
      TextFormField(
          controller: textEditingController,
          obscureText: obscureText,
          keyboardType: keyboardType,
          maxLength: maxLength,
          onChanged: onChanged,
          maxLines: 3,
          decoration: InputDecoration(
              hintText: hintText,
              counterText: '',
              labelText: labelText,
              suffix: inkWell),
          validator: validation);

  padding(EdgeInsets edgeInsets) => Padding(padding: edgeInsets, child: this);

  cardView(EdgeInsets margin, EdgeInsets padding) => Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0, // has the effect of softening the shadow
                spreadRadius: 0.5, // has the effect of extending the shadow
                offset: Offset(
                    0, // horizontal, move right 10
                    0 // vertical, move down 10
                    ))
          ]),
      child: this,
      margin: margin,
      padding: padding);

  marginVisible({EdgeInsets edgeInsets, bool isVisible = true}) => Visibility(
      visible: isVisible,
      child: Container(
          margin: (edgeInsets == null) ? EdgeInsets.all(0) : edgeInsets,
          child: this));

  circleAvatar({double radius, Color color}) =>
      CircleAvatar(radius: radius, backgroundColor: color, child: this);

  roundCircleButton(
          IconData iconData, bool isMini, VoidCallback voidCallback) =>
      FloatingActionButton(
          elevation: 1,
          clipBehavior: Clip.antiAlias,
          mini: isMini,
          onPressed: voidCallback,
          child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: gradientsButton)),
              child: Stack(fit: StackFit.expand, children: <Widget>[
                Icon(iconData, size: 30, color: Colors.black)
              ])));

  customFloatForm(
          {IconData icon,
          VoidCallback qrCallback,
          bool isProgress = false,
          bool isMini = false}) =>
      FloatingActionButton(
          elevation: 1,
          clipBehavior: Clip.antiAlias,
          mini: isMini,
          onPressed: qrCallback,
          child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: gradientsButton)),
              child: Stack(fit: StackFit.expand, children: <Widget>[
                Icon(icon, size: 30, color: Colors.blue),
                isProgress
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      )
                    : Offstage(),
              ])));
}
