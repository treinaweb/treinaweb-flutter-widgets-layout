import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class ExpandedFlexibleView extends StatelessWidget {
  const ExpandedFlexibleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 50,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
