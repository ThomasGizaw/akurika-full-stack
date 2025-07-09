import 'package:flutter/material.dart';
import 'package:shop_o/utils/constants.dart';

import '../../../core/remote_urls.dart';
import '../../../core/router_name.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../model/brand_model.dart';

class SponsorComponent extends StatelessWidget {
  const SponsorComponent({super.key, required this.brands});

  final List<BrandModel> brands;

  @override
  Widget build(BuildContext context) {
    if (brands.isEmpty) return const SizedBox();
    return Container(
      padding: Utils.symmetric(h: 10.0),
      margin: Utils.symmetric(h: 0.0, v: 15.0),
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: grayColor.withOpacity(0.2)))),
      child: SizedBox(
        height: 150, // Enough for 2 rows of brand logos
        child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: (brands.length / 4).ceil(),
          itemBuilder: (context, i) {
            final start = i * 4;
            final end = (start + 4 < brands.length) ? start + 4 : brands.length;
            final chunk = brands.sublist(start, end);
            return Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      for (var j = 0; j < 2 && j < chunk.length; j++)
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, RouteNames.brandProductScreen,
                                  arguments: chunk[j].slug);
                            },
                            child: CustomImage(
                              path: RemoteUrls.imageUrl(chunk[j].logo),
                              height: 56.0,
                              width: 68.0,
                            ),
                          ),
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      for (var j = 2; j < 4 && j < chunk.length; j++)
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                          child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.brandProductScreen,
                                  arguments: chunk[j].slug);
              },
                child: CustomImage(
                              path: RemoteUrls.imageUrl(chunk[j].logo),
                  height: 56.0,
                  width: 68.0,
                ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
      height: 70.0,
      padding: Utils.symmetric(h: 10.0),
      margin: Utils.symmetric(h: 0.0, v: 15.0),
      decoration: BoxDecoration(
          color: scaBgColor,
          border: Border(top: BorderSide(color: grayColor.withOpacity(0.1)))),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(context, RouteNames.brandProductScreen,
                arguments: brands[index].slug);
          },
          child: Padding(
            padding: Utils.only(right: 24.0),
            child: CustomImage(
              path: RemoteUrls.imageUrl(brands[index].logo),
              height: 56.0,
              width: 68.0,
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 10),
        itemCount: brands.length,
      ),
    );
  }
}
