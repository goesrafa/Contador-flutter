import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pode Entrar',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 5),
            ),
            Padding(
              padding: EdgeInsets.all(32),
              child: Text('$count'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: decrement,
                  child: Text('Decrementar'),
                ),
                SizedBox(width: 32),
                FloatingActionButton(
                  onPressed: increment,
                  child: Text('Incrementar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
