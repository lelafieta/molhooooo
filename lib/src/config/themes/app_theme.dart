import 'package:flutter/material.dart';

import '../../core/strings/app_strings.dart';
import 'app_colors.dart';

class AppTheme {
  static get lightTheme => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        fontFamily: AppStrings.fontFamily,
        brightness: Brightness.light,
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.primaryColor,
        ),
        colorScheme: const ColorScheme.light(
          brightness: Brightness.light,
          primary: AppColors.primaryColor,
          onPrimaryContainer: AppColors.primaryColor,
          secondary: AppColors.secondaryColor,
          onSurface: AppColors.contentColor,
          surface: AppColors.whiteColor,
          onError: AppColors.redOpacityColor,
          error: AppColors.redColor,
          outlineVariant: AppColors.orangeColor,
          onPrimary: AppColors.contentUnselectColor,
          onSecondary: AppColors.purpleColor,
          outline: AppColors.itemBackgroundColor,
          primaryContainer: AppColors.grayColor,
          onTertiary: Colors.white,
          shadow: AppColors.strokeColor,
          surfaceTint: Colors.white,
          secondaryContainer: Color.fromARGB(255, 234, 234, 234),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: AppStrings.fontFamily,
            //fontSize: AppSize.s16,
            fontWeight: FontWeight.w600,
            color: AppColors.textColor,
          ),
          headlineMedium: TextStyle(
            fontFamily: AppStrings.fontFamily,
            //fontSize: AppSize.s16,
            fontWeight: FontWeight.w600,
            color: AppColors.textColor,
          ),
          headlineSmall: TextStyle(
            fontFamily: AppStrings.fontFamily,
            fontWeight: FontWeight.w600,
            color: AppColors.textColor,
          ),
          bodyLarge: TextStyle(
            fontFamily: AppStrings.fontFamily,
            fontWeight: FontWeight.w600,
            color: AppColors.textColor,
          ),
          bodySmall: TextStyle(
            fontFamily: AppStrings.fontFamily,
            fontWeight: FontWeight.w400,
            color: AppColors.secondaryTextColor,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          filled: true,
          fillColor: AppColors.strokeColor,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.strokeColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.primaryColor.withOpacity(.3)),
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          prefixIconColor: AppColors.secondaryColor,
          suffixIconColor: AppColors.secondaryColor,
          hintStyle: const TextStyle(fontSize: 14),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontFamily: AppStrings.fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.textColor,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                const MaterialStatePropertyAll(AppColors.primaryColor),
            foregroundColor:
                const MaterialStatePropertyAll(AppColors.whiteColor),
            minimumSize: const MaterialStatePropertyAll(
              Size(double.maxFinite, 50),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(50), // Define o raio da borda aqui
              ),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(
                fontSize: 16.0,
                fontFamily: AppStrings.fontFamily,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            minimumSize:
                const MaterialStatePropertyAll(Size(double.infinity, 50)),
            foregroundColor:
                const MaterialStatePropertyAll(AppColors.primaryColor),
            side: MaterialStateProperty.all(
              const BorderSide(
                color: AppColors.primaryColor, // Cor da borda
                width: 1.5, // Largura da borda
              ),
            ),
          ),
        ),
      );

  static get darkTheme => ThemeData(
        useMaterial3: true,
        // scaffoldBackgroundColor: Colors.black, // Fundo preto
        fontFamily: AppStrings.fontFamily,
        brightness: Brightness.dark,
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.primaryColor, // Botão mantém a cor primária
        ),
        colorScheme: ColorScheme.dark(
          surface: Colors.grey[900]!,
          primary: Colors.white,
          secondary: Colors.black,
          onPrimaryContainer: Colors.grey[900],
          primaryContainer: Colors.grey.withOpacity(.2),
          onPrimary: Colors.grey[400]!,
          onTertiary: AppColors.whiteColor,
          outline: AppColors.whiteColor,
          surfaceTint: AppColors.blackColor,
          onSecondary: AppColors.whiteColor,
          error: AppColors.redColor,
          secondaryContainer: Colors.grey[900],
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: AppStrings.fontFamily,
            fontWeight: FontWeight.w600,
            color: AppColors.whiteColor, // Texto em branco
          ),
          headlineMedium: TextStyle(
            fontFamily: AppStrings.fontFamily,
            fontWeight: FontWeight.w600,
            color: AppColors.whiteColor,
          ),
          headlineSmall: TextStyle(
            fontFamily: AppStrings.fontFamily,
            fontWeight: FontWeight.w600,
            color: AppColors.whiteColor,
          ),
          bodyLarge: TextStyle(
            fontFamily: AppStrings.fontFamily,
            fontWeight: FontWeight.w600,
            color: AppColors.whiteColor,
          ),
          bodySmall: TextStyle(
            fontFamily: AppStrings.fontFamily,
            fontWeight: FontWeight.w400,
            color: AppColors.grey1, // Texto secundário em cinza claro
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          filled: true,
          fillColor: AppColors.blackColor,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          enabledBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.shadowColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            // borderSide:
            //     BorderSide(color: AppColors.primaryColor.withOpacity(.3)),
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          prefixIconColor: AppColors.secondaryColor,
          suffixIconColor: AppColors.secondaryColor,
          hintStyle: const TextStyle(fontSize: 14),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: AppColors.blackColor, // Fundo do AppBar preto
          titleTextStyle: TextStyle(
            fontFamily: AppStrings.fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.whiteColor, // Texto em branco
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                const MaterialStatePropertyAll(AppColors.primaryColor),
            foregroundColor:
                const MaterialStatePropertyAll(AppColors.whiteColor),
            minimumSize: const MaterialStatePropertyAll(
              Size(double.maxFinite, 50),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(5), // Define o raio da borda aqui
              ),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(
                fontSize: 16.0,
                fontFamily: AppStrings.fontFamily,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            minimumSize:
                const MaterialStatePropertyAll(Size(double.infinity, 50)),
            foregroundColor:
                const MaterialStatePropertyAll(AppColors.primaryColor),
            side: MaterialStateProperty.all(
              const BorderSide(
                color: AppColors.primaryColor, // Cor da borda
                width: 1.5, // Largura da borda
              ),
            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor:
              AppColors.blackColor, // Fundo do BottomNavigationBar preto
          selectedItemColor: AppColors.primaryColor, // Cor do ícone selecionado
          unselectedItemColor: AppColors.grey, // Cor do ícone não selecionado
          elevation: 2,
        ),
      );
}
