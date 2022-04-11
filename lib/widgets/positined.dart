import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class PositinedView extends StatelessWidget {
  const PositinedView({Key? key}) : super(key: key);

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
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Container(
              width: 250,
              height: 250,
              color: Colors.red,
            ),
          ),
          Positioned(
            right: -50,
            bottom: -50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
