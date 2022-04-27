import 'package:flutter/material.dart';
import 'package:rest_api_json_/helpers/comment_helper.dart';
import 'package:rest_api_json_/models/comment_model.dart';

class CommentScreen extends StatefulWidget {
  CommentScreen({Key? key}) : super(key: key);

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  List<Comment>? commentss;

  getCommentee() async {
    commentss = await CommentHelper().getComment();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getCommentee();
    print(commentss!.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: commentss!.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                // leading: Text(commentss![index].id.toString()),
                title: Text(commentss![index].email),
                subtitle: Text(commentss![index].body),
              ),
            );
          },
        ),
      ),
      
    );
  }
}
