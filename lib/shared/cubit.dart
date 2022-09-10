import 'package:alex_cube/shared/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  List<bool> boolButton=[true,false,false,false];
  String? dropdownValue ;
  // ignore: non_constant_identifier_names
  void ClearButtons(int number,BuildContext context )
  { int counter=4;
     while(counter>0)
       {
         if(counter==number)
           {
             boolButton[counter-1]=true;
           }
         else
           {
             boolButton[counter-1]=false;
           }
         counter--;
       }
  emit(ChangeButton());
  }
  // ignore: non_constant_identifier_names
  void LinkButton()
  {
    // ignore: deprecated_member_use
    launch("https://github.com/CubeSat-Alex");
    emit(SourceButton());
  }
  // ignore: non_constant_identifier_names
  void SystemButton(String? newValue)
  {
    // ignore: deprecated_member_use
    dropdownValue = newValue!;
    emit(SubSystemButton());
  }

}