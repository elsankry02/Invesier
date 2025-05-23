import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:invesier/components/custom_primary_button.dart';
import 'package:invesier/components/custom_rich_text.dart';
import 'package:invesier/constant/color_manger.dart';
import 'package:invesier/constant/image_manger.dart';
import 'package:invesier/features/welcome_page/widget/welcome_display_widget.dart';
import 'package:invesier/router/router.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //! BackGroundImage
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(ImageManger.kLogIn),
          ),
        ),
        child: Column(
          children: [
            //! Welcome Display Widget
            WelcomeDisplayWidget(),
            SizedBox(height: h * 0.080),
            //! Get Started
            CustomPrimaryButton(
              title: 'Get Started',
              horizontal: 56,
              onTap: () {
                context.router.push(SignupRoute());
              },
              titleColor: ColorManger.kWhite,
              gradient: LinearGradient(
                colors: [ColorManger.kEucalyptus, ColorManger.kTurquoiseBlue],
              ),
            ),

            SizedBox(height: h * 0.012),
            //! Login
            CustomPrimaryButton(
              title: 'Login',
              titleColor: ColorManger.kEucalyptus,
              border: Border.all(width: 2, color: ColorManger.kEucalyptus),
              horizontal: 56,
              onTap: () {
                context.router.push(LoginRoute());
              },
            ),
            SizedBox(height: h * 0.012),
            //! RichTextWidget
            CustomRichText(
              onTap: () {
                context.router.push(SignupRoute());
              },
              textSpanOne: 'Dont have an account?',
              textSpanTwo: ' Sign up',
            ),
          ],
        ),
      ),
    );
  }
}
