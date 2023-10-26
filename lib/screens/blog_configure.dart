import 'package:flutter/cupertino.dart';
import '../components/blog_view.dart';

class BlogConfigure extends StatelessWidget {
  final Map<String, dynamic> blog;
  const BlogConfigure({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        child: BlogComponent(
          title: (blog['title']),
          description: (blog['description']),
          imageUrl: (blog['image']),
          button: 'Read More',
        )
    );
  }
}
