import 'package:alex_cube/shared/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'component/constant.dart';
import 'module/homeScreen.dart';


void main() {
  // ignore: deprecated_member_use
  BlocOverrides.runZoned(
      (){
        runApp(const MyApp());
      },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   BlocProvider(
      create: (BuildContext context) =>AppCubit(),
      child:   MaterialApp(
        title: "Alex_Cube",
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

