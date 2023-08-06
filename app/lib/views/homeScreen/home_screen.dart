import 'package:coffe_shop/constants/style.dart';
import 'package:coffe_shop/views/detailSceen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/colors.dart';
import '../../constants/paths.dart';
import '../../constants/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorX.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0, right: 24, left: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  Paths.menu,
                ),
                Text(
                  Strings.enjoyYourDay[1],
                  style: TextStyls.title.copyWith(color: ColorX.orange),
                ),
                SvgPicture.asset(Paths.union)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0, right: 24, left: 24),
            child: Row(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: Strings.makeYourDay[0],
                    style: TextStyls.title,
                    children: <TextSpan>[
                      TextSpan(
                          text: Strings.makeYourDay[1],
                          style: TextStyls.title.copyWith(color: ColorX.orange)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorX.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                        cursorColor: ColorX.white,
                        cursorHeight: 25,
                        autofocus: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: Strings.searchYourFav,
                            hintStyle: TextStyle(color: ColorX.textGrey),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(Paths.search),
                            ))),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(Paths.choose),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 24, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.spacialForYou,
                  style: TextStyls.buttonStyle,
                ),
                Text(
                  Strings.seeAll,
                  style: TextStyls.backText,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: SizedBox(
              height: 254,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorX.textGrey,
                            borderRadius: BorderRadius.circular(14)),
                        child: GestureDetector(onTap: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DetailScreen()),
                        );},
                          child: const CoffeItem1(),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 24.0, left: 24, bottom: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.moreProduct,
                  style: TextStyls.buttonStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: SizedBox(
              height: 98,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: GestureDetector(onTap: (){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DetailScreen()),
                      );},
                        child: const CoffeItem2(),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class CoffeItem2 extends StatelessWidget {
  const CoffeItem2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorX.textGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 233,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: ColorX.white.withOpacity(0.05),
                width: 0.5),
            gradient: LinearGradient(
                colors: ColorX.linearBlack,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 10.0, left: 16),
              child: Container(
                width: 64,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(Paths.coffe12),
                      fit: BoxFit.fill),
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
                Text(
                  "Organic Roast",
                  style: TextStyls.backText,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "€ 10.12",
                  style: TextStyls.priceText,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CoffeItem1 extends StatelessWidget {
  const CoffeItem1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: ColorX.white.withOpacity(0.05),
              width: 0.5),
          gradient: LinearGradient(
              colors: ColorX.linearBlack,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(14)),
      width: 186,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.maxFinite,
              height: 156,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Paths.coffe12)),
                  borderRadius: BorderRadius.circular(14)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                          color:
                              ColorX.black.withOpacity(0.7),
                          borderRadius:
                              BorderRadius.circular(5)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(Paths.star),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4.4",
                            style: TextStyls.backText.copyWith(
                                color: ColorX.gold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Cuppacino Latta",
                  style: TextStyls.buttonStyle,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Organic Roast",
                          style: TextStyls.backText,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "€ 5.12",
                          style: TextStyls.priceText,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: ColorX.orange,
                        child: Icon(
                          Icons.add,
                          color: ColorX.white,size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
