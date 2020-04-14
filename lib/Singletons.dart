

import 'package:flutter/material.dart';

class Utilities{


   int getOrientation(BuildContext context)
  {
    if(MediaQuery.of(context).orientation==Orientation.landscape)
      return 1;
    else
      return 0;
  }

  double getScreenWidth(BuildContext context)
  {
    return MediaQuery.of(context).size.width;
  }
   double getScreenHeights(BuildContext context)
   {
     return MediaQuery.of(context).size.width;
   }
}