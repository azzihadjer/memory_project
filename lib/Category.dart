import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category(
      {this.categoryService, this.colorText, this.colorShadow, this.onTap});
  String? categoryService;
  Color? colorText, colorShadow;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 55.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
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
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.yFjUSwNjTQxM5vledxWokwAAAA?pid=ImgDet&rs=1'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.0,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  categoryService!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: colorText,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: colorShadow!,
                        blurRadius: 10.0,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
