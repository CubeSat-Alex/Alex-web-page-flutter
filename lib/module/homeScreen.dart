import 'package:alex_cube/responsiv.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../component/component.dart';
import '../component/menu_button.dart';
import '../shared/cubit.dart';
import '../shared/states.dart';
import 'contact.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
   List<String> items = [
     'OBC',
     'ADCS',
     'Telemetry',
     'Structural',
   ];
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
     body: BlocBuilder<AppCubit,AppStates>(
        builder: (BuildContext context,Object? state){
    AppCubit cubit = AppCubit.get(context);
     return SingleChildScrollView(
          child:Column(
         children: [
           Stack(
             children: [
               cubit.boolButton[0]?Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height,
                 decoration: const BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.fill,
                     image: AssetImage('images/background.jpg'),
                   ),
                 ),
               ): Container(
                 width: MediaQuery.of(context).size.width,
                 height: 140,
                 decoration: const BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage('images/crop_background.jpg'),
                   ),
                 ),
               ),
               Padding(
                 padding:  EdgeInsets.symmetric(vertical: 30,horizontal: Responsive.isMobile(context)?25:50),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     const Center(
                       child: Text("Alex Cube",
                           style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 50)),
                     ),
                     const SizedBox(width: 7),
                     Image.asset('images/cubeLogo.png',width: 70,height: 70),
                     const Expanded(child: SizedBox(),),
                     Responsive(mobile: const Text("mobile"), tablet: Column(
                       children: [
                         Row(
                           children: [
                             DefualtBoxAction(onTap: () {
                               cubit.ClearButtons(1,context) ; }, textOfBox: 'Overview', selectButton: cubit.boolButton[0], width: 100,),
                             const SizedBox(width: 20),
                             DefualtBoxAction(onTap: () {cubit.ClearButtons(2,context)  ;}, textOfBox: 'GroundStation', selectButton: cubit.boolButton[1], width: 130,),
                             const SizedBox(width: 20),
                             DefualtBoxAction(onTap: () { cubit.ClearButtons(3,context) ;}, textOfBox: 'Subsystem', selectButton: cubit.boolButton[2], width: 120,),
                           ],
                         ),
                         const SizedBox(height: 10),
                         Row(
                           children: [
                             DefualtBoxAction(onTap: () { cubit.LinkButton() ;}, textOfBox: 'Source', selectButton: false, width: 100,),
                             const SizedBox(width: 20),
                             DefualtBoxAction(
                               onTap: () {

                                 cubit.ClearButtons(4,context); },
                               textOfBox: 'Contact', selectButton: cubit.boolButton[3], width: 100,),
                           ],
                         )
                       ],
                     ), desktop: Row(
                       children: [
                         DefualtBoxAction(onTap: () {  cubit.ClearButtons(1,context);}, textOfBox: 'Overview', selectButton: cubit.boolButton[0], width: 100,),
                         const SizedBox(width: 20),
                         DefualtBoxAction(onTap: () { cubit.ClearButtons(2,context); }, textOfBox: 'GroundStation', selectButton: cubit.boolButton[1], width: 130,),
                         const SizedBox(width: 20),
                         const SizedBox(width: 20),
                         SizedBox(
                           width: 130,
                           height: 40,
                           child: CustomDropdownButton2(hint: 'SubSystems',
                             iconDisabledColor: Colors.red,
                             iconEnabledColor: Colors.white,

                             buttonDecoration:BoxDecoration(
                               borderRadius: BorderRadius.circular(14),
                               border: Border.all(
                                 color: Colors.white,
                               ),
                             ),
                             dropdownItems: items,
                             value: cubit.dropdownValue,
                             onChanged: (value) {
                               cubit.SystemButton(value);
                             },
                           ),
                         ),
                         DefualtBoxAction(onTap: () {cubit.LinkButton() ;}, textOfBox: 'Source', selectButton: false, width: 100,),
                         const SizedBox(width: 20),
                         DefualtBoxAction(onTap: () {cubit.ClearButtons(4,context);  }, textOfBox: 'Contact', selectButton: cubit.boolButton[3], width: 100,),
                       ],
                     )),
                   ],),
               ),
             ],
           ),
           cubit.boolButton[3]?const Contact():Container(),
         ],
       ),
     );
      // backgroundColor: Colors.black12,
  }
    ));
}
}

