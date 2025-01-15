// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:healthn/customwidgets/dashboard_item_view.dart';
// import 'package:healthn/model/dashboard_model.dart';
// import 'package:healthn/pages/login_page.dart';
// import 'package:healthn/providers/nurse_provider.dart';
// import 'package:provider/provider.dart';
// import '../auth/auth_service.dart';
//
// class DashboardPage extends StatefulWidget {
//   static const String routeName = '/';
//
//   const DashboardPage({super.key});
//
//   @override
//   State<DashboardPage> createState() => _DashboardPageState();
// }
//
// class _DashboardPageState extends State<DashboardPage> {
//   @override
//   void didChangeDependencies() {
//     Provider.of<NurseProvider>(context, listen: false).getAllSpeciality();
//     Provider.of<NurseProvider>(context, listen: false).getAllNurses();
//         super.didChangeDependencies();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('DashboardPage'),
//           actions: [
//             IconButton(
//               onPressed: () {
//                 AuthService.logout()
//                     .then((value) => context.goNamed(LoginPage.routeName));
//               },
//               icon: Icon(Icons.logout),
//             )
//           ],
//         ),
//         body: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//           ),
//           itemCount: dashboardModelList.length,
//           itemBuilder: (context, index) {
//             final model = dashboardModelList[index];
//             return DashboardItemView(
//               model: model,
//               onPress: (route) {
//                 context.goNamed(route);
//               },
//             );
//           },
//         ));
//   }
// }
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthn/customwidgets/dashboard_item_view.dart';
import 'package:healthn/model/dashboard_model.dart';
import 'package:healthn/pages/login_page.dart';
import 'package:healthn/providers/nurse_provider.dart';
import 'package:provider/provider.dart';
import '../auth/auth_service.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/';

  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<String> imageUrls = [
    'assets/images/N1.jpg',  // Replace with your actual image paths
    'assets/images/N2.jpg',
    'assets/images/N3.jpeg',
  ];

  @override
  void didChangeDependencies() {
    Provider.of<NurseProvider>(context, listen: false).getAllSpeciality();
    Provider.of<NurseProvider>(context, listen: false).getAllNurses();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive design
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('DashboardPage'),
        actions: [
          IconButton(
            onPressed: () {
              AuthService.logout()
                  .then((value) => context.goNamed(LoginPage.routeName));
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel Slider with responsive height
            CarouselSlider.builder(
              itemCount: imageUrls.length,
              itemBuilder: (context, index, realIndex) {
                return Image.asset(
                  imageUrls[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              },
              options: CarouselOptions(
                height: screenHeight * 0.25, // Set the height to 25% of the screen height
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
                viewportFraction: 1.0,
              ),
            ),

            // "Good health care is our priority" text
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Good health care is our priority',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Grid of Dashboard Items
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // Prevent scrolling within grid
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: dashboardModelList.length,
              itemBuilder: (context, index) {
                final model = dashboardModelList[index];
                return DashboardItemView(
                  model: model,
                  onPress: (route) {
                    context.goNamed(route);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
