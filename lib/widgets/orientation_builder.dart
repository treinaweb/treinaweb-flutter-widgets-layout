import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class OrientationBuilderView extends StatelessWidget {
  const OrientationBuilderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: OrientationBuilder(builder: (ctx, orientation) {
        // landscap = panorama
        // portrait = retrato
        final isRetratil = orientation == Orientation.landscape ? 8 : 4;
        return GridView.count(
          crossAxisCount: isRetratil,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(
            50,
            (index) => Container(
              alignment: Alignment.center,
              color: Colors.grey,
              child: Text(
                "$index $orientation",
              ),
            ),
          ),
        );
      }),
    );
  }
}
