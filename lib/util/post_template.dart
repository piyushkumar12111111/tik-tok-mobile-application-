import 'package:flutter/material.dart';
import 'button.dart';

class PostTemplate extends StatelessWidget {
  //const PostTemplate({Key? key}) : super(key: key);

  final String username;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  PostTemplate({
    required this.username,
    required this.videoDescription,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfShares,
    required this.userPost,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userPost,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, -1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '@' + username,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: videoDescription,
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: '#fyp #flutter',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ]))
                ],
              ),
            ),
          ),

          Container(
            alignment: Alignment(1,1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(number: numberOfLikes,
                icon: Icons.favorite),

                MyButton(number: numberOfComments,
                icon: Icons.chat_bubble_outline_outlined,),
                
                MyButton(number: numberOfShares,icon:Icons.send ,)
              ],
            ),
          )


        ],
      ),
    );
  }
}
