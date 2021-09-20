import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


final String Users = 'Users';
editStatusBar({
  Color color = secondaryColor,
  Brightness iconColor = Brightness.light,
}) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarIconBrightness: iconColor,
    ),
  );
}

final ArabicNumbers arabicNumber = ArabicNumbers();

int CounterImages({
  required LocalData postData,
}) {
  int imageCount;
  if (postData.post_image == null &&
      postData.two_post_image == null &&
      postData.three_post_image == null &&
      postData.four_post_image == null &&
      postData.five_post_image == null)
    imageCount = 0;
  else if (postData.post_image != null &&
      postData.two_post_image == null &&
      postData.three_post_image == null &&
      postData.four_post_image == null &&
      postData.five_post_image == null)
    imageCount = 1;
  else if (postData.post_image != null &&
      postData.two_post_image != null &&
      postData.three_post_image == null &&
      postData.four_post_image == null &&
      postData.five_post_image == null)
    imageCount = 2;
  else if (postData.post_image != null &&
      postData.two_post_image != null &&
      postData.three_post_image != null &&
      postData.four_post_image == null &&
      postData.five_post_image == null)
    imageCount = 3;
  else if (postData.post_image != null &&
      postData.two_post_image != null &&
      postData.three_post_image != null &&
      postData.four_post_image != null &&
      postData.five_post_image == null)
    imageCount = 4;
  else
    imageCount = 5;
  return imageCount;
}
