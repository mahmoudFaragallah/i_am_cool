import 'package:flutter/material.dart';

void main() {
  runApp((MaterialApp(title: 'I am Cool', home: HomeScreen())));
}

class HomeScreen extends StatelessWidget {
  Future<String> createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Your name?"),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text('Submit'),
                onPressed: () {
                  Navigator.of(context).pop(customController.text.toString());
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('I am Cool'),
        backgroundColor: Colors.deepOrange[799],
      ),
      body: Builder(builder: (context) {
        return Container(
          child: Center(
              child: FlatButton(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            color: Colors.deepOrange,
            textColor: Colors.white,
            onPressed: () {
              createAlertDialog(context).then((onValue) {
                SnackBar mySneaker = SnackBar(content: Text("Hello $onValue"));
                Scaffold.of(context).showSnackBar(mySneaker);
              });
            },
            child: Text(
              'Alert',
              style: TextStyle(fontSize: 20.0),
            ),
          )),
        );
      }),
    );
  }
}
