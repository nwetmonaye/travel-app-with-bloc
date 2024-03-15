import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_project/cubit/app_cubit.dart';
import 'package:travel_project/screen/home_page.dart';
import 'package:travel_project/screen/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return WelcomePage();
          }
          if (state is LoadedState) {
            return HomePage();
          }
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
