// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/modals/catelog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catelog;

  const HomeDetailPage({
    Key? key,
    required this.catelog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catelog.price}".text.bold.xl4.red400.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBluishColor),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
              child: "Buy".text.lg.make(),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      body: Column(
        children: [
          Hero(
            tag: Key(catelog.id.toString()),
            child: Image.network(catelog.image ?? ''),
          ).h40(context),
          Expanded(
            child: VxArc(
              height: 50.0,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                width: context.screenWidth,
                color: Colors.white70,
                child: Column(
                  children: [
                    "${catelog.name}"
                        .text
                        .xl4
                        .color(MyTheme.darkBluishColor)
                        .bold
                        .make(),
                    "${catelog.desc}"
                        .text
                        .xl
                        .textStyle(context.captionStyle)
                        .make(),
                    10.heightBox,
                    "Dolor sit aliquyam diam labore eirmod dolores, duo justo diam sit dolor sed vero dolore elitr. Ut rebum amet nonumy."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .px16(),
                  ],
                ).py64(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
