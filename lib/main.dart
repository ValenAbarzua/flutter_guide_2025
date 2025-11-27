import 'package:flutter/material.dart';
import 'package:flutter_guide_2025/screens/home_screen.dart';
import 'package:flutter_guide_2025/screens/detalle_screen.dart';
import 'package:flutter_guide_2025/screens/lista_peliculas_screen.dart';

/*
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Preferences.initShared();
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkMode: Preferences.darkmode),
        ),
        ChangeNotifierProvider(create: (_) => EmpleadosProvider(), lazy: false),
      ],
      child: const MyApp(),
    ),
  );
}
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App de peliculas',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'lista_peliculas': (BuildContext context) => ListaPeliculasScreen(),
        'detalle_peliculas': (BuildContext context) => DetalleScreen(),
      },
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
    );
  }
}
