import 'package:bookworm/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/buttons.dart';
import '../widgets/input_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: bBackgroundStartScreen,
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'loginPage.login'.tr(),
              style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: bPrimaryColor),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                InputForm(
                  title: 'loginPage.email'.tr(),
                  labelText: 'loginPage.email'.tr(),
                  hintText: 'loginPage.enterEmail'.tr(),
                  controller: emailController,
                  obscureText: false,
                ),
                InputForm(
                  obscureText: true,
                  title: 'loginPage.password'.tr(),
                  labelText: 'loginPage.password'.tr(),
                  hintText: 'loginPage.enterPassword'.tr(),
                  controller: passwordController,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              PrimaryButton(
                onpressed: () {},
                title: 'loginPage.loginEnter'.tr(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GoogleButton(
                  title: 'loginPage.loginGoogle'.tr(),
                ),
              ),
              LineTextButton(
                title: 'loginPage.dontHaveAaccount'.tr(),
                textButton: 'loginPage.signUp'.tr(),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
