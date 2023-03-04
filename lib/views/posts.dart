import 'package:flutter/material.dart';

import '../services/remote_services.dart';
import 'package:expense_app/utility/title.dart';

class Posts extends TitleWidget {
  const Posts({super.key}) : super(title: "Post Page");

  @override
  Widget build(BuildContext context) {
    return const PostPage();
  }
}

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List<PostPage>? posts;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    //API data
    getPostData();
  }

  getPostData() async {
    posts = await RemoteService().getPost();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Visibility(
      visible: isLoaded,
      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
      child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(8),
              child: const Text("hey guy"),
            );
          }),
    ));
  }
}
