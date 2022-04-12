import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class LayoutBuilderView extends StatelessWidget {
  const LayoutBuilderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const percent = 3;
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: ListMenu.get(context),
          ),
        ),
        body: LayoutBuilder(builder: (ctx, constrains) {
          return Column(
            children: [
              Container(
                width: constrains.maxWidth,
                height: constrains.maxHeight / percent,
                color: Colors.red,
              ),
              Container(
                width: constrains.maxWidth,
                height: constrains.maxHeight / percent,
                color: Colors.blue,
              ),
              Container(
                width: constrains.maxWidth,
                height: constrains.maxHeight / percent,
                color: Colors.green,
                padding: EdgeInsets.all(30),
                child: LayoutBuilder(builder: (ctxx, constrains2) {
                  const percent2 = 2;
                  return Column(
                    children: [
                      Container(
                        width: constrains2.maxWidth,
                        height: constrains2.maxHeight / percent2,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: constrains2.maxWidth,
                        height: constrains2.maxHeight / percent2,
                        color: Colors.deepOrange,
                      ),
                    ],
                  );
                }),
              )
            ],
          );
        }));
  }
}
