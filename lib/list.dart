import 'package:carrinho_de_compras/projeto/index.dart';
import 'package:carrinho_de_compras/widgets/aligment.dart';
import 'package:carrinho_de_compras/widgets/container.dart';
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
      )
    ];
  }
}
