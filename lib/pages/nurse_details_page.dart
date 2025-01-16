
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:healthn/model/nurse.dart';
import 'package:healthn/pages/description_page.dart';
import 'package:healthn/providers/nurse_provider.dart';
import 'package:healthn/utils/constants.dart';
import 'package:healthn/utils/helper_functions.dart';
import 'package:provider/provider.dart';

import '../utils/widget_functions.dart';

class NurseDetailsPage extends StatefulWidget {
  static const String routeName = 'nursedetails';
  final String id;

  const NurseDetailsPage({super.key, required this.id});

  @override
  State<NurseDetailsPage> createState() => _NurseDetailsPageState();
}

class _NurseDetailsPageState extends State<NurseDetailsPage> {
  late Nurse nurse;
  late NurseProvider provider;

  @override
  void didChangeDependencies() {
    provider = Provider.of<NurseProvider>(
      context,
    );
    nurse = provider.findNurseById(widget.id);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          nurse.name,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
        ),
      ),
      body: ListView(
        children: [
          // CachedNetworkImage(
          //   width: double.infinity,
          //   height: 200,
          //   imageUrl: ,
          //   placeholder: (context, url) =>
          //   const Center(child: CircularProgressIndicator()),
          //   errorWidget: (context, url, error) => const Icon(Icons.error),
          // ),
          // CachedNetworkImage(
          //   width: 100,
          //   height: 100,
          //   fit: BoxFit.cover,
          //   imageUrl: '',
          //   // Leave this empty or provide a dummy value
          //   placeholder: (context, url) => Center(
          //     child: CircularProgressIndicator(),
          //   ),
          //   errorWidget: (context, url, error) => Image.network(
          //     'https://cdn-icons-png.flaticon.com/512/172/172825.png',
          //     width: 60, // Adjust as needed
          //     height: 60, // Adjust as needed
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/172/172825.png',
            width: 100, // Adjust as needed
            height: 100, // Adjust as needed
            fit: BoxFit.cover,
          ),

          // SizedBox(
          //   width: MediaQuery.of(context).size.width,
          //   height: 100,
          //   child: Card(
          //     child: ListView(
          //       padding: const EdgeInsets.all(8.0),
          //       scrollDirection: Axis.horizontal,
          //       children: [
          //         FloatingActionButton.small(
          //           onPressed: () {
          //             // getImage(ImageSource.gallery);
          //           },
          //           tooltip: 'Add additional image',
          //           child: const Icon(Icons.add),
          //         ),
          //         if (nurse.additionalImage.isEmpty)
          //           Padding(
          //             padding: const EdgeInsets.only(left: 16.0),
          //             child: Center(
          //               child: Text(
          //                 'Add other images',
          //                 style: Theme.of(context)
          //                     .textTheme
          //                     .titleLarge
          //                     ?.copyWith(color: Colors.grey),
          //               ),
          //             ),
          //           ),
          //         // ...nurse.additionalImage.map((e) => ImageHolderView(
          //         //   imageModel: e,
          //         //   onImagePressed: () {
          //         //     _showImageOnDialog(e);
          //         //   },
          //         // )),
          //       ],
          //     ),
          //   ),
          // ),
          ElevatedButton(
            onPressed: () {
              nurse.description == null
                  ? context.goNamed(DescriptionPage.routeName, extra: nurse.id)
                  : _showDescriptionDialog();
            },
            child: Text(nurse.description == null
                ? 'Add Description'
                : 'Show Description'),
          ),
          ListTile(
            title: Text(nurse.speciality.name),
            subtitle: Text(nurse.name),
          ),
          ListTile(
            title: Text(
                'Book (with discount): $currencySymbol${priceAfterDiscount(nurse.price, nurse.discount).toStringAsFixed(0)}'),
            subtitle: Text('Original book fare: $currencySymbol${nurse.price}'),
            trailing: IconButton(
              onPressed: () {
                showSingleTextInputDialog(
                  context: context,
                  title: 'Edit Price',
                  onSubmit: (value) {
                    EasyLoading.show(status: 'Please Wait');
                    provider
                        .updateNurseField(nurse.id!, 'price', num.parse(value))
                        .then((value) {
                      EasyLoading.dismiss();
                      showMsg(context, 'Price Updated');
                    });
                  },
                );
              },
              icon: const Icon(Icons.edit),
            ),
          ),
          ListTile(
            title: Text('Discount: ${nurse.discount}%'),
            trailing: IconButton(
              onPressed: () {
                showSingleTextInputDialog(
                  context: context,
                  title: 'Edit Discount',
                  onSubmit: (value) {
                    EasyLoading.show(status: 'Please Wait');
                    provider
                        .updateNurseField(
                            nurse.id!, 'discount', num.parse(value))
                        .then((value) {
                      EasyLoading.dismiss();
                      showMsg(context, 'Discount Updated');
                    });
                  },
                );
              },
              icon: const Icon(Icons.edit),
            ),
          ),
          ListTile(
            title: Text('Status: ${nurse.status}'),
            trailing: IconButton(
              onPressed: () {
                showSingleTextInputDialog(
                  context: context,
                  title: 'Edit Status',
                  onSubmit: (value) {
                    EasyLoading.show(status: 'Please Wait');
                    provider.updateNurseField(nurse.id!, 'status', value).then((_) {
                      provider.getAllNurses(); // Fetch updated data
                      EasyLoading.dismiss();
                      showMsg(context, 'Status Updated');
                    }).catchError((error) {
                      EasyLoading.dismiss();
                      showMsg(context, 'Failed to update status');
                    });
                  },
                );
              },
              icon: const Icon(Icons.edit),
            ),
          )

          // ListTile(
          //   title: Text('Status: ${nurse.status}'),
          //   trailing: IconButton(
          //     onPressed: () {
          //       showSingleTextInputDialog(
          //         context: context,
          //         title: 'Edit Status',
          //         onSubmit: (value) {
          //           // EasyLoading.show(status: 'Please Wait');
          //           // provider
          //           //     .updateNurseField(nurse.id!, 'Status', (value))
          //           //     .then((value) {
          //           //   EasyLoading.dismiss();
          //           //   showMsg(context, 'Status Updated');
          //           // });
          //           EasyLoading.show(status: 'Please Wait');
          //           provider.updateNurseField(nurse.id!, 'Status', value).then((value) {
          //             EasyLoading.dismiss();
          //             showMsg(context, 'Status Updated');
          //           });
          //
          //         },
          //       );
          //     },
          //     icon: const Icon(Icons.edit),
          //   ),
          // )
        ],
      ),
    );
  }

  // void getImage(ImageSource source) async {
  //   final file = await ImagePicker().pickImage(source: source, imageQuality: 50);
  //   if(file != null) {
  //     EasyLoading.show(status: 'Please wait');
  //     final newImage = await provider.uploadImage(file.path);
  //     telescope.additionalImage.add(newImage);
  //     provider.updateTelescopeField(
  //         telescope.id!,
  //         'additionalImage',
  //         toImageMapList(telescope.additionalImage))
  //         .then((value) {
  //       EasyLoading.dismiss();
  //       showMsg(context, 'Added');
  //       setState(() {
  //
  //       });
  //     })
  //         .catchError((error) {
  //       EasyLoading.dismiss();
  //       showMsg(context, 'Failed to add');
  //     });
  //
  //   }
  // }
  //
  // void _showImageOnDialog(ImageModel e) {
  //   showDialog(context: context, builder: (context) => AlertDialog(
  //     content: CachedNetworkImage(
  //       fit: BoxFit.contain,
  //       height: MediaQuery.of(context).size.height / 2,
  //       imageUrl: e.downloadUrl,
  //       placeholder: (context, url) =>
  //       const Center(child: CircularProgressIndicator()),
  //       errorWidget: (context, url, error) => const Icon(Icons.error),
  //     ),
  //     actions: [
  //       IconButton(
  //         onPressed: () {
  //           Navigator.pop(context);
  //         },
  //         icon: const Icon(Icons.close),
  //       ),
  //       IconButton(
  //         onPressed: () async {
  //           Navigator.pop(context);
  //           EasyLoading.show(status: 'Please wait');
  //           try {
  //             await provider.deleteImage(telescope.id!, e);
  //             telescope.additionalImage.remove(e);
  //             await provider.updateTelescopeField(
  //                 telescope.id!,
  //                 'additionalImage',
  //                 toImageMapList(telescope.additionalImage));
  //             EasyLoading.dismiss();
  //             setState(() {
  //
  //             });
  //
  //
  //           } catch(error) {
  //             EasyLoading.dismiss();
  //           }
  //         },
  //         icon: const Icon(Icons.delete),
  //       )
  //     ],
  //   ));
  // }

  _showDescriptionDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(nurse.speciality.name),
        content: SingleChildScrollView(
          child: Text(nurse.description!),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
              context.goNamed(DescriptionPage.routeName, extra: nurse.id);
            },
            child: const Text('Edit'),
          ),
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Close'),
          )
        ],
      ),
    );
  }
}
