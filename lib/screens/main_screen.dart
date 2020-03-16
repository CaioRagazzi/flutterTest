import 'package:flutter/material.dart';
import './tela1_screen.dart';
import '../widgets/myCard.dart';

class MainScreen extends StatelessWidget {
  void goToTela1Screen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return Tela1Screen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste Navigator'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () => goToTela1Screen(context),
              child: Text(
                'Tela 1',
              ),
            ),
            RaisedButton(
              onPressed: null,
              child: Text(
                'Tela 2',
              ),
            ),
            MyCard()
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
