import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:rest_api_json_/helpers/photo_helper.dart';
import 'package:rest_api_json_/models/photo_model.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  List<Photo>? photoss;
  getPhoto() async {
    photoss = await PhotoHelper().getPhoto();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getPhoto();
    return Scaffold(
      appBar: AppBar(
        title: Text('Album'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: photoss!.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Image.network(photoss![index].thumbnailUrl),
                // leading: Text(commentss![index].id.toString()),
                title: Text(photoss![index].id.toString()),
                subtitle: Text(photoss![index].title),
              ),
            );
          },
        ),
      ),
    );
  }
}
