import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mellow_flutter_app/model/Post.dart';

class FeedsPage extends StatefulWidget{

  @override
  FeedsDataState createState() => FeedsDataState();

}

class FeedsDataState extends State<FeedsPage>{
  List list = List();
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchPost();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: isLoading ? Center(
          child: CircularProgressIndicator(),)
            : ListView.builder(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
            itemCount: list==null || list.isEmpty ? 0 : 10,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: EdgeInsets.fromLTRB(8, 0, 8, 10),
                child: ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  isThreeLine: true,
                  title:  new Text("User: "+list[index].id.toString()),
                  subtitle:  new Text(list[index].title),
                  trailing: new Image.network(list[index].thumbnailUrl,
                    fit: BoxFit.fill,
                    height: 60.0,
                    width: 80.0,),
                )
              );
            })
    );
  }

  _fetchPost() async {
    setState(() {
      isLoading = true;
    });

    final response = await http.get('https://jsonplaceholder.typicode.com/photos'); // https://jsonplaceholder.typicode.com/photos //https://jsonplaceholder.typicode.com/posts/1

    if (response.statusCode == 200) {
      list = (json.decode(response.body) as List).map((data) => new Post.fromJson(data)).toList();
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load post');
    }
  }

}
