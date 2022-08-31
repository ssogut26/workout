import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:workout/account.dart';
import 'package:workout/home.dart';
import 'package:workout/login.dart';
import 'package:workout/singup.dart';
import 'package:workout/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://alejapkagudlxwwxsjge.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFsZWphcGthZ3VkbHh3d3hzamdlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjE5NTM0OTgsImV4cCI6MTk3NzUyOTQ5OH0.zMWFX0eSJgLAL726GtKj5xytN3yTRFRkeuhbA6U6Eak',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/singUp': (_) => const SingUpPage(),
        '/home': (_) => const MainPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}
