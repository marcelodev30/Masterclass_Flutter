import 'package:ex01/core/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/app_textStyle.dart';
import '../widgets/app_button.dart';

class Mockups01 extends StatefulWidget {
  const Mockups01({super.key});

  @override
  State<Mockups01> createState() => _Mockups01State();
}

class _Mockups01State extends State<Mockups01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(50))),
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomStart: Radius.elliptical(100, 100))),
                        )
                      ]),
                  Container(
                    margin: EdgeInsets.only(left: 7),
                    height: 120,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadiusDirectional.only(
                            topEnd: Radius.elliptical(150, 165),
                            bottomStart: Radius.elliptical(150, 165))),
                  )
                ]),
            SizedBox(height: 25),
            Text('Get your Money',
                style: AppTextStyle.style27w700.copyWith(color: Colors.white)),
            Text('Under Control',
                style: AppTextStyle.style27w700.copyWith(color: Colors.white)),
            SizedBox(height: 25),
            Text('Manage your expenses.',
                style: AppTextStyle.style20W700.copyWith(color: Colors.grey)),
            Text('Seamlessly.',
                style: AppTextStyle.style20W700.copyWith(color: Colors.grey)),
            SizedBox(height: 25),
            ApptButton(
              text: Text('Sign Up with Email ID',
                  style:
                      AppTextStyle.style17W600.copyWith(color: Colors.white)),
              color: const Color.fromARGB(199, 124, 77, 255),
              onPressed: () {},
            ),
            SizedBox(height: 15),
            ApptButton(
              text: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset(AppIcons.googleIcon, width: 18),
                SizedBox(width: 6),
                Text('Sign Up with Google',
                    style:
                        AppTextStyle.style17W600.copyWith(color: Colors.black))
              ]),
              color: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: AppTextStyle.style15W400White,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: AppTextStyle.style15W400UnderlineWhite,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
