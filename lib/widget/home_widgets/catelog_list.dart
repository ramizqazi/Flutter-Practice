import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/widget/themes.dart';
import 'package:flutter_application_1/modals/catelog.dart';
import 'package:flutter_application_1/pages/home_detail_page.dart';

import 'catelog_image.dart';

class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatelogModal.items!.length,
      itemBuilder: (context, index) {
        final catelog = CatelogModal.getByPosition(index);
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                catelog: catelog,
              ),
            ),
          ),
          child: CatelogItem(
            catelogId: catelog.id,
          ),
        );
      },
    );
  }
}

class CatelogItem extends StatelessWidget {
  final int? catelogId;

  const CatelogItem({super.key, required this.catelogId});

  @override
  Widget build(BuildContext context) {
    final item = CatelogModal.getById(catelogId ?? 0);
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(item.id.toString()),
            child: CatelogImage(
              image: item.image ?? '',
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "${item.name}"
                    .text
                    .lg
                    .color(MyTheme.darkBluishColor)
                    .bold
                    .make(),
                "${item.desc}".text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${item.price}".text.bold.xl.make(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              MyTheme.darkBluishColor),
                          shape: MaterialStateProperty.all(
                            StadiumBorder(),
                          )),
                      child: "Buy".text.make(),
                    )
                  ],
                ).pOnly(right: 8.0)
              ],
            ),
          )
        ],
      ),
    ).color(context.cardColor).roundedLg.square(150).make().py16();
  }
}
