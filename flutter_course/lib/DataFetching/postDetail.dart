import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_course/DataFetching/post.dart';
import 'package:http/http.dart' as http;

class PostDetail extends StatefulWidget {
  const PostDetail({super.key, required this.postId});

  final int postId;

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  bool isLoading = true;
  late Post post;

  @override
  void initState() {
    super.initState();
    getPostById();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Details'),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Text(post.title,
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                    post.content,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  )
                ],
              ),
            ),
    );
  }

  Future<void> getPostById() async {
    try {
      final result = await http
          .get(Uri.parse('https://jsonplaceholder.org/posts/${widget.postId}'));
      // print(result.statusCode);
      // print(result.body);
      final data = jsonDecode(result.body);
      // print(data);

      final post = Post.fromMap(data);

      setState(() {
        this.post = post;
        isLoading = false;
      });
    } catch (e) {
      print('Error fetching post: $e');
      setState(() {
        isLoading = false;
      });
    }
    
  }
}
