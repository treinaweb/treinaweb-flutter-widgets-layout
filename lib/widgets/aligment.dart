import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class AlimentView extends StatelessWidget {
  const AlimentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: Center(
        child: Text(
          'treinaweb',
          style: TextStyle(fontSize: 45),
        ),
      ),
    );
  }
}
