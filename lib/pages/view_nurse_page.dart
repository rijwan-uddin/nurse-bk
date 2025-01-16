import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthn/pages/nurse_details_page.dart';
import 'package:healthn/providers/nurse_provider.dart';
import 'package:provider/provider.dart';

class ViewNursePage extends StatefulWidget {
  static const String routeName = 'viewnurse';
  const ViewNursePage({super.key});

  @override
  State<ViewNursePage> createState() => _ViewNursePageState();
}

class _ViewNursePageState extends State<ViewNursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('View Nurses'),
        ),
        body:Consumer<NurseProvider>(
          builder: (context, provider, child) => ListView.builder(
            itemCount: provider.nurseList.length,
            itemBuilder: (context, index) {
              final nurse = provider.nurseList[index];
              return InkWell(
                onTap: () {
                  context.goNamed(NurseDetailsPage.routeName, extra: nurse.id);
                },
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      // CachedNetworkImage(
                      //   width: 100,
                      //   height: 100,
                      //   fit: BoxFit.cover,
                      //   imageUrl: ,
                      //   placeholder: (context, url) => Center(
                      //     child: CircularProgressIndicator(),
                      //   ),
                      //   errorWidget: (context, url, error) => Icon(Icons.account_box_sharp),
                      // ),

                      // CachedNetworkImage(
                      //   width: 100,
                      //   height: 100,
                      //   fit: BoxFit.cover,
                      //   imageUrl: '', // Leave this empty or provide a dummy value
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
                        width: 80, // Adjust as needed
                        height: 80, // Adjust as needed
                        fit: BoxFit.cover,
                      ),


                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                nurse.name,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                nurse.speciality.name,
                                style: TextStyle(
                                    color: Colors.grey,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
    );
  }
}
