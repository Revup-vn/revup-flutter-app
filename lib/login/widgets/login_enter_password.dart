import 'dart:async';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:revup/l10n/l10n.dart';

class LoginEnterPassword extends StatelessWidget {
  const LoginEnterPassword({super.key});

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

  bool hasError = false;
  String currentText = '';
  bool isNewPass = true;
  bool isOTP = false;
  bool isEnterPass = false;
  //final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var headLineLabel = '';
    var bodyLabel = '';
    var footerLabel = '';
    if (isEnterPass) {
      headLineLabel = context.l10n.labelEnterPassword;
      bodyLabel = context.l10n.labelLoginPhoneNumber;
      footerLabel = context.l10n.labelForgotPassword;
    } else if (isOTP) {
      headLineLabel = context.l10n.labelEnterOTPCode;
      bodyLabel = context.l10n.labelOTPSendTo;
      footerLabel = context.l10n.labelResendOTP;
    } else {
      headLineLabel = context.l10n.labelEnterNewPasswordForgot;
      bodyLabel = '';
      footerLabel = context.l10n.labelShowPassWord;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    //Todo code
                  },
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  headLineLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                child: RichText(
                  text: TextSpan(
                    text: bodyLabel,
                    children: [
                      TextSpan(
                        text: isNewPass ? '' : '${widget.phoneNumber}',
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
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 6,
                    obscureText: true,
                    //obscuringCharacter: '*',
                    //blinkWhenObscuring: true,
                    animationType: AnimationType.scale,
                    validator: (v) {
                      //todo code
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
                      //todo code
                    },
                    onChanged: (v) {
                      //todo code
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                child: Text(
                  hasError ? 'show text when error' : '',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  child: TextButton(
                    child: Text(
                      footerLabel,
                      style: const TextStyle(
                        color: Color.fromRGBO(159, 0, 194, 100),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {
                      //todo code here
                    },
                  ),
                ),
              ),
              if (isNewPass)
                Align(
                  child: ElevatedButton(
                    onPressed: () {
                      //todo code here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      minimumSize: const Size(380, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

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
}
