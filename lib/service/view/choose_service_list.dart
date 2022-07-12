import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../models/service_data.dart';
import '../widgets/service_checkbox_list_tile.dart';

class ChooseServiceList extends StatelessWidget {
  const ChooseServiceList({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FormBuilder(
        child: ListView(
          children: const [
            ServiceCheckboxListTile(
              //onTap: Navigator.of(context).push(route),
              serviceData: ServiceData(
                name: 'Cat Service',
                id: '1',
                imageUrl:
                    'https://images.unsplash.com/photo-1533738363-b7f9aef128ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
              ),
            ),
            ServiceCheckboxListTile(
              //onTap: Navigator.of(context).push(route),
              serviceData: ServiceData(
                name: 'Cat Service',
                id: '1',
                imageUrl:
                    'https://images.unsplash.com/photo-1533738363-b7f9aef128ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
