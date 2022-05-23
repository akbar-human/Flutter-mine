import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget inputChild(
          {required String nameField,
          required String hintField,
          bool isPassword = false}) {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameField,
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                obscureText: isPassword,
                decoration: InputDecoration(
                  hintText: hintField,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget tacButton() {
        return Container(
          margin: EdgeInsets.only(top: 50,bottom: 73),
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            CustomTextFormField(
              nameField: 'Full Name',
              hintField: 'Your full name',
            ),
            CustomTextFormField(
                nameField: 'Email Address', hintField: 'Your email address'),
            CustomTextFormField(
                nameField: 'Password',
                hintField: 'Your password',
                isPassword: true),
            CustomTextFormField(
                nameField: 'Your Hobby', hintField: 'Your hobby'),
            CustomButton(
              title: 'Get Started',
              onPressed: () {
                Navigator.pushNamed(context, '/bonus');
              },
              width: double.infinity,
            ),
            tacButton()
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
          ],
        ),
      ),
    );
  }
}
