import 'package:alex_cube/shared/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../component/constant.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  List<bool> boolButton=[true,false,false,false,false,false];
  List<bool> boolSubsystems=[false,false,false,false,false,false];
  List<String> items = ['OBC', 'ADCS', 'Telemetry','Communication','Payload', 'Structure'];
  String? dropdownValue ;
  bool showSubSystems=false;
  bool openMobileMenu=false;
  bool changeIcon=false;
  bool showAllBudget=false;
  int changeBudget=0;
  double start=700;
  // ignore: non_constant_identifier_names
  void ClearButtons(int number,BuildContext context, String? newValue)
  { int counter=6;
  scrollController.animateTo(0, duration: const Duration(milliseconds: 900), curve: Curves.easeIn);
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
         if(newValue==items[counter-1])
           {
             boolSubsystems[counter-1]=true;
           }

         else
         {
           boolSubsystems[counter-1]=false;
         }
         counter--;
       }
     if(number==4)
       {
         dropdownValue = newValue;
       }
  openMobileMenu=false;
  emit(ChangeButton());
  }

  // ignore: non_constant_identifier_names
  void ClearMobileButtons(int number,BuildContext context, String? newValue)
  { int counter=6;
  scrollController.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);

  while(counter>0)
  {
    boolButton[counter-1] = false;
    if(counter==number)
    {
      boolSubsystems[counter-1]=true;
    }
    else
    {
      boolSubsystems[counter-1]=false;
    }

    counter--;
  }
  boolButton[3]=true;
  dropdownValue = newValue!;
  showSubSystems=true;
  openMobileMenu=false;
  emit(ChangeMobileButton());
  }

  // ignore: non_constant_identifier_names
  void LinkButton()
  {
    // ignore: deprecated_member_use
    launch("https://github.com/CubeSat-Alex");
    emit(SourceButton());
  }
  // ignore: non_constant_identifier_names

  void subsystemButton()
  {
    // ignore: deprecated_member_use
    showSubSystems=!showSubSystems;
    emit(SubSystemsOpen());
  }
  void openmenu()
  {
    showSubSystems=false;
    openMobileMenu=!openMobileMenu;
    emit(MobileMenu());
  }

  void changeIcons(bool value)
  {
    changeIcon=value;
    emit(ChangeIcon());
  }

  void showBudget(int number)
  {
    changeBudget=number;
    showAllBudget=!showAllBudget;
    emit(ShowBudgetPhoto());
  }
}
