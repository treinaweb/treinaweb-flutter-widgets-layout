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
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Ariel'),
              accountEmail: const Text('ariel@treinaweb'),
              currentAccountPicture: ClipOval(
                child: Image.network('https://github.com/arielsardinha.png'),
              ),
            ),
            Text('qualqeur coisa '),
            Text('qualqeur coisa ')
          ],
        ),
      ),
    );
  }
}
