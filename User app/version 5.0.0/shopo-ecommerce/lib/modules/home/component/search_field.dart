import 'package:flutter/material.dart';
import 'package:shop_o/widgets/custom_text.dart';
import '/widgets/capitalized_word.dart';

import '../../../core/router_name.dart';
import '../../../utils/constants.dart';
import '../../../utils/language_string.dart';
import '../../../utils/utils.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RouteNames.productSearchScreen);
      },
      child: Container(
        height: 60.0,
        margin: Utils.symmetric(),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: Utils.borderRadius(r: 12.0),
          border: Border.all(color: grayColor.withOpacity(0.2))
          // boxShadow: [
          //   BoxShadow(
          //       offset: const Offset(0.0, 0.0),
          //       spreadRadius: 0.0,
          //       blurRadius: 0.0,
          //       // color: whiteColor
          //       color: const Color(0xFF333333).withOpacity(0.6)),
          // ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Row(
          children: [
            const Icon(Icons.search_rounded, color: grayColor, size: 20),
            Utils.horizontalSpace(10.0),
            CustomText(text: Language.searchProduct.capitalizeByWord()),
          ],
        ),
      ),
    );
  }

  TextFormField buildTextFormField(BuildContext context) {
    return TextFormField(
      onTap: () {
        Utils.closeKeyBoard(context);
        Navigator.pushNamed(context, RouteNames.productSearchScreen);
      },
      decoration: inputDecorationTheme.copyWith(
        prefixIcon: Icon(Icons.search_rounded, color: grayColor, size: 20),
        hintText: Language.searchProduct.capitalizeByWord(),
        hintStyle:
            Theme.of(context).textTheme.labelMedium!.copyWith(color: grayColor),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 11,
          horizontal: 16,
        ),
        // suffixIconConstraints:
        //     const BoxConstraints(maxHeight: 32, minWidth: 32),
      ),
    );
  }
}
