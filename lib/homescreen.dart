import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pay/pay.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  final paymentItems = <PaymentItem> [];
  @override
  void initState() {
    paymentItems.add(PaymentItem(amount: "200",label: "Product",status: PaymentItemStatus.final_price));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ApplePayButton(
            paymentConfigurationAsset: "apay.json",
             onPaymentResult: (data){
              print(data);
             },
              paymentItems: paymentItems,
              width: 150,
              height: 60,
              style: ApplePayButtonStyle.white,
              type: ApplePayButtonType.plain,
              ),
        ),
        // Padding(
        //   padding:  EdgeInsets.only(top: size.width*0.3,left: size.width*0.25),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       GestureDetector(
        //         onTap: () async{
        //           // final file = await ImagePicker().pickImage(
        //           //     source: ImageSource.gallery,
        //           //   );
        //           // SocialShare.shareFacebookStory(
        //           //   file!.path,
        //           //   "#ffffff",
        //           //   "#000000",
        //           //    "https://google.com",
        //           //    appId: "638858840693958");
        //         },
        //         child: Container(
        //           width: size.width*0.5,
        //           height: size.height*0.075,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10.0),
        //             color: Colors.lightBlue
        //           ),
        //           child: const Center(child: Text("Google Pay",
        //           style: TextStyle(
        //             color: Colors.white
        //           ),
        //           )),
        //         ),
        //       ),
        //       SizedBox(
        //         height: size.height*0.05,
        //       ),
        //       // GestureDetector(
        //       //   onTap: () async{
        //       //     final file = await ImagePicker().pickImage(
        //       //         source: ImageSource.gallery,
        //       //       );
        //       //     SocialShare.shareInstagramStory(
        //       //       file!.path,
        //       //       backgroundTopColor: "#ffffff",
        //       //       backgroundBottomColor: "#000000",
        //       //       // attributionURL: "https://google.com",
        //       //        ).then((data) {
        //       //         print(data);
        //       //        });
        //       //    // SocialShare.shareOptions("options",imagePath: file!.path);
        //       //   },
        //       //   child: Container(
        //       //     width: size.width*0.5,
        //       //     height: size.height*0.075,
        //       //     decoration: BoxDecoration(
        //       //       borderRadius: BorderRadius.circular(10.0),
        //       //       color: Colors.lightBlue
        //       //     ),
        //       //     child: const Center(child: Text("Share on Instagram",
        //       //     style: TextStyle(
        //       //       color: Colors.white
        //       //     ),
        //       //     )),
        //       //   ),
        //       // ),
        //     ],
        //   ),
        // ),
      ),
      );
  }
}