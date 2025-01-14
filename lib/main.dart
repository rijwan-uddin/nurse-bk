import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthn/auth/auth_service.dart';
import 'package:healthn/pages/add_nurse_page.dart';
import 'package:healthn/pages/dashboard_page.dart';
import 'package:healthn/pages/login_page.dart';
import 'package:healthn/pages/speciality_page.dart';
import 'package:healthn/pages/view_nurse_page.dart';
import 'package:healthn/providers/nurse_provider.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
      providers:[
ChangeNotifierProvider(create: (context)=> NurseProvider()),
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }

  final _router = GoRouter(
      initialLocation: DashboardPage.routeName,
      redirect: (context, state) {
        if (AuthService.currentUser == null) {
          return LoginPage.routeName;
        }
        return null;
      },
      routes: [
        GoRoute(
          name: DashboardPage.routeName,
          path: DashboardPage.routeName,
          builder: (context, state) => DashboardPage(),
          routes: [
            GoRoute(
              name: AddNursePage.routeName,
              path: AddNursePage.routeName,
              builder: (context, state) => AddNursePage(),
            ),
            GoRoute(
              name: ViewNursePage.routeName,
              path: ViewNursePage.routeName,
              builder: (context, state) => ViewNursePage(),
            ),
            GoRoute(
              name: SpecialityPage.routeName,
              path: SpecialityPage.routeName,
              builder: (context, state) => SpecialityPage(),
            ),
          ],
        ),
        GoRoute(
          name: LoginPage.routeName,
          path: LoginPage.routeName,
          builder: (context, state) => LoginPage(),
        )
      ]);
}
