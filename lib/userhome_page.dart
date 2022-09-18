import 'package:flutter/material.dart';
import 'package:tik_tok_flutter_application/util/profiletab_1.dart';
import 'package:tik_tok_flutter_application/util/profiletab_2.dart';
import 'package:tik_tok_flutter_application/util/userhome_page3.dart';

class UserHomePage extends StatelessWidget {
  // const UserHomePage({Key? key}) : super(key: key);

  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
