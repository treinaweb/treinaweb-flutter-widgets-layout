import 'package:carrinho_de_compras/projeto/index.dart';
import 'package:carrinho_de_compras/widgets/aligment.dart';
import 'package:carrinho_de_compras/widgets/column.dart';
import 'package:carrinho_de_compras/widgets/column_row.dart';
import 'package:carrinho_de_compras/widgets/container.dart';
import 'package:carrinho_de_compras/widgets/expanded_flexible.dart';
import 'package:carrinho_de_compras/widgets/grid_view.dart';
import 'package:carrinho_de_compras/widgets/layout_builder.dart';
import 'package:carrinho_de_compras/widgets/list_view.dart';
import 'package:carrinho_de_compras/widgets/media_query.dart';
import 'package:carrinho_de_compras/widgets/orientation_builder.dart';
import 'package:carrinho_de_compras/widgets/positined.dart';
import 'package:carrinho_de_compras/widgets/row.dart';
import 'package:carrinho_de_compras/widgets/stack.dart';
import 'package:carrinho_de_compras/widgets/wrap.dart';
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
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const ListViewView()),
          );
        },
        child: const Text('ListView'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const WrapView()),
          );
        },
        child: const Text('Wrap'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const GridViewView()),
          );
        },
        child: const Text('GridView'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const StackView()),
          );
        },
        child: const Text('Stack'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const PositinedView()),
          );
        },
        child: const Text('Positined'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const OrientationBuilderView()),
          );
        },
        child: const Text('Orientation builder'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const MediaQueryView()),
          );
        },
        child: const Text('media query'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const LayoutBuilderView()),
          );
        },
        child: const Text('layout builder'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const ExpandedFlexibleView()),
          );
        },
        child: const Text('flexible e expanded'),
      )
    ];
  }
}
