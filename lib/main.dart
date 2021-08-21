import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'font_style.dart';
import 'custom_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "DECode.studio",
              style: appHeader,
            ),
            backgroundColor: maroon,
            actions: <Widget>[
              CupertinoTextSelectionToolbarButton.text(
                text: "KUPLAY",
                onPressed: () {},
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.add_a_photo_outlined))
            ],
          ),
          body: SafeArea(
              child: Container(
                  color: Colors.black,
                  margin: EdgeInsets.only(
                      left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                  padding: EdgeInsets.only(
                      left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage("assets/images/decode_logo.png"),
                            height: 250,
                            color: maroon,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            child: Text(
                              "DECode.studio",
                              style: mainHeader,
                            ),
                          ),
                          Text(
                            "We are a Service Provider \nwhic provides services \n" +
                                "based on Web Developing, \nMobile Developing, Photo \n" +
                                "Editing, Vector Creatimg, \n3D Modeling and \nDesktop Developing",
                            style: subHeader,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  )))),
    );
  }
}
