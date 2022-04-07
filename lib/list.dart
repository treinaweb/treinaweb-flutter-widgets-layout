import 'package:carrinho_de_compras/projeto/index.dart';
import 'package:carrinho_de_compras/widgets/aligment.dart';
import 'package:carrinho_de_compras/widgets/column.dart';
import 'package:carrinho_de_compras/widgets/column_row.dart';
import 'package:carrinho_de_compras/widgets/container.dart';
import 'package:carrinho_de_compras/widgets/row.dart';
import 'package:flutter/material.dart';

class ListMenu {
  ListMenu._();

  static List<Widget> get(BuildContext context) {
    return [
      UserAccountsDrawerHeader(
        accountName: const Text('Ariel'),
        accountEmail: const Text('ariel@treinaweb'),
        currentAccountPicture: ClipOval(
          child: Image.network('https://github.com/arielsardinha.png'),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const CarrinhoDeCompras()),
          );
        },
        child: const Text('Carrinho de compras'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const ContainerView()),
          );
        },
        child: const Text('Container'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const AlimentView()),
          );
        },
        child: const Text('Aliment'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const RowView()),
          );
        },
        child: const Text('Row'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const ColumnView()),
          );
        },
        child: const Text('Column'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const ColumnRowView()),
          );
        },
        child: const Text('Column Row'),
      )
    ];
  }
}
