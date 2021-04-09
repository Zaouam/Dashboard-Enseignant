import 'package:flutter/material.dart';
import 'package:dashboard_enseignant/styleguide.dart';
import 'home_page_background.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _ecoleController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HomePageBackground(
            screenHeight: MediaQuery.of(context).size.height,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "DASHBOARD",
                          style: fadedTextStyle,
                        ),
                        Spacer(),
                        IconButton(
                            icon: Icon(
                              Icons.person_outline,
                              color: Color(0x99FFFFFF),
                              size: 30,
                            ),
                            onPressed: () {
                              _showClassDialog(context);
                            }

                            /* return showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) => SingleChildScrollView(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    child: BottomSheetExample(),
                                  ),
                                ),
                              );
                           */
                            )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "Enseignant",
                      style: whiteHeadingTextStyle,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        /*
                      children: <Widget>[
                        for (final category in categories)
                          CategoryWidget(category: category)
                      ],*/
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              child: Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.blue.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              suffixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )))
        ],
      ),
    );
  }

  _showClassDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
              child: Text("إضافة قسم"),
            ),
            content: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: _ecoleController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent, width: 3.0),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        labelText: 'المدرسة ',
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
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(24),
                        color: Color(0xff3DE887),
                        elevation: 1.0,
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Center(
                            child: Text(
                              'حفظ',
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
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(24),
                        color: Color(0xffFF8D74),
                        elevation: 1.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Center(
                            child: Text(
                              'إلغاء',
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
                  ],
                ),
              ),
            ),
            // actions: [
            //   TextButton(
            //     child: Text("Yes"),
            //     onPressed: () {
            //       Navigator.of(context).pop();
            //     },
            //   ),
            // ],
          );
        },
      );
}
