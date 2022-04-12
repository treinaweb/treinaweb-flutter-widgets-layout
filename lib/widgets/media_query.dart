import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class MediaQueryView extends StatelessWidget {
  const MediaQueryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.red,
        child: Text(
          'width: ${size.width} height: ${size.height}',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
