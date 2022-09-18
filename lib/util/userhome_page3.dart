import 'package:flutter/material.dart';
import 'package:tik_tok_flutter_application/util/post_template.dart';

class MyPost3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'createdbykoko',
      videoDescription: 'tiktok ui tutorial',
      numberOfLikes: '1.2M',
      numberOfComments: '1232',
      numberOfShares: '122',
      userPost: Container(
        color: Color.fromARGB(255, 3, 26, 110),
      ),
    );
  }
}
