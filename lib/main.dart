import 'package:expenses_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final colorScheme = ColorScheme.fromSeed(seedColor: Colors.purple);
final darkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.deepPurple,
  brightness: Brightness.dark,
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => {
            runApp(
              MaterialApp(
                darkTheme: ThemeData.dark().copyWith(
                  useMaterial3: true,
                  colorScheme: darkColorScheme,
                ),
                theme: ThemeData().copyWith(
                  useMaterial3: true,
                  colorScheme: colorScheme,
                  appBarTheme: const AppBarTheme().copyWith(
                      backgroundColor: colorScheme.onPrimaryContainer,
                      foregroundColor: colorScheme.primaryContainer),
                  cardTheme: const CardTheme().copyWith(
                    color: colorScheme.secondaryContainer,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colorScheme.primaryContainer),
                  ),
                  textTheme: ThemeData().textTheme.copyWith(
                        titleLarge: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: colorScheme.onSecondaryContainer,
                          fontSize: 14,
                        ),
                      ),
                ),
                themeMode: ThemeMode.light,
                home: const Expenses(),
              ),
            )
          });
}
