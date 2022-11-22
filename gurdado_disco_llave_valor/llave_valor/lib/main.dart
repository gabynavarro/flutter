import 'package:flutter/material.dart';
import 'package:llave_valor/service/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  await LocalStorage.configurePrefs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Este widget es la raíz de la aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared preferences demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Shared preferences demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _nserie = "";
  String _image = "";
  List<String>? items;
  String clave = "";
  List<String> nuevalist = [];
  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  //Cargando el valor del contador en el inicio
  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      //_someMap = ((prefs.getInt('someMap'))) as Map<String, int>;
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      items = prefs.getStringList("12");

      prefs.getStringList('12') == null
          ? prefs.setStringList("12", <String>[])
          : prefs.setStringList("12", items!);

      if ((prefs.getStringList("12")) != null) {
        print("lista cargada: ");
        print(items);
      }

      // if (LocalStorage.prefs.getKeys().isNotEmpty) {
      //   //
      //   print("el key no esta vacio");
      //   //   print(items);
      // }
    });
  }

  //Incrementando el contador después del clic
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      items = prefs.getStringList("12");

      nuevalist = items!;
      nuevalist.add("nuevo");

      prefs.setStringList('12', nuevalist!);
      //
      items = prefs.getStringList("12");

      print(items);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text('$_counter', style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // Esta coma final hace que el formateo automático sea más agradable para los métodos de compilación.
    );
  }
}
