import 'package:flutter/material.dart';
import 'package:project_windows/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
        {
          Key?key,
          required this.webScreenLayout,required this.mobileScreenLayout

        }
      ):super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth>webScreenSize){
            //Web screen
            return webScreenLayout;
          }
          //mobile screen
          return mobileScreenLayout;
        }
    );
  }
}
