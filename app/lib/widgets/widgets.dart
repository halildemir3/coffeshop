import 'package:coffe_shop/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:cart_stepper/cart_stepper.dart';
class CounterBlock extends StatefulWidget {
  const CounterBlock({Key? key, required this.size, }) : super(key: key);

final double  size;

  @override
  State<CounterBlock> createState() => _CounterBlockState();
}

class _CounterBlockState extends State<CounterBlock> {

  int _counter = 1;


  @override


  @override
  Widget build(BuildContext context) {
    return

      Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: CartStepperInt(
            value: _counter,
            size: widget.size,
            style: CartStepperStyle(
              foregroundColor: ColorX.orange,
              activeForegroundColor: ColorX.orange,
              activeBackgroundColor: ColorX.black2,
              border: Border.all(color: ColorX.black2),
              radius: const Radius.circular(4),
              elevation: 0,
              buttonAspectRatio: 1,
            ),
            didChangeCount: (count) {
              setState(() {
                _counter = count;
              });
            },
          ),
        ),

    );
  }
}