import 'dart:math';
import 'package:flutter/material.dart';

class InterSecond extends StatelessWidget {
  String title;
  String imagePath;
  InterSecond(this.title, this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title, ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(this.imagePath),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return Card(
                      elevation: 2.0,
                      child: Container(
                          height: 170,
                          width: MediaQuery.of(context).size.width/1.2,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: double.infinity,
                                child: Center(
                                  child: Text("ABC COMPTABILITE", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontFamily: "GOTHIC")),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                        flex:2,
                                        child:Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: Center(
                                            child: Image.asset("images/log.jpg", fit: BoxFit.cover,),
                                          ),
                                        )),
                                    Expanded(
                                        flex: 4,
                                        child:Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(left: 10.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Reference :", style: TextStyle(fontSize: 10, color: Colors.grey, fontFamily: "GOTHIC")),
                                                    Text("98.0065.1.12.L"),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Réprésentant légal :", style: TextStyle(fontSize: 10, color: Colors.grey, fontFamily: "GOTHIC")),
                                                    Text("Koffi Moussa"),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Année :", style: TextStyle(fontSize: 10, color: Colors.grey, fontFamily: "GOTHIC")),
                                                    Text("1994"),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),

                                        )),
                                    Expanded(
                                        flex: 4,
                                        child:Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(left: 10.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Adresse :", style: TextStyle(fontSize: 10, color: Colors.grey, fontFamily: "GOTHIC")),
                                                    Text("04 BP 868 ABJ 04"),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Téléphone :", style: TextStyle(fontSize: 10, color: Colors.grey, fontFamily: "GOTHIC"),),
                                                    Text("08 59 40 84"),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Email :", style: TextStyle(fontSize: 10, color: Colors.grey, fontFamily: "GOTHIC")),
                                                    Text(" josaffri@yahoo.fr"),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),

                                        )),

                                  ],
                                ),
                              )
                            ],
                          )
                      ),
                    );
                  }),
            )
          ],
        )
    );

  }
}
