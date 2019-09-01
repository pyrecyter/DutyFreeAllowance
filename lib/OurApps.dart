import 'package:duty_free_allowance/ourAppsWeb.dart';
import 'package:flutter/material.dart';

class OurApps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Screen();
  }
}

class Screen extends State<OurApps> {
  int status = 0;

  mainScreen() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.1), BlendMode.dstATop),
          image: AssetImage('assets/visible_tec.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(children: [
        Container(
            padding: EdgeInsets.only(top: 200.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Visible Tec\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Visible Tec Apps, Web & Graphic Designers",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ],
            )),
        Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 150.0),
            alignment: Alignment.center,
            child: new Row(children: <Widget>[
              new Expanded(
                  child: new FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          status = 1;
                        });
                      }, //Put allowance route here
                      child: new Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 20.0,
                          ),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Expanded(
                                child: Text(
                                  "MORE APPS",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ))))
            ])),
      ]),
    );
  }

  _checkStat(int i) {
    switch (i) {
      case 1:
        return OurAppsWeb();
      default:
        return mainScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return _checkStat(status);
  }
}
