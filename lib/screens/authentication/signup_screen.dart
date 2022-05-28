import 'package:bookworm/screens/authentication/login_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../widgets/buttons.dart';
import '../widgets/input_form.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              'signUp.signUp'.tr(),
              style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: bPrimaryColor),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                InputForm(
                  title: 'signUp.name'.tr(),
                  labelText: 'signUp.name'.tr(),
                  hintText: 'signUp.enterName'.tr(),
                  controller: nameController,
                  obscureText: false,
                ),
                InputForm(
                  title: 'signUp.email'.tr(),
                  labelText: 'signUp.email'.tr(),
                  hintText: 'signUp.enterEmail'.tr(),
                  controller: emailController,
                  obscureText: false,
                ),
                InputForm(
                  obscureText: true,
                  title: 'signUp.password'.tr(),
                  labelText: 'signUp.password'.tr(),
                  hintText: 'signUp.enterPassword'.tr(),
                  controller: passwordController,
                ),
                InputForm(
                  obscureText: true,
                  title: 'signUp.repeatPassword'.tr(),
                  labelText: 'signUp.repeatPassword'.tr(),
                  hintText: 'signUp.repeatPassword'.tr(),
                  controller: repeatPasswordController,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 140),
                  child: Text('signUp.character'.tr(),
                      style: GoogleFonts.poppins(color: bPrimaryTextColor)),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: PrimaryButton(
                  onpressed: () {},
                  title: 'signUp.createAccount'.tr(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GoogleButton(
                  title: 'signUp.signUpGoogle'.tr(),
                  onpressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: LineTextButton(
                  title: 'loginPage.dontHaveAaccount'.tr(),
                  textButton: 'loginPage.signUp'.tr(),
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
