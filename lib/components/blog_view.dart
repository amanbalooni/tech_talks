import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogComponent extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const BlogComponent({super.key,
    required this.imageUrl,
    required this.title,
    required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            )
          ),
          SizedBox(height: 10,),
          Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Text(
                description,
                style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  color: Colors.black45,
                ),
              )
          )
        ],
      ),
    );
  }
}
