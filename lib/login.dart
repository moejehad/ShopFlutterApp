import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/signUp.dart';
import 'package:flutter_course/widgets/textfield.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String phone = '123456';

  String password = 'moe123456';

  String Pho;

  String Pass;

  GlobalKey<FormState> formKey = GlobalKey();

  savePhone(String value) {
    this.Pho = value;
  }

  savePassword(String value) {
    this.Pass = value;
  }

  validatePhone(value) {
    if (value == null || value == "") {
      return 'Phone number is required';
    }
  }

  validatePassword(value) {
    if (value == null || value == "") {
      return 'Fill the password please';
    } else if (value.length < 3) {
      return 'very week password';
    }
  }

  validate() {
    if (this.Pho == this.phone && this.Pass == this.password) {
      Alert(
        context: context,
        type: AlertType.success,
        title: "Success",
        desc: "You Logged in successfully .",
        buttons: [
          DialogButton(
            color: Colors.green,
            child: Text(
              "Close",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    } else {
      Alert(
        context: context,
        type: AlertType.error,
        title: "Error",
        desc: "Check your phone or password please",
        buttons: [
          DialogButton(
            color: Colors.red,
            child: Text(
              "Close",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    }
  }

  saveform() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign In',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
              alignment: Alignment.bottomRight),
        ),
        padding: EdgeInsets.only(right: 30, left: 30, top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Enter your data',
                      style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: CustomTextField(
                    lable: 'Phone',
                    saveFun: savePhone,
                    validaionFun: validatePhone,
                  ),
                ),
                CustomTextField(
                  lable: 'Password',
                  saveFun: savePassword,
                  validaionFun: validatePassword,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontSize: 17,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff606060), Color(0xff131313)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        child: Text(
                          'log in'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      saveform();
                      validate();
                    },
                  ),
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Text(
                        'Don\'t have account?',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
