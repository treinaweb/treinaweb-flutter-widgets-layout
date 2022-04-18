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
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              100,
              (index) => Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                color: Colors.grey,
                child: Text('$index', style: TextStyle(fontSize: 30)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
