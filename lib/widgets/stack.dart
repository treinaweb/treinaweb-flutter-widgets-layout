import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
