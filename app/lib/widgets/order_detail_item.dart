import 'package:coffe_shop/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/paths.dart';
import '../constants/style.dart';


class OrderItem extends StatelessWidget {
  const OrderItem({
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
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:
              Border.all(color: ColorX.white.withOpacity(0.05), width: 0.5),
              gradient: LinearGradient(
                  colors: ColorX.linearBlack,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 16),
                    child: Container(
                      width: 64,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage(Paths.coffe12), fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Nescafe Arabican",
                        style: TextStyls.buttonStyle,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "€ 10.12",
                        style: TextStyls.priceText,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                  height: 40,
                  child: CounterBlock(
                    size: 20,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}