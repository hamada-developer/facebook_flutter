import 'package:facebook/modul/register/form_screen.dart';
import 'package:facebook/shared/components/component.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterScreenOne extends StatelessWidget {
  const RegisterScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5,
        actions: [
          Center(
            child: const Text(
              'أنشاء حساب',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          IconButton(
            onPressed: () {
              navigateBack(context);
            },
            icon: const Icon(
              Icons.arrow_forward_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            const Image(
              image: AssetImage(
                'assets/images/wel.jpg',
              ),
              height: 300,
              width: 300,
            ),
            const Text(
              'الانضمام الى فيسبوك',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'سنساعدك على إنشاء حساب جديد فى بضع خطوات سهلة',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 80,
              padding: const EdgeInsetsDirectional.all(20),
              child: Material(
                borderRadius: BorderRadius.circular(5),
                clipBehavior: Clip.antiAlias,
                child: MaterialButton(
                  onPressed: () {
                    navigateTo(context: context, widget: FormScreen());
                  },
                  color: primaryColor,
                  child: const Text(
                    'التالى',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                navigateBack(context);
              },
              child: const Text(
                'هل لديك حساب بالفعل',
                style: const TextStyle(
                    color: primaryColor, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
