// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revup/l10n/l10n.dart';

void main() => runApp(const PaymentPage());

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _buildListView(context),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  ListView _buildListView(BuildContext context) {
    final l10n = context.l10n;
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(32, 50, 16, 0),
          child: Text(
            l10n.paymentText,
            style: const TextStyle(fontSize: 30),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(32, 60, 16, 0),
          child: Text(
            l10n.morePaymentMethods,
            style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 24, 23, 23),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(160, 60),
                    textStyle:
                        TextStyle(color: Color.fromARGB(255, 41, 44, 46)),
                    backgroundColor: Color.fromARGB(255, 214, 211, 211),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send_rounded,
                    size: 30,
                    color: Color.fromARGB(54, 11, 12, 12),
                  ),
                  label: Text(
                    l10n.zaloPayText,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 24, 23, 23),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(160, 60),
                    textStyle:
                        TextStyle(color: Color.fromARGB(255, 41, 44, 46)),
                    backgroundColor: Color.fromARGB(255, 214, 211, 211),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.send_rounded,
                    size: 30,
                    color: Color.fromARGB(54, 11, 12, 12),
                  ),
                  label: Text(
                    l10n.viettelMoneyText,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 24, 23, 23),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(160, 60),
                    textStyle:
                        TextStyle(color: Color.fromARGB(255, 41, 44, 46)),
                    backgroundColor: Color.fromARGB(255, 214, 211, 211),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.send_rounded,
                    size: 30,
                    color: Color.fromARGB(54, 11, 12, 12),
                  ),
                  label: Text(
                    l10n.momoText,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 24, 23, 23),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(160, 60),
                    textStyle:
                        TextStyle(color: Color.fromARGB(255, 41, 44, 46)),
                    backgroundColor: Color.fromARGB(255, 214, 211, 211),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.send_rounded,
                    size: 30,
                    color: Color.fromARGB(54, 11, 12, 12),
                  ),
                  label: Text(
                    l10n.cashText,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 24, 23, 23),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
