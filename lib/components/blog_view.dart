import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BlogComponent extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String button;

  const BlogComponent(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.button});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black45,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Row(
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff359cdd),
                    ),
                    child: Text(
                      button,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  child: const Row(
                    children: [
                      Icon(Icons.send, size: 18,),
                      SizedBox(width: 15,),
                      Icon(Icons.bookmark_border_outlined, size: 18,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
