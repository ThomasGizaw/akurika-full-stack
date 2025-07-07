import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_o/modules/animated_splash_screen/controller/currency/currency_cubit.dart';
import 'package:shop_o/modules/animated_splash_screen/controller/currency/currency_state_model.dart';

import '/utils/language_string.dart';
import '/widgets/capitalized_word.dart';
import '../../../core/router_name.dart';
import '../../../utils/constants.dart';
import '../../../utils/utils.dart';
import '../controllers/order/order_cubit.dart';
import '../model/order_model.dart';

class OrderedListComponent extends StatelessWidget {
  const OrderedListComponent({super.key, required this.orderedItem});

  final OrderModel orderedItem;

  @override
  Widget build(BuildContext context) {
    final oCubit = context.read<OrderCubit>();
    return Container(
      padding: Utils.symmetric(v: 20.0),

      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: Utils.borderRadius(r: 12.0),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0.0, 0.0),
                spreadRadius: 0.0,
                blurRadius: 0.0,
                // color: whiteColor
                color: const Color(0xFF000000).withOpacity(0.4)),
          ]),

      margin: Utils.symmetric(v: 5.0, h: 10.0),
      // decoration: const BoxDecoration(color: cardBgGreyColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _totalItem(context),
          const SizedBox(height: 10),
          _buildOrderNumber(),
          const SizedBox(height: 10),
          _buildTrackingNumber(),
          const SizedBox(height: 10),
          // ...orderedItem.orderProducts.map((e) => SingleOrderDetailsComponent(
          //     orderItem: e, isOrdered: orderedItem.orderStatus == '3')),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Utils.dynamicPrimaryColor(context),
                      backgroundColor: Colors.white,
                      side:
                          BorderSide(color: Utils.dynamicPrimaryColor(context)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      )),
                  onPressed: () {
                    if (oCubit.state is! OrderStateInitial) {
                      // print('oCubit.state ${oCubit.state}');
                      oCubit.initPage(isPaginate: false);
                    }
                    Navigator.pushNamed(context, RouteNames.singleOrderScreen,
                        arguments: orderedItem.orderId);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(Language.viewDetails.capitalizeByWord()),
                  )),
              // TextButton(
              //     onPressed: () {
              //       print(orderedItem.orderId);
              //       context
              //           .read<OrderTrackingCubit>()
              //           .trackingOrderResponse('16529475760');
              //     },
              //     child: const Text('Tracking')),
              Text(
                Utils.orderStatus("${orderedItem.orderStatus}"),
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: "${orderedItem.orderStatus}" == '4'
                        ? redColor
                        : greenColor),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _totalItem(BuildContext context) {
    final cCubit = context.read<CurrencyCubit>();
    //print('currrrrr ${cCubit.state.currencies}');
    String convertPrice(double price) {
      //return Utils.convertMulCurrency(price, context, cCubit.currency.first);
      if (cCubit.state.currencies.isNotEmpty) {
        //print('not-empty ${cCubit.state.currencies}');
        return Utils.convertMulCurrency(
            price, context, cCubit.state.currencies.first);
      } else {
        // return Utils.formatPrice(12.2, context);
        return Utils.formatPrice(price, context);
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                text: "${Language.quantity.capitalizeByWord()}: ",
                style: const TextStyle(fontSize: 16, height: 1),
                children: [
                  TextSpan(
                    text: "${orderedItem.productQty}",
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Text(
              Utils.formatDate(orderedItem.createdAt),
              style: const TextStyle(color: Color(0xff85959E)),
            )
          ],
        ),
        const SizedBox(height: 8),
        BlocBuilder<CurrencyCubit, CurrencyStateModel>(
          builder: (context, state) {
            return Text.rich(
              TextSpan(
                text: "${Language.totalAmount.capitalizeByWord()}: ",
                style: const TextStyle(fontSize: 16, height: 1),
                children: [
                  TextSpan(
                    text: convertPrice(orderedItem.totalAmount),
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildOrderNumber() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            text: "${Language.orderNumber.capitalizeByWord()}: ",
            style: const TextStyle(fontSize: 16, height: 1),
            children: [
              TextSpan(
                text: orderedItem.id.toString(),
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTrackingNumber() {
    return Text.rich(
      TextSpan(
        text: "${Language.orderTrackingNumber.capitalizeByWord()}:",
        style: const TextStyle(
            fontSize: 14,
            color: iconGreyColor,
            decoration: TextDecoration.underline,
            height: 1),
        children: [
          TextSpan(
            text: ' ${orderedItem.orderId}',
            style: const TextStyle(
                color: blackColor,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
