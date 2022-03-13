import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  Function saveFun;
  Function validaionFun;
  Function inputType;
  String lable;

  CustomTextField(
      {this.lable, this.saveFun, this.validaionFun, this.inputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) => saveFun(value),
      validator: (value) => validaionFun(value),
      decoration: InputDecoration(
          labelText: lable,
          fillColor: Colors.grey[100],
          filled: true,
          contentPadding: EdgeInsets.all(20),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50))),
    );
  }
}
