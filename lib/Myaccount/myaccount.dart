import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Myaccount extends StatefulWidget {
  @override
  _MyaccountState createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "حسابي",
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.only(right: 20, left: 20),
        child: Center(
            child: Column(children: [
          Container(
            child: Center(
              child: Stack(children: [
                CircleAvatar(
                  backgroundImage: _image == null ? null : FileImage(_image),
                  radius: 60,
                ),
                Positioned(
                    bottom: 0,
                    right: 10,
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: FloatingActionButton(
                        onPressed: getImage,
                        tooltip: 'Pick Image',
                        child: Icon(Icons.camera_alt),
                      ),
                    )),
              ]),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              children: [Text('Anis Zaouam'), Text('aniszaouam@gmail.com')],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Card(
            color: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.arrow_drop_down),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Languages',
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Logout',
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ])),
      ));
}
