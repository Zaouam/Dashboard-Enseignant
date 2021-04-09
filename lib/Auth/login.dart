import 'package:flutter/material.dart';
import 'package:dashboard_enseignant/Auth/registre.dart';
import 'package:dashboard_enseignant/NavBar/tabbar_animation.dart';
import 'package:dashboard_enseignant/Statisticspages/Statistics.dart';

class SignIn extends StatefulWidget {
  @override
  _SignIn createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isHidden = false;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  String fullName = '';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xffA1FFFF),
        body: Center(
            child: Container(
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      Container(
                        child: Image.asset('assets/images/logo.png'),
                      ),
                      Container(
                          padding: EdgeInsets.only(
                            top: 80.0,
                          ),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _nameController,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffFF8D74), width: 3.0),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  labelText: 'Email ',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Color(0xffFF8D74),
                                  ),
                                ),
                                onChanged: (text) {
                                  setState(() {
                                    fullName = text;
                                  });
                                },
                              ),
                              SizedBox(height: 10.0),
                              TextField(
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffFF8D74), width: 3.0),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                    onPressed: _toggleVisibility,
                                    icon: _isHidden
                                        ? Icon(
                                            Icons.visibility_off,
                                            color: Color(0xffFF8D74),
                                          )
                                        : Icon(
                                            Icons.visibility,
                                            color: Color(0xffFF8D74),
                                          ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color(0xffFF8D74),
                                  ),
                                ),
                                obscureText: _isHidden,
                              ),
                              Container(
                                alignment: Alignment(1.0, 0.0),
                                padding: EdgeInsets.only(top: 15.0, left: 20.0),
                                child: InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Piechart()),
                                  ),
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                        color: Colors.tealAccent[400],
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Container(
                                height: 40.0,
                                child: Material(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Color(0xffFF8D74),
                                  elevation: 1.0,
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BottomNavBar()),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'تسجيل الدخول',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                            ],
                          )),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'New to Account ?',
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                          SizedBox(width: 5.0),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()),
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.tealAccent[400],
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      )
                    ],
                  ))
            ])))));
  }
}
