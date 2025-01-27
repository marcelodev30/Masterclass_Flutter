import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/app_colors.dart';
import '../core/app_image.dart';
import '../shared/app_textStyle.dart';

class Mockups02Page extends StatefulWidget {
  const Mockups02Page({super.key});

  @override
  State<Mockups02Page> createState() => _Mockups02PageState();
}

class _Mockups02PageState extends State<Mockups02Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  leading: Icon(Icons.arrow_back_ios),
      //foregroundColor: Colors.white,
      //  backgroundColor: Colors.transparent),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [AppColors.orange, AppColors.magenta],
        )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [Icon(Icons.arrow_back_ios, color: Colors.white)],
              ),
            ),
            SizedBox(height: 100),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      SvgPicture.asset(AppIcons.tinderIcon, width: 35),
                      SizedBox(width: 10),
                      Text('tinder',
                          style: TextStyle(
                                  fontSize: 65, fontWeight: FontWeight.bold)
                              .copyWith(color: Colors.white))
                    ]),
                    SizedBox(height: 50),
                    Text(
                        'By tapping Create Account or Sign In, you agree to our',
                        style: AppTextStyle.style14White),
                    Row(children: [
                      Text('Terms. ',
                          style: AppTextStyle.style15W400UnderlineWhite),
                      Text('Learn how we process your data in our ',
                          style: AppTextStyle.style14White),
                      Text('Privacy',
                          style: AppTextStyle.style15W400UnderlineWhite),
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('Policy',
                          style: AppTextStyle.style15W400UnderlineWhite),
                      Text(' end ', style: AppTextStyle.style14White),
                      Text('Cookies Policy',
                          style: AppTextStyle.style15W400UnderlineWhite),
                    ]),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                  child: Column(
                    children: [
                      ButtonLogin(
                          titulo: 'SIGN IN WITH APPLE',
                          icon: AppIcons.appleIcon),
                      SizedBox(height: 14),
                      ButtonLogin(
                          titulo: 'SIGN IN WITH FACEBOOK',
                          icon: AppIcons.faceIcon),
                      SizedBox(height: 14),
                      ButtonLogin(
                          titulo: 'SIGN IN WITH PHONE NUMBER',
                          icon: AppIcons.messageIcon),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Trouble',
                              style: AppTextStyle.style15W400White
                                  .copyWith(fontWeight: FontWeight.w600)),
                          TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  padding: WidgetStatePropertyAll(
                                      EdgeInsets.symmetric(horizontal: 2))),
                              child: Text('Signing In ?',
                                  style: AppTextStyle.style14White
                                      .copyWith(fontWeight: FontWeight.w600)))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  final String titulo;
  final String icon;
  const ButtonLogin({super.key, required this.titulo, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
              side: WidgetStatePropertyAll(BorderSide(color: Colors.white)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              )),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SvgPicture.asset(icon, height: 20),
              ),
              Expanded(child: Container()),
              Text(
                titulo,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Expanded(child: Container())
            ],
          )),
    );
  }
}
