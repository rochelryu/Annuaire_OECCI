import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './Inter.dart';
import './InterSecond.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final List<String> imgList = [
  'images/un.jpg',
  'images/deux.jpg',
  'images/trois.jpg',
  ];
final Widget placeholder = Container(color: Colors.grey);

final List child = map<Widget>(
  imgList,
      (index, i) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          Image.asset(i, fit: BoxFit.cover, width: 1000.0),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              /*child: Text(
                'No. $index image',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),*/
            ),
          ),
        ]),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  int _current = 0;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5CAA4D),
        /*leading: Icon(Icons.menu, color: Colors.white, size: 22.0),*/
        title: Text("ANNUAIRE OECCI"),
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text("OECCI", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: "GOTHIC", fontWeight: FontWeight.bold)),
              accountEmail: Text("Côte D'Ivoire, Abidjan Cocody"),
              currentAccountPicture: GestureDetector(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                      image: AssetImage("images/ordre.jpeg"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.green),
              title: Text("Accueil",style: TextStyle(color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold, fontFamily: "GOTHIC")),
            ),
            ListTile(
              leading: Icon(Icons.message, color: Colors.black54),
              title: Text("Contactez-Nous",style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.bold, fontFamily: "GOTHIC")),
            ),
            Divider(),
            ListTile(
              title: Text("A propos",style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.bold, fontFamily: "GOTHIC")),
            ),
            ListTile(
              title: Text("Politique de confidentialité",style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.bold, fontFamily: "GOTHIC")),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery
                .of(context)
                .size
                .height / 3.5,
            child: CarouselSlider(
              items: child,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 10),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 4.0,
              child: Container(
                height: 40,
                padding: EdgeInsets.only(left: 15.0, right: 10.0),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(Icons.search, color: Colors.green),
                          onPressed: () {
                            print("Fake");
                          }),
                      hintText: "Un comptable ou une société de comptable",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 13)
                  ),
                ),
              ),
            ),
          ),
          /*Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 65.0),
              height: MediaQuery.of(context).size.height / 2.2,

              child: Center(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, crossAxisSpacing: 10.0),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return new Card(
                          elevation: 5.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.person_pin, size: 55.0,
                                color: Colors.green,),
                              Text("Experts Comptables",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18.0,
                                      color: Color(0xFF5CAA4D),
                                      fontFamily: "GOTHIC")),
                            ],
                          ),
                        );
                      }
                      else {
                        return new Card(
                          elevation: 5.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.business, size: 55.0,
                                  color: Colors.green),
                              Text("Société Experts Comptables",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18.0,
                                      color: Color(0xFF5CAA4D),
                                      fontFamily: "GOTHIC")),
                            ],
                          ),
                        );
                      }
                    }),
              )
          )*/
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.of(context).push((
                  MaterialPageRoute(builder: (builder)=> InterBlock("EXPERTS COMPTABLES", "images/slider.jpg"))
                  ));
                },
                child: Card(
                  elevation: 2.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/slider.jpg"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Center(
                          child: Text("EXPERTS COMPTABLES", style: TextStyle(color: Colors.green, fontSize: 14, fontFamily: "GOTHIC", fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 2.0,)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              InkWell(
                onTap: (){
                  Navigator.of(context).push((
                      MaterialPageRoute(builder: (builder)=> InterSecond("SOCIETE EXPERTS COMPTABLES", "images/comptable.jpg"))
                  ));
                },
                child: Card(
                  elevation: 2.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/comptable.jpg"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Center(
                          child: Text("SOCIETE EXPERTS COMPTABLES", style: TextStyle(color: Colors.green, fontSize: 14, fontFamily: "GOTHIC", fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 2.0,)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomSheet: Container(
        height: 30,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF5CAA4D),
        ),
        child: Center(
            child: Text("Copyright OECCI 2019 - Tous droits réservés",
                style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "GOTHIC"))),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.}
  }
}
