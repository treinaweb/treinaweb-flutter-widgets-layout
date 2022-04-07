import 'package:carrinho_de_compras/list.dart';
import 'package:carrinho_de_compras/widgets/container.dart';
import 'package:flutter/material.dart';

class CarrinhoDeCompras extends StatelessWidget {
  const CarrinhoDeCompras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Carrinho de compras',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
    );
  }
}
