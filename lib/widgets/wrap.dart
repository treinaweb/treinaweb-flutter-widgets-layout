import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class WrapView extends StatelessWidget {
  const WrapView({Key? key}) : super(key: key);

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
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 10,
          runSpacing: 10,
          children: List.generate(
            200,
            (index) => Container(
              color: Colors.red,
              child: Text(
                index.toString(),
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
