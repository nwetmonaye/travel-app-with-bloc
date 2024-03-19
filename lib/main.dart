import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_project/cubit/app_cubit.dart';
import 'package:travel_project/cubit/app_cubit_logics.dart';
import 'package:travel_project/screen/detail_page.dart';
import 'package:travel_project/screen/navscreens/main_page.dart';
import 'package:travel_project/screen/welcome_page.dart';
import 'package:travel_project/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<AppCubit>(
        create: (context) => AppCubit(
          data: DataServices(),
        ),
        child: AppCubitLogics(),
      ),
    );
  }
}
