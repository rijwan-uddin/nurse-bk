import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:healthn/customwidgets/radio_group.dart';
import 'package:healthn/model/nurse.dart';
import 'package:healthn/model/speciality.dart';
import 'package:healthn/utils/constants.dart';
import 'package:healthn/utils/widget_functions.dart';
import 'package:provider/provider.dart';

import '../providers/nurse_provider.dart';

class AddNursePage extends StatefulWidget {
  static const String routeName = 'addnurse';

  const AddNursePage({super.key});

  @override
  State<AddNursePage> createState() => _AddNursePageState();
}

class _AddNursePageState extends State<AddNursePage> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  final _priceController = TextEditingController();
  final _statusController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  Speciality? speciality;

  String? imageLocalPath;

  String mountDescription =
      NurseUtils.mountList.first; //which gender's patient want to serve
  String focusType = NurseUtils.focusList.first; //service time
  String nurseType = NurseUtils.typeList.first; //nurse gender

  // final _modelController
  // final _dimensionController
  // final _weightController
  // final _lensDiameterController
  // final _priceController
  // final _stockController
  //
  // final _formKey = GlobalKey<FormState>();
  // Brand? brand;
  //
  // String? imageLocalPath;
  //
  // String mountDescription = TelescopeUtils.mountList.first;
  // String focusType = TelescopeUtils.focusList.first;
  // String telescopeType = TelescopeUtils.typeList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Nurses'),
          actions: [
            IconButton(
              onPressed: _saveNurse,
              icon: Icon(Icons.done),
            )
          ],
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              Card(
                child: Column(
                  children: [
                    imageLocalPath == null
                        ? const Icon(
                            Icons.photo,
                            size: 100,
                          )
                        : Image.file(
                            File(imageLocalPath!),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                    Text(
                      'Select Nurse Image\nfrom',
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.camera),
                          label: Text('Camera'),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.browse_gallery),
                          label: Text('Gallary'),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Consumer<NurseProvider>(
                    builder: (context, provider, child) =>
                        DropdownButtonFormField<Speciality>(
                      decoration: InputDecoration(border: InputBorder.none),
                      hint: Text('Select Speciality'),
                      isExpanded: true,
                      value: speciality,
                      validator: (value) {
                        if (value == null) {
                          return 'Please select one Speciality';
                        }
                        return null;
                      },
                      items: provider.specialityList
                          .map((item) => DropdownMenuItem<Speciality>(
                                value: item,
                                child: Text(item.name),
                              ))
                          .toList(),
                      onChanged: (value) {
                        speciality = value;
                      },
                    ),
                  ),
                ),
              ),
              RadioGroup(
                label: 'Select Gender',
                groupValaue: nurseType,
                items: NurseUtils.typeList,
                onItemSelected: (value) {
                  nurseType = value;
                },
              ),
              RadioGroup(
                label: 'Wants to serve',
                groupValaue: mountDescription,
                items: NurseUtils.mountList,
                onItemSelected: (value) {
                  mountDescription = value;
                },
              ),
              RadioGroup(
                  label: 'Select Duty Time',
                  groupValaue: focusType,
                  items: NurseUtils.focusList,
                  onItemSelected: (value) {
                    focusType = value;
                  }),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      labelText: 'Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This filled must not be empty';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: TextFormField(
                  controller: _ageController,
                  decoration: InputDecoration(
                      border: InputBorder.none, filled: true, labelText: 'Age'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This filled must not be empty';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This filled must not be empty';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      labelText: 'Phone Number'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This filled must not be empty';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: TextFormField(
                  controller: _statusController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      labelText: 'Availibility'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This filled must not be empty';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: TextFormField(
                  controller: _priceController,
                  decoration: InputDecoration(
                      border: InputBorder.none, filled: true, labelText: 'Fee'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This filled must not be empty';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _statusController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  void _saveNurse() async {
    // if (imageLocalPath == null) {
    //   showMsg(context, 'Please select a telescope image');
    //   return;
    // }
    if (_formKey.currentState!.validate()) {
      EasyLoading.show(status: null); //status should not be null
      try {
        final nurse = Nurse(
            name: _nameController.text,
            speciality: speciality!,
            type: nurseType,
            email: _emailController.text,
            phone: num.parse(_phoneController.text),
            focustype: focusType,
            age: num.parse(_ageController.text),
            mountDescription: mountDescription,
            price: num.parse(_priceController.text),
            status: _statusController.text,
            additionalImage: []);
        await Provider.of<NurseProvider>(context, listen: false)
            .addNurse(nurse);

        EasyLoading.dismiss();
        showMsg(context, 'Saved');
        _resetFields();
      } catch (error) {
        EasyLoading.dismiss();
        print(error.toString());
      }
    }
  }

  void _resetFields() {
    setState(() {
      _nameController.clear();
      _ageController.clear();
      _emailController.clear();
      _phoneController.clear();
      _statusController.clear();
      _priceController.clear();

      speciality = null;
      imageLocalPath = null;
      mountDescription = NurseUtils.mountList.first;
      focusType = NurseUtils.focusList.first;
      nurseType = NurseUtils.typeList.first;
    });
  }
}
