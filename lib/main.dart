import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
            _swiperTarjetas()
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

  Widget _swiperTarjetas() {
    return Container(
      width: double.infinity,
      height: 300.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
              'https://i.pinimg.com/originals/12/94/b0/1294b0bd87d92def547494558b65b130.jpg/350x15',
              fit: BoxFit.fill);
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
