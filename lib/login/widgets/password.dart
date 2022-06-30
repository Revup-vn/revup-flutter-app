import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:revup/l10n/l10n.dart';

class PasswordForm extends StatelessWidget {
  const PasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    const phoneNumber = '+84 163999999';
    return const Scaffold(
      body: PinCodePasswordVerification(phoneNumber),
    );
  }
}

class PinCodePasswordVerification extends StatefulWidget {
  const PinCodePasswordVerification(this.phoneNumber, {super.key});
  final String? phoneNumber;

  @override
  State<StatefulWidget> createState() => _PinCodePasswordVerification();
}

class _PinCodePasswordVerification extends State<PinCodePasswordVerification> {
  final TextEditingController _textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  bool isSigup = false; // sigup 2
  bool isChangePassword = false; //changepwd1
  bool isOTP = false; //login 7, sigup 1,
  bool isEnterPass = false; //login 6
  bool isConfirmPass = true; //sigup 5, changepwd3, login9
  bool hasDescriptionLabel = true; //true khong hien so dien thoai
  bool hasButton = true; //true voi man hinh co button
  bool isDisable = true; // true disable button
  bool hasError = false;
  String currentText = '';
  late String headLineLabel = '';
  late String bodyLabel = '';
  late String footerLabel = '';
  //final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isEnterPass) {
      headLineLabel = context.l10n.enterPasswordLabel;
      bodyLabel = context.l10n.loginPhoneNumberLabel;
      footerLabel = context.l10n.forgotPasswordLabel;
    } else if (isOTP) {
      headLineLabel = context.l10n.enterOTPCodeLabel;
      bodyLabel = context.l10n.sendOTPCodeToLabel;
      footerLabel = context.l10n.resendOTPLabel;
    } else if (isSigup) {
      headLineLabel = context.l10n.setupPasswordLabel;
      bodyLabel = context.l10n.enterNewPasswordDescriptionLabel;
      footerLabel = context.l10n.showPasswordLabel;
    } else if (isChangePassword) {
      headLineLabel = context.l10n.currentPasswordLabel;
      bodyLabel = '';
      footerLabel = context.l10n.showPasswordLabel;
    } else if (isConfirmPass) {
      headLineLabel = context.l10n.confirmPasswordLabel;
      bodyLabel = '';
      footerLabel = context.l10n.showPasswordLabel;
    } else {
      //login 8, changepwd2
      headLineLabel = context.l10n.enterNewPassWordForgotLabel;
      bodyLabel = '';
      footerLabel = context.l10n.showPasswordLabel;
    }
    return SafeArea(
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // dung column
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                IconButton(
                  alignment: const Alignment(-4, 0),
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                AutoSizeText(
                  headLineLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
                RichText(
                  text: TextSpan(
                    text: bodyLabel,
                    children: [
                      TextSpan(
                        text:
                            hasDescriptionLabel ? '${widget.phoneNumber}' : '',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                FormBuilder(
                  // fluter formbuilder
                  child: PinCodeTextField(
                    appContext: context,
                    length: 6,
                    obscureText: true,
                    //obscuringCharacter: '*',
                    //blinkWhenObscuring: true,
                    animationType: AnimationType.scale,
                    validator: (v) {
                      
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.underline,
                      inactiveColor: const Color.fromRGBO(128, 118, 103, 100),
                      selectedColor: const Color.fromRGBO(128, 118, 103, 100),
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    errorAnimationController: errorController,
                    controller: _textEditingController,
                    keyboardType: TextInputType.number,

                    onCompleted: (v) {
                      setState(() {
                        isDisable = false;
                      });
                    },
                    onChanged: (v) {
                      if(v.length < 6){
                        setState(() {
                          isDisable = true;
                        });
                      }
                    },
                  ),
                ),
                AutoSizeText(
                  hasError ? 'show text when error' : '',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: AutoSizeText(
                    footerLabel,
                    style: const TextStyle(
                      color: Color.fromRGBO(159, 0, 194, 100),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                  onTap: () {
                    //todo code here
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                if (hasButton)
                  ElevatedButton(
                    onPressed: isDisable ? null :() {
                      
                    } ,
                    style: ElevatedButton.styleFrom(
                      
                      primary: Colors.yellow,
                      minimumSize: const Size(380, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: const AutoSizeText(
                      'Continue',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      maxLines: 1,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
