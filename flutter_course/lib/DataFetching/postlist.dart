import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_course/DataFetching/post.dart';
import 'package:flutter_course/DataFetching/postDetail.dart';
import 'package:http/http.dart' as http;

class PostList extends StatefulWidget {
  const PostList({super.key});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  List<Post> posts = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Data From Internet API'),
        actions: [
          IconButton(
            onPressed: () {
              getPosts();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : posts.isEmpty
              ? const Center(
                  child: Text('No posts available.'),
                )
              : ListView.separated(
                  itemCount: posts.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(post.imageUrl),
                        ),
                        title: Text(post.title),
                        subtitle: Text(post.content,
                            maxLines: 2, overflow: TextOverflow.ellipsis),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PostDetail(postId: post.id),
                            ),
                          );
                        });
                  },
                ),
    );
  }

  Future<void> getPosts() async {
    try {
      final result =
          await http.get(Uri.parse('https://jsonplaceholder.org/posts'));
      // print(result.statusCode);
      // print(result.body);
      final data = jsonDecode(result.body) as List;
      // print(data);

      final posts =
          data.map((e) => Post.fromMap(e as Map<String, dynamic>)).toList();

      setState(() {
        this.posts = posts;
        isLoading = false;
      });
    } catch (e) {
      print('Error fetching posts: $e');
      setState(() {
        isLoading = false;
      });
    }
  }
}
