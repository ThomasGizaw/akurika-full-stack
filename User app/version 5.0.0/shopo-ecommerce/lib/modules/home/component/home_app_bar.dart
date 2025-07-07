import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_o/modules/animated_splash_screen/controller/currency/currency_cubit.dart';
import 'package:shop_o/utils/constants.dart';

import '../../../widgets/custom_text.dart';
import '/modules/animated_splash_screen/controller/app_setting_cubit/app_setting_cubit.dart';
import '/widgets/capitalized_word.dart';
import '../../../core/remote_urls.dart';
import '../../../core/router_name.dart';
import '../../../dummy_data/all_dummy_data.dart';
import '../../../utils/k_images.dart';
import '../../../utils/language_string.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../cart/controllers/cart/cart_cubit.dart';
import '../../setting/model/currencies_model.dart';
import 'search_field.dart';

class HomeAppBar extends StatelessWidget {
  final double height;

  const HomeAppBar({super.key, this.height = 100});

  @override
  Widget build(BuildContext context) {
    final logo = context.read<AppSettingCubit>().settingModel!.setting.logo;
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: Utils.vSize(140.0),
          width: double.infinity,
          // margin: Utils.symmetric(),
          color: blackColor,
          child: Padding(
            padding: Utils.symmetric(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                // const LocationSelector(),
                CustomImage(
                    path: RemoteUrls.imageUrl(logo),
                    color: whiteColor,
                    height: 24),
                const Spacer(),
                // const SizedBox(width: 20),
                const CurrenciesWidget(),
                // const Spacer(),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.cartScreen);
                  },
                  child: BlocBuilder<CartCubit, CartState>(
                    builder: (context, state) {
                      return CartBadge(
                        iconColor: whiteColor,
                        count: context.read<CartCubit>().cartCount.toString(),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
        const Positioned(
            bottom: -30.0, left: 0.0, right: 0.0, child: SearchField()),
      ],
    );
  }
}

class CartBadge extends StatelessWidget {
  const CartBadge({super.key, required this.count, required this.iconColor});

  final String? count;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeStyle: badges.BadgeStyle(
        badgeColor: Utils.dynamicPrimaryColor(context),
      ),
      badgeContent: CustomText(
          text: count?.isNotEmpty ?? false ? count! : '0',
          fontSize: 10,
          color: blackColor),
      child: CustomImage(path: Kimages.shoppingIcon, color: iconColor),
    );
  }
}

class LocationSelector extends StatefulWidget {
  const LocationSelector({super.key});

  @override
  State<LocationSelector> createState() => _LocationSelectorState();
}

class _LocationSelectorState extends State<LocationSelector> {
  String selectCity = Language.location.capitalizeByWord();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomImage(path: Kimages.locationIcon),
        const SizedBox(width: 8),
        DropdownButton<String>(
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: SvgPicture.asset(Kimages.expandIcon, height: 8),
            ),
            underline: const SizedBox(),
            hint: Text(
              selectCity,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            items: dropDownItem
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (v) {
              setState(() {
                selectCity = v!;
              });
            }),
      ],
    );
  }
}

class CurrenciesWidget extends StatefulWidget {
  const CurrenciesWidget({super.key});

  @override
  State<CurrenciesWidget> createState() => _CurrenciesWidgetState();
}

class _CurrenciesWidgetState extends State<CurrenciesWidget> {
  late CurrenciesModel _demoModel;
  late CurrencyCubit cCubit;

  @override
  void initState() {
    _initCurrencies();
    super.initState();
  }

  _initCurrencies() {
    final appSetting = context.read<AppSettingCubit>().settingModel!.currencies;
    cCubit = context.read<CurrencyCubit>();
    if (appSetting.isNotEmpty) {
      for (int i = 0; i < appSetting.length; i++) {
        final item = appSetting[i];

        if (item.isDefault.toLowerCase() == 'yes' && item.status == 1) {
          _demoModel = item;
          cCubit.addNewCurrency(item);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final appSetting = context.read<AppSettingCubit>().settingModel!.currencies;
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: DropdownButtonFormField<CurrenciesModel>(
              value: _demoModel,
              hint:
                  const Text('Currencies', style: TextStyle(color: whiteColor)),
              padding: EdgeInsets.zero,
              focusColor: blackColor,
              icon: const Icon(Icons.keyboard_arrow_down),
              decoration: InputDecoration(
                contentPadding: Utils.symmetric(h: 10.0, v: 10.0),
                isDense: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: whiteColor.withOpacity(0.5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: whiteColor.withOpacity(0.5)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: whiteColor.withOpacity(0.5)),
                ),
                filled: true,
                fillColor: blackColor.withOpacity(0.6),
              ),
              dropdownColor: blackColor,
              onTap: () async {
                Utils.closeKeyBoard(context);
              },
              onChanged: (value) {
                if (value == null) return;
                cCubit.state.currencies.clear();
                cCubit.addNewCurrency(value);
                debugPrint('values $value');
              },
              isDense: true,
              isExpanded: true,
              items: appSetting.map<DropdownMenuItem<CurrenciesModel>>(
                  (CurrenciesModel value) {
                return DropdownMenuItem<CurrenciesModel>(
                  value: value,
                  child: Text(
                    value.currencyName,
                    style: const TextStyle(color: whiteColor),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
