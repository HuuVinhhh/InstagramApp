import 'package:flutter/material.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/components/buttons/link_button.dart';
import 'package:instagram_app/components/buttons/rounded_button.dart';
import 'package:instagram_app/components/textfields/rounded_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: RQColor.metaWhite,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                width: 96,
                height: 180,
              ),
              Center(
                child: SvgPicture.asset('assets/icons/logo/logo.svg'),
              ),
              const SizedBox(
                height: 30,
              ),
              RoundedTextfield(
                  controller: _emailController,
                  label: 'Email',
                  bgColor: RQColor.metaGrey,
                  borderColor: RQColor.metaBlack10,
                  textColor: RQColor.metaBlack),
              const SizedBox(
                height: 10,
              ),
              RoundedTextfield(
                  controller: _usernameController,
                  label: 'Username',
                  bgColor: RQColor.metaGrey,
                  borderColor: RQColor.metaBlack10,
                  textColor: RQColor.metaBlack),
              const SizedBox(
                height: 10,
              ),
              RoundedTextfield(
                controller: _passwordController,
                label: 'Password',
                bgColor: RQColor.metaGrey,
                borderColor: RQColor.metaBlack10,
                textColor: RQColor.metaBlack,
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedTextfield(
                controller: _passwordConfirmController,
                label: 'Password confirmation',
                bgColor: RQColor.metaGrey,
                borderColor: RQColor.metaBlack10,
                textColor: RQColor.metaBlack,
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    LinkButton(
                      label: 'Forgot password?',
                      onPressed: () {
                        print('pw forgot');
                      },
                      textColor: RQColor.metaBlue,
                      fontSize: RQFont.fs12,
                      fontWeight: RQFont.fw400,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedButton(
                label: 'Sign up',
                onPressed: () {
                  print('Sign up');
                },
                bgColor: RQColor.metaBlue,
                textColor: RQColor.metaWhite,
                fontSize: RQFont.fs13,
                fontWeight: RQFont.fw500,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                width: double.maxFinite,
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: _media.width / 3,
                      height: 1,
                      child: Container(
                        decoration: BoxDecoration(color: RQColor.metaBlack20),
                      ),
                    ),
                    Text(
                      'OR',
                      style: TextStyle(
                          color: RQColor.metaBlack40,
                          fontSize: RQFont.fs13,
                          fontWeight: RQFont.fw500),
                    ),
                    SizedBox(
                      width: _media.width / 3,
                      height: 1,
                      child: Container(
                        decoration: BoxDecoration(color: RQColor.metaBlack20),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: RQColor.metaBlack40,
                          fontSize: RQFont.fs13,
                          fontWeight: RQFont.fw400),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    LinkButton(
                        label: 'Log in',
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        textColor: RQColor.metaBlue,
                        fontSize: RQFont.fs13,
                        fontWeight: RQFont.fw400)
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
