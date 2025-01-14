import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:healthn/utils/widget_functions.dart';
import 'package:provider/provider.dart';

import '../providers/nurse_provider.dart';

class SpecialityPage extends StatelessWidget {
  static const String routeName = 'speciality';

  const SpecialityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speciality'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSingleTextInputDialog(
            context: context,
            title: 'Add Speciality',
            onSubmit: (value) {
              EasyLoading.show(status: 'please wait');
              Provider.of<NurseProvider>(context, listen: false)
                  .addSpeciality(value)
                  .then((value) {
                EasyLoading.dismiss();
                showMsg(context ,'Speciality Added');
              });
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: Consumer<NurseProvider>(
          builder: (context, provider, child) => provider.specialityList.isEmpty
              ? const Center(
            child: Text('No Speciality Found'),
          )
              : ListView.builder(
                  itemCount: provider.specialityList.length,
                  itemBuilder: (context, index) {
                    final speciality = provider.specialityList[index];
                    return ListTile(
                      title: Text(speciality.name),
                    );
                  },
                )),
    );
  }
}
