import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class GridViewView extends StatelessWidget {
  const GridViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        reverse: true,
        crossAxisCount: 5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: List.generate(
          200,
          (index) => Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Text(
              index.toString(),
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
      ),
    );
  }
}
