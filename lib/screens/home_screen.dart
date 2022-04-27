import 'package:flutter/material.dart';
import 'package:rest_api_json_/helpers/post_helpr.dart';
import 'package:rest_api_json_/models/post_model.dart';

class PostScreen extends StatefulWidget {
  PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {


  List<Post>? posts;
  getData() async {
    posts = await PostHelper().getPost();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getData();
    print(posts!.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('Rest API'),
        centerTitle: true,
      ),

      // body: Center(),
      body: Container(
        child: ListView.builder(
          itemCount: posts!.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Text(posts![index].id.toString()),
                title: Text(posts![index].title),
                subtitle: Text(posts![index].body),
              ),
            );
          },
        ),
      ),
    );
  }
}
