import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CheckButton extends StatefulWidget {
  const CheckButton({Key? key}) : super(key: key);

  @override
  State<CheckButton> createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckButton> {
   bool isTrue=true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){setState(() {
        isTrue=!isTrue;
      });},
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(color: ColorX.transparent,shape: BoxShape.circle,

              border: Border.all(width: 1, color: ColorX.orange)),
          child: isTrue? Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(color: ColorX.orange,shape: BoxShape.circle,

                  border: Border.all(width: 1, color: ColorX.orange)),

            ),
          ):null,
        ),

    );
  }
}
