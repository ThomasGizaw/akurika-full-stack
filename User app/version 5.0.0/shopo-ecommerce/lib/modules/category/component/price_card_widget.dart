import 'package:auto_size_text/auto_size_text.dart';
import 'package:shop_o/modules/animated_splash_screen/controller/currency/currency_cubit.dart';
import 'package:shop_o/modules/animated_splash_screen/controller/currency/currency_state_model.dart';

import '../../../state_packages_names.dart';
import '../../../utils/constants.dart';
import '../../../utils/utils.dart';

// class PriceCardWidget extends StatelessWidget {
//   const PriceCardWidget(
//       {super.key,
//       required this.price,
//       required this.offerPrice,
//       this.textSize = 12.0});
//
//   final String price;
//   final double textSize;
//   final String offerPrice;
//
//   @override
//   Widget build(BuildContext context) {
//     if (offerPrice == "0.0") {
//       return _buildPrice(context, price);
//     }
//
//     return BlocBuilder<CurrencyCubit, CurrencyStateModel>(
//       builder: (context, state) {
//         return Flexible(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               _buildPrice(context, offerPrice),
//               const SizedBox(width: 6.0),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: AutoSizeText(
//                   state.currencies.isNotEmpty
//                       ? Utils.convertMulCurrency(
//                           price, context, state.currencies.first)
//                       : Utils.formatPrice(price, context),
//                   //Utils.formatPrice(price, context),
//                   textAlign: TextAlign.left,
//                   maxFontSize: textSize - 4,
//                   minFontSize: textSize - 4,
//                   style: TextStyle(
//                     decoration: TextDecoration.lineThrough,
//                     color: const Color(0xff85959E),
//                     height: 1.5,
//                     fontSize: textSize,
//                   ),
//                   maxLines: 1,
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   Widget _buildPrice(BuildContext context, String price) {
//     return BlocBuilder<CurrencyCubit, CurrencyStateModel>(
//       builder: (context, state) {
//         return Align(
//           alignment: Alignment.center,
//           child: Text(
//             state.currencies.isNotEmpty
//                 ? Utils.convertMulCurrency(
//                     price, context, state.currencies.first)
//                 : Utils.formatPrice(price, context),
//             style: TextStyle(
//               color: redColor,
//               height: 1.5,
//               fontSize: textSize,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

class PriceCardWidget extends StatelessWidget {
  const PriceCardWidget(
      {super.key,
      required this.price,
      required this.offerPrice,
      this.textSize = 16.0});

  final String price;
  final double textSize;
  final String offerPrice;

  @override
  Widget build(BuildContext context) {
    if (offerPrice == "0.0") {
      return _buildPrice(context, price);
    }

    return BlocBuilder<CurrencyCubit, CurrencyStateModel>(
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildPrice(context, offerPrice),
            const SizedBox(width: 10),
            Expanded(
              child: AutoSizeText(
                state.currencies.isNotEmpty
                    ? Utils.convertMulCurrency(
                        price, context, state.currencies.first)
                    : Utils.formatPrice(price, context),
                //Utils.formatPrice(price, context),
                textAlign: TextAlign.left,
                maxFontSize: textSize - 4,
                minFontSize: textSize - 4,
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: const Color(0xff85959E),
                  height: 1.5,
                  fontSize: textSize,
                ),
                maxLines: 1,
              ),
            )
          ],
        );
      },
    );
  }

  Widget _buildPrice(BuildContext context, String price) {
    return BlocBuilder<CurrencyCubit, CurrencyStateModel>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.centerLeft,
          child: Text(
            state.currencies.isNotEmpty
                ? Utils.convertMulCurrency(
                    price, context, state.currencies.first)
                : Utils.formatPrice(price, context),
            style: TextStyle(
                color: redColor,
                height: 1.5,
                fontSize: textSize,
                fontWeight: FontWeight.w600),
          ),
        );
      },
    );
  }
}
