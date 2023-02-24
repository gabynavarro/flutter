import 'dart:convert' as convert;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_api/domain/MyPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  late Future<List<MyPage>> _ListPags;

  Future<List<MyPage>> _getPage() async {
    //lista de myPages
    List<MyPage> myPages = [];
    //conecion
    var url = Uri.https(
        'barmanwebsite.herokuapp.com', '/api/v1/page/all', {'q': '{http}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print("Conección establecida!");

      String body =
          utf8.decode(response.bodyBytes); //para normalizar ñ o acentos
      //convierte la info en json
      var jsonResponse = convert.jsonDecode(body); //tambien como response.body
      //catidad de registros
      var itemCount = jsonResponse.length.toString();
      print(jsonResponse[0]["pageTitle"]); //titulo del objeto con indice 0
      print('Numeros de Pages TAGs: $itemCount.');
      for (var element in jsonResponse) {
        myPages.add(MyPage(element["pageId"], element["pageTitle"],
            element["pageDescription"]));
      }

      //print(response.body);
    } else {
      print('Response failed with status: ${response.statusCode}.');
      throw Exception("Ocurrio un error al conectar con el back");
    }
    return myPages;
  }

  /* 
    Future<List<MyPage>> _getPage() async {   
    return _ListPags;
  } */

  @override
  void initState() {
    // TODO: implement initState
    _ListPags = _getPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TAGs")),
      drawer: const Drawer(),
      body: FutureBuilder(
          future: _ListPags,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.count(
                crossAxisCount: 2,
                children: _listPages(snapshot.data),
              );
            } else if (snapshot.hasError) {
              print(snapshot.hasError);
              return const Text("data Error");
            }
            return const Center(
              child: CircularProgressIndicator(color: Colors.black),
            );
          }),
    );
  }

  List<Widget> _listPages(list) {
    List<Widget> listWidget = [];
    for (var element in list) {
      listWidget.add(Card(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "ID: ${element.pageId}",
                      style:
                          TextStyle(fontSize: 14, color: Colors.green.shade900),
                    ),
                    Text(
                      "Título: ${element.pageTitle}",
                      style:
                          TextStyle(fontSize: 20, color: Colors.blue.shade900),
                    ),
                    Text(
                      "Descripción: ${element.pageDescription}",
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black54),
                    )
                  ],
                ),
              )
            ]),
      ));
    }
    return listWidget;
  }
}
