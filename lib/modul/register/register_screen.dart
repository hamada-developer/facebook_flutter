import 'package:facebook/modul/register/form_screen.dart';
import 'package:facebook/shared/components/component.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    editStatusBar(color: Colors.white, icon: Brightness.dark);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        actions: [
          Center(
            child: Text(
              'أنشاء حساب',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          IconButton(
            onPressed: () {
              navigateBack(context);
            },
            icon: Icon(
              Icons.arrow_forward_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Image(
            image: AssetImage(
              'assets/images/wel.jpg',
            ),
            height: 300,
            width: 300,
          ),
          Text(
            'الانضمام الى فيسبوك',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'سنساعدك على إنشاء حساب جديد فى بضع خطوات سهلة',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            height: 80,
            padding: EdgeInsetsDirectional.all(20),
            child: Material(
              borderRadius: BorderRadius.circular(5),
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                onPressed: () {
                  navigateTo(context: context , widget: FormScreen());
                },
                color: primaryColor,
                child: Text(
                  'التالى',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              navigateBack(context);
            },
            child: Text(
              'هل لديك حساب بالفعل',
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}
