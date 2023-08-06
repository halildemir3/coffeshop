import 'package:coffe_shop/widgets/check_button.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/paths.dart';
import '../constants/style.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: ColorX.textGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: double.maxFinite,
          height: 64,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:
              Border.all(color: ColorX.white.withOpacity(0.05), width: 0.5),
              gradient: LinearGradient(
                  colors: ColorX.linearBlack,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, ),
                      child: Container(
                        width: 58,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(Paths.card), fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Text(
                      "Cerdas Debit Card",
                      style: TextStyls.buttonStyle,
                    ),


                  ],
                ), const CheckButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}