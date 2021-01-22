import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Halaman Login'),
      ),
      body:
      new ListView(
          children: <Widget>[
            new Image.asset(
              'gambar/Screenshot2.jpg',
              fit:BoxFit.fill,
              width: 100.0,
              height: 100.0,
            ),

            new Image.asset(
              'gambar/gambar1.jpg',
              fit:BoxFit.fill,
              width: 100.0,
              height: 390.0,
            ),

        new TextField(
          decoration: new InputDecoration(
            hintText: "Username",
            labelText: "Username",
            border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(0.0)
            ),
          ),
        ),
        new Padding(padding: new EdgeInsets.only(top : 5.0)),
        new TextField(
          obscureText: true,
          decoration: new InputDecoration(
            hintText: "Password",
            labelText: "Password",
            border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(0.0)
            ),
          ),
        ),

            new Center(
                child: new RaisedButton(
                  child: new Text("Login"),
                  color: Colors.red,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> _Page2()),
                    );
                  },
                )
            ),
            new Center(
                child: new RaisedButton(
                  child: new Text("Login dengan facebook"),
                  color: Colors.blue,
                  onPressed: (){},
                )
            ),
            new Center(
                child: new RaisedButton(
                  child: new Text("Login dengan Google"),
                  color: Colors.white,
                  onPressed: (){},
                )
            ),
      ],
      ),
    );
  }
}

class _Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Menu'),
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              'gambar/Screenshot1.jpg',
              fit: BoxFit.fill,
              scale: 2.0,
            ),
            new Image.asset(
                'gambar/Screenshot3.jpg',
                fit: BoxFit.fill,
                scale: 2.0
            ),

            new Center(
                child: new RaisedButton(
                  child: new Text("Beli Sekarang"),
                  color: Colors.blue,
                  onPressed: (){},
                )
            ),
            new Center(
                child: new RaisedButton(
                  child: new Text("Halaman Utama"),
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> _Page3()),
                    );
                  },

                )
            ),
          ],
        ),
      ),
    );
  }
}

class _Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Halaman Utama'),
      ),
      body : new Container(
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              'gambar/Screenshot4.jpg',
              fit:BoxFit.fill,
              scale: 2.0,
            ),

          ],
        ),
      ),
    );
  }
}



