import 'package:flutter/material.dart';
import 'package:projet1/widgets/TimeDate.dart';

// ignore: must_be_immutable
class PostDetails {
  final int id_service;
  final String description;

  PostDetails({
    required this.id_service,
    required this.description,
  });
}

// ignore: must_be_immutable
class Post extends StatelessWidget {
  DateTime date = DateTime.now();
  /*List<PostDetails> posts = [
    PostDetails(
        id_service: 1, 
       description: 'Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '03:10 pm'),
       PostDetails(
        id_service: 1, 
       description: ' Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '10:10 am'),
       PostDetails(
        id_service: 1, 
       description: 'XXXXXXXXX day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '17:06 pm'),
        PostDetails(
        id_service: 1, 
       description: 'Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '03:10 pm'),
       PostDetails(
        id_service: 1, 
       description: ' Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '10:10 am'),
       PostDetails(
        id_service: 1, 
       description: 'XXXXXXXXX day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '17:06 pm'),
  ];*/
  Post(
      {this.title,
      this.text,
      this.colorText,
      this.colorback,
      this.fontSize,
      this.onTap});
  String? title, text;

  double? fontSize;
  Color? colorText, colorback;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                if (colorback != null)
                  CircleAvatar(
                    radius: 80.0,
                    backgroundColor: colorback!,
                    backgroundImage: AssetImage('images/post.jpg'),
                  ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          if (title != null &&
                              fontSize != null &&
                              colorText != null)
                            Text(
                              title!,
                              style: TextStyle(
                                fontSize: fontSize!,
                                color: colorText!,
                                fontWeight: FontWeight.w800,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          /*  if (colorText != null)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              child: Container(
                                width: 7.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                  color: colorText!,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),*/

                          Text(
                            '02:00',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              text!,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          /*  if (colorText != null)
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              child: Container(
                                width: 7.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                  color: colorText!,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                           Text('02:00 pm'),*/
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
