import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
              50,
              (index) => Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(10),
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text('${index + 1}'),
                  )),
        ),
      ),
    );
  }
}
