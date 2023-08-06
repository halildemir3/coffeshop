import 'package:coffe_shop/constants/paths.dart';
import 'package:coffe_shop/constants/strings.dart';
import 'package:coffe_shop/views/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorX.black,
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 453,
            decoration: BoxDecoration(
                borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(100)),
                image: DecorationImage(
                    image: AssetImage(Paths.splash), fit: BoxFit.fill)),
          ),const SizedBox(height: 60,),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: Strings.enjoyYourDay[0],
              style: TextStyls.title,
              children: <TextSpan>[
                TextSpan(
                    text: Strings.enjoyYourDay[1],
                    style: TextStyls.title.copyWith(color: ColorX.orange)),
                TextSpan(text: Strings.enjoyYourDay[2], style: TextStyls.title),
              ],
            ),
          ),const SizedBox(height: 16,),
          Text(
            Strings.weWillServe,
            textAlign: TextAlign.center,
            style: TextStyls.backText,
          ),const SizedBox(height: 24,),
          GestureDetector(onTap: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );},
            child: Container(
              height: 48,
              width: 259,
              decoration: BoxDecoration(
                  color: ColorX.orange, borderRadius: BorderRadius.circular(8)),
              child: Center(
                  child: Text(
                Strings.getStarted,
                style: TextStyls.buttonStyle,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
