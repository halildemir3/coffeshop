import 'package:coffe_shop/constants/strings.dart';
import 'package:coffe_shop/views/detailSceen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/paths.dart';
import '../../constants/style.dart';
import '../../widgets/order_detail_item.dart';
import '../../widgets/payment_item.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorX.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopBar(),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 20),
            child: buildTitle(Strings.deliveryAddress),
          ),
          Container(
            height: 100,
            color: ColorX.black2,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildText(Strings.home),
                      buildTitle("Emilia Jeha"),
                      SizedBox(
                          width: 136,
                          child: Text(
                            "Cibadak street 63, 43351 Sukabumi, Jawa Barat  ",
                            style: TextStyls.backText,
                          )),
                    ],
                  ),
                  buildText(Strings.change),
                ],
              ),
            ),
          ),
          _spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTitle(Strings.orderDetail),
                _spacer(),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return const OrderItem();
                      }),
                ),
                _spacer(),
                buildTitle(Strings.paymentMethod),
                _spacer(),
                const PaymentItem(),
                _spacer(),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: ColorX.black2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Shipping Free",style: TextStyls.backText,),Text("₺ 5.00",style: TextStyls.priceText2,)  ],
                  ),_spacer6P(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Platform Free",style: TextStyls.backText,),Text("₺ 2.00",style: TextStyls.priceText2,)  ],
                  ),_spacer6P(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Total Payment",style: TextStyls.backText,),Text("₺ 7.00",style: TextStyls.priceText2,)  ],
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(onTap: (){showAlertDialog(context);},
          child: Container(
            width: double.maxFinite,
            height: 50,
            decoration: BoxDecoration(
                color: ColorX.orange, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
               Strings.payNow,
                style: TextStyls.buttonStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _spacer6P() => const SizedBox(height: 6,);

  SizedBox _spacer() => const SizedBox(
        height: 16,
      );

  Text buildTitle(String title) {
    return Text(
      title,
      style: TextStyls.buttonStyle,
    );
  }

  Text buildText(String text) {
    return Text(
      text,
      style: TextStyls.oprangeText,
    );
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
            MaterialPageRoute(builder: (context) =>const DetailScreen()),
          );},
            child: SvgPicture.asset(
              Paths.backArrow,
            ),
          ),
          Text(
            "Checkout",
            style: TextStyls.buttonStyle,
          ),
          const SizedBox(
            width: 50,
          ),
        ],
      ),
    );
  }
}
void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(backgroundColor: ColorX.black,
        title: Center(child: SvgPicture.asset(Paths.alertDialog)),
        content: Text(Strings.yourPaymentConfirmed
            ,textAlign: TextAlign.center,style: TextStyls.alertDialogText,),
        actions: [
          GestureDetector(
            onTap: () {

              Navigator.of(context).pop();
            },
            child: Center(
              child: Container(width: 279,height: 60,decoration: BoxDecoration(color: ColorX.orange,borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text(Strings.backToHome,style: TextStyls.buttonStyle,))),
            ),
          ),
        ],
      );
    },
  );
}
