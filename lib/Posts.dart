import 'package:flutter/material.dart';

import 'package:projet1/Category.dart';
import 'package:projet1/Post.dart';
import 'package:projet1/widgets/TimeDate.dart';

//import 'Login.dart';
class Service {
  final String name_service;
  Service({required this.name_service});
}

class CategoryDetails {
  final int id_category;
  final String categoryService;
  CategoryDetails({
    required this.id_category,
    required this.categoryService,
  });
}

class PostDetails {
  final int id_service;
  final String title, description;
  DateTime now = DateTime.now();

  PostDetails({
    required this.title,
    required this.id_service,
    required this.description,
  });
}

// ignore: must_be_immutable
class Posts extends StatelessWidget {
  //const Posts({super.key});
  List<Service> service = [];
  List<CategoryDetails> categories = [
    CategoryDetails(id_category: 1, categoryService: "ARTjdkj kdjdksdks"),
    CategoryDetails(id_category: 2, categoryService: "Sewing"),
    CategoryDetails(id_category: 3, categoryService: "Carpentry"),
    CategoryDetails(id_category: 4, categoryService: "ART"),
    CategoryDetails(id_category: 5, categoryService: "Sewing"),
    CategoryDetails(id_category: 6, categoryService: "Carpentry"),
    CategoryDetails(id_category: 7, categoryService: "ART"),
    CategoryDetails(id_category: 8, categoryService: "Sewing"),
    CategoryDetails(id_category: 9, categoryService: "Carpentry"),
    CategoryDetails(id_category: 10, categoryService: "ART"),
    CategoryDetails(id_category: 11, categoryService: "Sewing"),
    CategoryDetails(id_category: 12, categoryService: "Building"),
  ];
  List<PostDetails> posts = [
    PostDetails(
      id_service: 1,
      title: 'ART',
      description:
          'Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
    ),
    PostDetails(
      id_service: 1,
      title: 'FASHION',
      description:
          ' Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
    ),
    PostDetails(
      id_service: 1,
      title: 'SPORT',
      description:
          'XXXXXXXXX day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
    ),
    PostDetails(
      id_service: 1,
      title: 'SPORT',
      description:
          'Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
    ),
    PostDetails(
      id_service: 1,
      title: 'ART',
      description:
          ' Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
    ),
    PostDetails(
      id_service: 1,
      title: 'BEAUTY',
      description:
          'XXXXXXXXX day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EBD2),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                Color(0xFF7DBD72),
                Color(0xFFF1B602),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/user.png'),
            ),
            SizedBox(
              width: 16.0,
            ),
            Text(
              'Profile',
              style: TextStyle(
                color: Color(0xFFF4EBD2),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: 30.0,
              color: Color(0xFFF4EBD2),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              size: 30.0,
              color: Color(0xFFF4EBD2),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF7DBD72),
                    Color(0xFFF1B602),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Icon(
                Icons.add,
                size: 45,
                color: Color(0xFFF4EBD2),
              )),
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          elevation: 5,
          highlightElevation: 10,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 8.0,
          right: 8.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromARGB(255, 237, 222, 174)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      Icons.search,
                      size: 30.0,
                      color: Color.fromARGB(255, 237, 186, 47),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Color.fromARGB(255, 237, 186, 47),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      /* decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[300],
                        ),*/
                      height: 120.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            buildCategory(categories[index]),
                        separatorBuilder: (context, index) => SizedBox(
                            // width: 5.0,
                            ),
                        itemCount: categories.length,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        //scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) =>
                            buildPost(posts[index]),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 2.0,
                            ),
                        itemCount: posts.length),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory(CategoryDetails category) => Row(children: [
        Category(
          categoryService: '${category.categoryService}',
          colorText: Color(0xFF7DBD72),
          colorShadow: Colors.blue[200],
        ),
        SizedBox(
          width: 10.0,
        )
      ]);
  Widget buildPost(PostDetails post) => Column(children: [
        SizedBox(
          height: 10.0,
        ),
        Post(
          /* onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },*/
          title: '${post.title}',
          text: '${post.description}',
          colorText: Colors.green,
          colorback: Color.fromARGB(255, 224, 134, 127),
          fontSize: 20.0,
        )
      ]);
}
