import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.red,
            // width: 220.0,
            // height: 96.0,
            padding: EdgeInsets.only(top: 30.0, left: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Chubazo",
                        style: TextStyle(
                            fontSize: 30.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'LiuJianMaoCao',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Chubizco, chiquimi y popito el mion",
                        style: TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'LiuJianMaoCao',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Choco chimi",
                        style: TextStyle(
                            fontSize: 30.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'LiuJianMaoCao',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Pelusa bonita, chiquimi el mion , popito el gordito y bombolona la colona.",
                        style: TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'LiuJianMaoCao',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                new CatImageWidget(),
                OrderButton(),
              ],
              // margin: EdgeInsets.only(left:  50.0),
            )));
  }
}

class CatImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage catImage = AssetImage('images/naranja_acostado.png');
    Image image = Image(
      image: catImage,
      width: 400.0,
      height: 400.0,
    );
    return Container(
      child: image,
    );
  }
}

class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Gatito"),
        color: Colors.green,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context){
    var alert = AlertDialog(
      title: Text("Gatito ordenado"),
      content: Text("Su gatito llegara en unos dias"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) => alert);
  }
}