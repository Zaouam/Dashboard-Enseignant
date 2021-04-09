import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dashboard_enseignant/Home/ui/homepage/home_page.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final TextEditingController _nameController = TextEditingController();
  int pageIndex = 0;
  String fullName = '';
  String valueChoose;
  List listItem = [
    "مدرسة حي الأمل",
    "مدرسة ابن خلدون",
    "مدرسة المنارة",
  ];
  // final HomePage _piechart = HomePage();

  Widget _showPage = new HomePage();

  /*Widget _pagechooser(int page) {
    switch (page) {
      case 0:
        return _piechart;
        break;

      default:
        return new Container(
          child: new Center(
            child: new Text(
              "no other page",
              style: new TextStyle(fontSize: 30),
            ),
          ),
        );
    }
  }*/

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(
            Icons.add,
            color: Colors.white,
          ),
        ],
        color: Color(0xffb13e55),
        height: 50,
        buttonBackgroundColor: Color(0xffb13e55),
        backgroundColor: Colors.white,
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _showAddNoteDialog(context);
          });
        },
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: _showPage,
        ),
      ),
    );
  }

  _showAddNoteDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
              child: Text("إضافة تلميذ"),
            ),
            content: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent, width: 3.0),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        labelText: 'إسم و لقب التلميذ',
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

                    Container(
                        width: 300,
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: DropdownButton(
                          hint: Text('مدرسة'),
                          icon: Icon(Icons.arrow_drop_down,
                              color: Colors.greenAccent),
                          value: valueChoose,
                          underline: SizedBox(),
                          isExpanded: true,
                          iconSize: 40,
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose = newValue;
                            });
                          },
                          items: listItem.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
                        )),

                    // TextFormField(
                    //   controller: _ecoleController,
                    //   decoration: InputDecoration(
                    //     enabledBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(24),
                    //     ),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderSide:
                    //           BorderSide(color: Colors.greenAccent, width: 3.0),
                    //       borderRadius: BorderRadius.circular(24),
                    //     ),
                    //     labelText: 'المدرسة ',
                    //     prefixIcon: Icon(
                    //       Icons.home,
                    //       color: Colors.greenAccent,
                    //     ),
                    //   ),
                    //   onChanged: (text) {
                    //     setState(() {
                    //       fullName = text;
                    //     });
                    //   },
                    // ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(24),
                        color: Color(0xff3DE887),
                        elevation: 1.0,
                        child: InkWell(
                          // onTap: () => Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => BottomNavBar()),
                          // ),
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
                          // onTap: () => Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => BottomNavBar()),
                          // ),
                          onTap: () => Navigator.pop(context),
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
