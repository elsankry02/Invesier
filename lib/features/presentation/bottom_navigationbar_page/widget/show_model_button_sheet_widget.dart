import 'package:flutter/material.dart';
import 'package:invesier/core/constant/color_manger.dart';
import 'package:invesier/core/extension/extension.dart';
import 'package:invesier/features/presentation/bottom_navigationbar_page/widget/button_sheet_text_widget.dart';

class ShowModelButtonSheetWidget extends StatelessWidget {
  const ShowModelButtonSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorManger.kHeavyMetal,
            ColorManger.kBackGround,
            ColorManger.kBackGround,
            ColorManger.kBackGround,
            ColorManger.kBackGround,
            ColorManger.kBackGround,
            ColorManger.kBackGround,
            ColorManger.kBackGround,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: context.height * 0.024),
            //! Post
            ButtonSheetTextWidget(title: 'Post', onTap: () {}),
            SizedBox(height: 10),
            Divider(thickness: 2),
            SizedBox(height: 10),
            //! Live
            ButtonSheetTextWidget(title: 'Live', onTap: () {}),
            SizedBox(height: context.height * 0.050),
          ],
        ),
      ),
    );
  }
}
