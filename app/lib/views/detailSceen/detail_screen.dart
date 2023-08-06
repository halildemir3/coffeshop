import 'dart:math';

import 'package:coffe_shop/constants/strings.dart';
import 'package:coffe_shop/views/homeScreen/home_screen.dart';
import 'package:coffe_shop/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/paths.dart';
import '../../constants/style.dart';
import '../checOut/check_out_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorX.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopBar(),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            width: 264, // Çemberin genişliği
            height: 264, // Çemberin yüksekliği
            child: CustomPaint(
              painter: HalfCircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 112, // Dairenin yarıçapı

                  backgroundImage: AssetImage(Paths
                      .coffe12), // Daire içine resim ekleyin veya boş bırakın.
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const CounterBlock(size: 30,),
          Expanded(
              child: Container(
            color: ColorX.black3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nescafe Arabia",
                            style:TextStyls.coffeTitle
                          ),
                          Text(
                            "Decof Roast",
                            style:TextStyls.coffeDescription
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 46,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: ColorX.white,
                                width: 0.5,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Paths.star),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "4,4",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: ColorX.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            "₺ 20.75",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: ColorX.orange),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                   Strings.description,
                    style: TextStyls.coffeDescription,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    Strings.descriptionExample,
                    style: TextStyls.alertDialogText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border:
                                  Border.all(color: ColorX.orange, width: 0.5)),
                          child: Center(
                              child: Text(
                            "S",
                            style:
                                TextStyle(fontSize: 20, color: ColorX.orange),
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: ColorX.orange,
                              border:
                                  Border.all(color: ColorX.orange, width: 0.5)),
                          child: Center(
                              child: Text(
                            "M",
                            style: TextStyle(fontSize: 20, color: ColorX.white),
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border:
                                  Border.all(color: ColorX.orange, width: 0.5)),
                          child: Center(
                              child: Text(
                            "L",
                            style:
                                TextStyle(fontSize: 20, color: ColorX.orange),
                          )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(onTap: (){Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CheckOutScreen()),
        );},
          child: Container(
            width: double.maxFinite,
            height: 50,
            decoration: BoxDecoration(
                color: ColorX.orange, borderRadius: BorderRadius.circular(8)),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Paths.myCart2),
                Text(
                  Strings.buyNow,
                  style: TextStyls.buttonStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HalfCircleBorder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 2;
    const  double strokeWidth = 4.0; // İstenilen border kalınlığı
    final Color strokeColor =
        ColorX.white.withOpacity(0.1); // İstenilen border rengi

    final Paint paint = Paint()
      ..color = strokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
      pi, // 12 saat yönünde başlayarak (-pi/2)
      -pi, // Yarım daire (pi)
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, right: 24, left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(onTap: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );},
            child: SvgPicture.asset(
              Paths.backArrow,
            ),
          ),
          Text(
           Strings.detailItem,
            style: TextStyls.buttonStyle,
          ),
          Row(
            children: [
              SvgPicture.asset(Paths.myCart2),
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset(Paths.favorite2),
            ],
          )
        ],
      ),
    );
  }
}
