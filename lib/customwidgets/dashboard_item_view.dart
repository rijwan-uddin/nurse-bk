//
// import 'package:flutter/material.dart';
// import 'package:healthn/model/dashboard_model.dart';
//
// class DashboardItemView extends StatelessWidget {
//   final DashboardModel model;
//   final Function(String) onPress;
//
//   const DashboardItemView(
//       {super.key, required this.model, required this.onPress});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => onPress(model.routeName),
//       child: Card(
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(model.iconData,size: 50, color: Colors.black,),
//               SizedBox(height: 10,),
//               Text(model.title, style: Theme.of(context).textTheme.titleLarge,)
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:healthn/model/dashboard_model.dart';

class DashboardItemView extends StatelessWidget {
  final DashboardModel model;
  final Function(String) onPress;

  const DashboardItemView(
      {super.key, required this.model, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(model.routeName),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 6, // Reduced shadow for a more subtle effect
        shadowColor: Colors.black.withOpacity(0.2), // Slight shadow effect
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Container(
          width: 150,
          height: 160, // Fixed height for smaller cards
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [Colors.blue.shade100, Colors.blue.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  model.iconData,
                  size: 50, // Smaller icon size
                  color: Colors.white,
                ),
                SizedBox(height: 8),
                Text(
                  model.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
