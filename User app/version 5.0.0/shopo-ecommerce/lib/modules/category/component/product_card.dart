import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/custom_text.dart';
import '/modules/setting/model/website_setup_model.dart';
import '../../../core/remote_urls.dart';
import '../../../core/router_name.dart';
import '../../../utils/constants.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/favorite_button.dart';
import '../../animated_splash_screen/controller/app_setting_cubit/app_setting_cubit.dart';
import '../../home/model/product_model.dart';
import 'price_card_widget.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  final double? width;

  const ProductCard({super.key, required this.productModel, this.width});

  @override
  Widget build(BuildContext context) {
    final appSetting = context.read<AppSettingCubit>();
    return ClipRRect(
      borderRadius: Utils.borderRadius(r: 12.0),
      child: Container(
        width: width,
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: Utils.borderRadius(r: 12.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0.0, 15.0),
                  spreadRadius: 0.0,
                  blurRadius: 0.0,
                  // color: whiteColor
                  color: const Color(0xFF000000).withOpacity(0.4)),
            ]),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, RouteNames.productDetailsScreen,
                arguments: productModel.slug);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImage(context),
              const SizedBox(height: 8),
              _buildContent(appSetting),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(AppSettingCubit appSetting) {
    double flashPrice = 0.0;
    double offerPrice = 0.0;
    double mainPrice = 0.0;
    final isFlashSale = appSetting.settingModel!.flashSaleProducts
        .contains(FlashSaleProductsModel(productId: productModel.id));
    int flashSaleActive = appSetting.settingModel!.flashSale.status;

    if (productModel.offerPrice != 0) {
      if (productModel.productVariants.isNotEmpty) {
        double p = 0.0;
        for (var i in productModel.productVariants) {
          if (i.activeVariantsItems.isNotEmpty) {
            p += Utils.toDouble(i.activeVariantsItems.first.price.toString());
          }
        }
        offerPrice = p + productModel.offerPrice;
      } else {
        offerPrice = productModel.offerPrice;
      }
    }
    if (productModel.productVariants.isNotEmpty) {
      double p = 0.0;
      for (var i in productModel.productVariants) {
        if (i.activeVariantsItems.isNotEmpty) {
          p += Utils.toDouble(i.activeVariantsItems.first.price.toString());
        }
      }
      mainPrice = p + productModel.price;
    } else {
      mainPrice = productModel.price;
    }

    if (isFlashSale && flashSaleActive == 1) {
      if (productModel.offerPrice != 0) {
        final discount =
            appSetting.settingModel!.flashSale.offer / 100 * offerPrice;

        flashPrice = offerPrice - discount;
      } else {
        final discount =
            appSetting.settingModel!.flashSale.offer / 100 * mainPrice;

        flashPrice = mainPrice - discount;
      }
    }

    return Container(
      padding: const EdgeInsets.only(left: 10, right: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.star,
                size: 14.0,
                color: yellowColor,
              ),
              const SizedBox(width: 4),
              CustomText(
                text:productModel.rating.toStringAsFixed(1),
              ),
            ],
          ),
          const SizedBox(height: 6),
          // AutoSizeText(productModel.name,
          //     textAlign: TextAlign.left,
          //     maxLines: 1,
          //     maxFontSize: 16,
          //     minFontSize: 12,
          //     style: const TextStyle(
          //         fontWeight: FontWeight.w600, height: 1.2, fontSize: 16)),
          Flexible(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                productModel.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          if (isFlashSale) ...[
            PriceCardWidget(
              price: mainPrice.toString(),
              offerPrice: flashPrice.toString(),
              textSize: 14.0,
            ),
          ] else ...[
            PriceCardWidget(
              price: mainPrice.toString(),
              offerPrice: offerPrice.toString(),
              textSize: 14.0,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return SizedBox(
      height: 118.0,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
            child: CustomImage(
                path: RemoteUrls.imageUrl(productModel.thumbImage),
                fit: BoxFit.contain),
          ),
          // _buildOfferInPercentage(context),
          Positioned(
            top: 5.0,
            right: 5.0,
            child: FavoriteButton(productId: productModel.id.toString()),
          ),
        ],
      ),
    );
  }

  Widget _buildOfferInPercentage(BuildContext context) {
    if (productModel.offerPrice != 0) {
      return const Positioned(
        top: 8,
        right: 8,
        child: SizedBox(),
      );
    }

    final percentage =
        Utils.dorpPricePercentage(productModel.price, productModel.offerPrice);

    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        height: 22,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Utils.dynamicPrimaryColor(context).withOpacity(0.6),
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(2))),
        child: Text(
          percentage,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
