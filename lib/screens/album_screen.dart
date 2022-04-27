import 'package:flutter/material.dart';
import 'package:rest_api_json_/helpers/album_helper.dart';
import 'package:rest_api_json_/models/album_model.dart';

class AlbumScreen extends StatefulWidget {
  AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  List<Album>? albumss;

  getAlbum() async {
    albumss = await AlbumHelper().getAlbum();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getAlbum();
    return Scaffold(
      appBar: AppBar(
        title: Text('Album'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: albumss!.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                // leading: Text(commentss![index].id.toString()),
                title: Text(albumss![index].id.toString()),
                subtitle: Text(albumss![index].title),
              ),
            );
          },
        ),
      ),
    );
  }
}
