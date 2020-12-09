import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Patinetas Verano'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(
              height: 20.0,
            ),
            _cardTipo2(),
            _cardTipo3(),
          ],
        ),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        // shape:
        //   RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.sports_kabaddi_outlined),
          title: Text('Patinetas Verano'),
        )
      ],
    ));
  }

  Widget _cardTipo2() {
    return Card(
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Image(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/12/94/b0/1294b0bd87d92def547494558b65b130.jpg'))
          ],
        ));
  }

  Widget _cardTipo3() {
    return Card(
        child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.sports_kabaddi_outlined),
          title: Text('Patinetas Verano'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(onPressed: () {}, child: Text('Lo quiero')),
            FlatButton(onPressed: () {}, child: Text('Siguiente'))
          ],
        ),
      ],
    ));
  }
}
