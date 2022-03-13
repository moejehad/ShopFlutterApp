import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/login.dart';
import 'package:flutter_course/profile.dart';
import 'package:flutter_course/widgets/textfield.dart';
import 'package:string_validator/string_validator.dart';

class SignUp extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  String groupVlue;
  String account;
  String company;
  String gender = 'Gender';
  String name;
  String instagram;
  String mobile;
  String email;
  String country = 'Country';
  String city;
  String password;
  String confirm;

  List<String> Gend = ['Male', 'Female'];
  List<String> Countries = ['Palestine', 'Jordan', 'Egypt'];

  GlobalKey<FormState> formKey = GlobalKey();

  saveCompany(String value) {
    this.company = value;
  }

  saveName(String value) {
    this.name = value;
  }

  saveInstagram(String value) {
    this.instagram = value;
  }

  saveMobile(String value) {
    this.mobile = value;
  }

  saveEmail(String value) {
    this.email = value;
  }

  saveCity(String value) {
    this.city = value;
  }

  savePassword(String value) {
    this.password = value;
  }

  saveConfirm(String value) {
    this.confirm = value;
  }

  validateCompany(value) {
    if (value == null || value == "") {
      return 'Company name is required';
    }
  }

  validateAccountName(value) {
    if (value == null || value == "") {
      return 'Account name is required';
    }
  }

  validateInstagram(value) {
    if (value == null || value == "") {
      return 'Instagram Account  is required';
    }
  }

  validateMobile(value) {
    if (value == null || value == "") {
      return 'Mobile number is required';
    }
  }

  validateEmail(value) {
    if (value == null || value == "") {
      return 'Email address is required';
    } else if (!isEmail(value)) {
      return 'Check Your Email Please';
    }
  }

  validateCity(value) {
    if (value == null || value == "") {
      return 'City name is required';
    }
  }

  validatePassword(value) {
    if (value == null || value == "") {
      return 'Password is required';
    } else if (value.length < 6) {
      return 'Password should be more than 6 letters';
    } else if (this.confirm != this.password) {
      return 'Password does not match';
    }
  }

  saveform() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      Map users = {
        'Account Type': this.groupVlue,
        'Company Name': this.company,
        'Gender': this.gender,
        'Account Name': this.name,
        'Instagram': this.instagram,
        'Mobile': this.mobile,
        'Email': this.email,
        'Country': this.country,
        'City': this.city,
        'Password': this.password,
      };

      for (var user in users.keys) {
        print('$user : ${users[user]}');
      }
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
          'Sign Up',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Enter your data',
                      style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "Company",
                          groupValue: groupVlue,
                          onChanged: (value) {
                            setState(() {
                              this.groupVlue = value;
                            });
                          },
                        ),
                        Text('Company'),
                        SizedBox(
                          width: 30,
                        ),
                        Radio(
                          value: "Name",
                          groupValue: groupVlue,
                          onChanged: (value) {
                            setState(() {
                              this.groupVlue = value;
                            });
                          },
                        ),
                        Text('Name'),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: CustomTextField(
                    lable: 'Company name',
                    saveFun: saveCompany,
                    validaionFun: validateCompany,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey[100])),
                  child: DropdownButton<String>(
                    hint: Text(gender),
                    isExpanded: true,
                    underline: Container(),
                    items: Gend.map((e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        )).toList(),
                    onChanged: (value) {
                      this.gender = value;
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: CustomTextField(
                    lable: '@Account name',
                    saveFun: saveName,
                    validaionFun: validateAccountName,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: CustomTextField(
                    lable: 'Instagram Account ',
                    saveFun: saveInstagram,
                    validaionFun: validateInstagram,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: CustomTextField(
                    lable: 'Mobile',
                    saveFun: saveMobile,
                    validaionFun: validateMobile,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: CustomTextField(
                    lable: 'Email',
                    saveFun: saveEmail,
                    validaionFun: validateEmail,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey[100])),
                  child: DropdownButton<String>(
                    hint: Text(country),
                    isExpanded: true,
                    underline: Container(),
                    items: Countries.map((e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        )).toList(),
                    onChanged: (value) {
                      this.country = value;
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: CustomTextField(
                    lable: 'City',
                    saveFun: saveCity,
                    validaionFun: validateCity,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: CustomTextField(
                    lable: 'Password',
                    saveFun: savePassword,
                    validaionFun: validatePassword,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: CustomTextField(
                    lable: 'Confirm password',
                    saveFun: saveConfirm,
                    validaionFun: validatePassword,
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
                          'sign up'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      saveform();
                    },
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Text(
                            'Already have account?',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                    child: Text(
                      'skip'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
