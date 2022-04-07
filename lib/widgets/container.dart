import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(80),
        padding: EdgeInsets.only(top: 50, bottom: 20, left: 80),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.black, width: 10),
        ),
        child: Text('treinaweb'),
      ),
    );
  }
}
