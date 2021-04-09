import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({this.categoryId, this.name, this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

final musicCategory = Category(
  categoryId: 1,
  name: "class1",
  icon: Icons.home_filled,
);

final meetUpCategory = Category(
  categoryId: 2,
  name: "class2",
  icon: Icons.home_outlined,
);

final golfCategory = Category(
  categoryId: 3,
  name: "class3",
  icon: Icons.golf_course,
);

final birthdayCategory = Category(
  categoryId: 4,
  name: "ADD",
  icon: Icons.add,
);

final categories = [
  allCategory,
  musicCategory,
  meetUpCategory,
  golfCategory,
  birthdayCategory,
];
