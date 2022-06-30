import 'package:flutter/material.dart';
import 'package:revup/l10n/l10n.dart';

void main() => runApp(const Signup6Page());

class Signup6Page extends StatelessWidget {
  const Signup6Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
            padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
            child: Text(
              l10n.completeRegistrationTxt,
              style: TextStyle(fontSize: 30),
            )),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(16, 60, 10, 16),
          child: CircleAvatar(
            radius: 80,
            backgroundColor: Color.fromARGB(255, 242, 226, 80),
            child: Text(
              'N',
              style: TextStyle(fontSize: 90, color: Colors.white),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(fontSize: 22),
                  decoration: const InputDecoration(
                      labelText: 'FULL NAME',
                      labelStyle: TextStyle(fontSize: 18)),
                ),
                TextFormField(
                  style: TextStyle(fontSize: 22),
                  decoration: const InputDecoration(
                      labelText: 'EMAIL', labelStyle: TextStyle(fontSize: 18)),
                ),
                TextFormField(
                  style: TextStyle(fontSize: 22),
                  decoration: const InputDecoration(
                    hintText: 'Enter date',
                    labelText: 'Date',
                    labelStyle: TextStyle(fontSize: 18),
                  ),
                  keyboardType: TextInputType.datetime,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 22),
                  decoration: const InputDecoration(
                      labelText: 'ADRESS', labelStyle: TextStyle(fontSize: 18)),
                ),
                Container(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 100, 16, 10),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(850, 50),
                            primary: Color.fromARGB(255, 87, 68, 16),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text('DONE'))),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
