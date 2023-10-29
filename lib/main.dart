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
    if (count < 1) {
      return;
    }
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
        child: Column(
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
              child: Text(
                '$count',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: decrement,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      )),
                  child: const Text(
                    'Saiu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                TextButton(
                  onPressed: increment,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      )),
                  child: const Text(
                    'Entrou',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
