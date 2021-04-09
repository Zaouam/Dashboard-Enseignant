import 'package:flutter/material.dart';
import 'package:dashboard_enseignant/Auth/login.dart';
import 'package:dashboard_enseignant/NavBar/tabbar_animation.dart';

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ecoleController = TextEditingController();

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
                                    color: Colors.greenAccent, width: 3.0),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'Nom et Prénom ',
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.greenAccent,
                              ),
                            ),
                            onChanged: (text) {
                              setState(() {
                                fullName = text;
                              });
                            },
                          ),
                          SizedBox(height: 10.0),
                          TextFormField(
                            controller: _ecoleController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.greenAccent, width: 3.0),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'Ecole ',
                              prefixIcon: Icon(
                                Icons.home,
                                color: Colors.greenAccent,
                              ),
                            ),
                            onChanged: (text) {
                              setState(() {
                                fullName = text;
                              });
                            },
                          ),
                          SizedBox(height: 10.0),
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.greenAccent, width: 3.0),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'Email ',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.greenAccent,
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
                                    color: Colors.greenAccent, width: 3.0),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                onPressed: _toggleVisibility,
                                icon: _isHidden
                                    ? Icon(
                                        Icons.visibility_off,
                                        color: Colors.greenAccent,
                                      )
                                    : Icon(
                                        Icons.visibility,
                                        color: Colors.greenAccent,
                                      ),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.greenAccent,
                              ),
                            ),
                            obscureText: _isHidden,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: _confirmpasswordController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.greenAccent, width: 3.0),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'Confirm Password',
                              suffixIcon: IconButton(
                                onPressed: _toggleVisibility,
                                icon: _isHidden
                                    ? Icon(
                                        Icons.visibility_off,
                                        color: Colors.greenAccent,
                                      )
                                    : Icon(
                                        Icons.visibility,
                                        color: Colors.greenAccent,
                                      ),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.greenAccent,
                              ),
                            ),
                            obscureText: _isHidden,
                          ),
                          SizedBox(height: 30.0),
                          Container(
                            height: 40.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.tealAccent[400],
                              elevation: 1.0,
                              child: InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomNavBar()),
                                ),
                                child: Center(
                                  child: Text(
                                    'إنشاء حساب',
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
                        'Have account ?',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        ),
                        child: Text(
                          'Login',
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
