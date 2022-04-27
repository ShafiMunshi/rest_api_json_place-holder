import 'package:flutter/material.dart';
import 'package:rest_api_json_/helpers/user_helper.dart';

import '../models/user_model.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<User>? userss;
  getUser() async {
    userss = await UserHelper().getUser();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getUser();
    return Scaffold(
      appBar: AppBar(
        title: Text('Album'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: userss!.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
              title: Column(
                children: [
                  Text('Id:  '+ userss![index].id.toString()),
                  Text('Name:  '+ userss![index].name.toString()),
                  Text('UserName:  '+ userss![index].username.toString()),
                  Text('email:  '+ userss![index].email.toString()),
                  Text('Adress:  '+ userss![index].address.toString()),
                  Text('street:  '+ userss![index].address!.street.toString()),
                  Text('suite:  '+ userss![index].address!.suite.toString()),
                  Text('City:  '+ userss![index].address!.city.toString()),
                  Text('zip:  '+ userss![index].address!.zipcode.toString()),
                  Text('Geo:  '+ userss![index].address!.geo.toString()),
                  Text('lat:  '+ userss![index].address!.geo!.lat.toString()),
                  Text('lng:  '+ userss![index].address!.geo!.lng.toString()),
                  Text('Phone:  '+ userss![index].phone.toString()),
                  Text('Website:  '+ userss![index].website.toString()),
                  Text('Company:  '+ userss![index].company.toString()),
             
                ],
                
              ),
              ),
            );
          },
        ),
      ),
    );
  }
}
