import 'package:flutter/material.dart';
import 'package:healthn/pages/add_nurse_page.dart';
import 'package:healthn/pages/speciality_page.dart';
import 'package:healthn/pages/view_nurse_page.dart';

class DashboardModel {
  final String title;
  final IconData iconData;
  final String routeName;

  const DashboardModel(
      {required this.title, required this.iconData, required this.routeName});
}

const List<DashboardModel> dashboardModelList = [
  DashboardModel(
      title: 'Add Nurses',
      iconData: Icons.add,
      routeName: AddNursePage.routeName),
  DashboardModel(
      title: 'View Nurses',
      iconData: Icons.account_box_sharp,
      routeName: ViewNursePage.routeName),
  DashboardModel(
      title: 'Speciality',
      iconData: Icons.folder_special_rounded,
      routeName: SpecialityPage.routeName),
];
