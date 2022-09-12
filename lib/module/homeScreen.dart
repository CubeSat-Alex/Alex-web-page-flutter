import 'package:alex_cube/module/subsystem.dart';
import 'package:alex_cube/responsiv.dart';
import 'package:alex_cube/screens/disktop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../component/component.dart';
import '../component/constant.dart';
import '../screens/mobile.dart';
import '../screens/tablet.dart';
import '../shared/cubit.dart';
import '../shared/states.dart';
import 'contact.dart';
import 'ground_station.dart';
import 'overview.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black12,
        body: BlocBuilder<AppCubit, AppStates>(
            builder: (BuildContext context, Object? state) {
          AppCubit cubit = AppCubit.get(context);
          return Stack(
            children: [
              SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    Column(
                      children: [
                        cubit.boolButton[0]
                            ? Stack(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: Responsive.isMobile(context)
                                            ? 100
                                            : (Responsive.isTablet(context)
                                                ? 130
                                                : 100),
                                      ),
                                      Container(
                                        height: width / 2.3,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/background.jpg'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: Responsive.isMobile(context)
                                            ? 130
                                            : (Responsive.isTablet(context)
                                                ? width / 5.5
                                                : width / 6.5),
                                        left: width / 4,right:width/4 ),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: width / 2,
                                          height: width / 15,
                                          // decoration: BoxDecoration(
                                          //     border: Border.all(
                                          //         width: Responsive.isMobile(
                                          //                 context)
                                          //             ? 1
                                          //             : 2,
                                          //         color: Colors.grey.shade300)),
                                          child: Center(
                                              child: Text(
                                            "The First open Source Cubesat In Egypt ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: (width / 35)),
                                          )),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        cubit.boolButton[0]
                                            ? (Responsive.isMobile(context)
                                                ? Container()
                                                : Container(
                                          width: width/9,
                                          height: width/31,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all(width: 1,color: Colors.grey),
                                          ),
                                                  child: ElevatedButton(
                                                      style: ButtonStyle(
                                                          overlayColor: MaterialStateProperty.all<Color>(
                                                              Colors.transparent),
                                                          shadowColor: MaterialStateProperty.all<Color>(
                                                              Colors.transparent),
                                                          backgroundColor:
                                                              MaterialStateProperty.all<Color>(
                                                                  Colors
                                                                      .transparent),),
                                                      onPressed: () {
                                                        scrollController.animateTo(
                                                            450,
                                                            duration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        500),
                                                            curve: Curves.easeIn);
                                                      },
                                                      child:  Text(
                                                        "Show more",
                                                        style: TextStyle(
                                                            color: Colors.grey,fontSize: width/85),
                                                      )),
                                                ))
                                            : Container()
                                      ],
                                    ),
                                  )
                                ],
                              )
                            : Container(),
                      ],
                    ),
                    cubit.boolButton[0] ? OverView() : Container(),
                    //this is overview
                    cubit.boolButton[1] ? Ground_Station() : Container(),
                    //this is ground station
                    cubit.boolButton[3]
                        ? SubSystems(cubit.dropdownValue)
                        : Container(),
                    // this is subsystems
                    cubit.boolButton[4] ? const Contact() : Container(),
                    // this is contact
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.zero,
                height: Responsive.isMobile(context)
                    ? 100
                    : (Responsive.isTablet(context) ? 130 : 100),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/crop_background.jpg'),
                  ),
                ),
              ),
              Responsive(
                mobile: Mobile(),
                tablet: Tablet(),
                desktop: Disktop(),
              ),
              Visibility(
                  visible: Responsive.isMobile(context)?cubit.openMobileMenu:false,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height*(1/3),
                      ),
                      Container(
                width:width ,
                height: height*(2/3),
                        color: Colors.black87,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(onPressed: () {
                                  cubit.openmenu();
                                },
                                  icon: const Icon(Icons.close_rounded,
                                    color: Colors.white,),
                                  highlightColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                ),
                                const SizedBox(height: 20,),
                                ColumnButton(onTap: () {  cubit.ClearButtons(1,context,null);}, textOfBox: 'Overview', selectButton: cubit.boolButton[0], width: 100, size: 15,),
                                const SizedBox(width: 20),
                                ColumnButton(onTap: () { cubit.ClearButtons(2,context,null); }, textOfBox: 'Ground Station', selectButton: cubit.boolButton[1], width: 130, size: 15,),
                                const SizedBox(width: 20),
                                Container(
                                  width: double.infinity,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1.0, color: cubit.boolButton[3]?Colors.white:Colors.transparent),
                                      bottom: BorderSide(width: 1.0, color: cubit.boolButton[3]?Colors.white:Colors.transparent),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: ElevatedButton.icon(
                                          style: ButtonStyle(
                                              padding:MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0)) ,
                                              overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                              shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                              backgroundColor:
                                              MaterialStateProperty.all<Color>(Colors.transparent),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  side:  const BorderSide(color: Colors.transparent, width: 1),
                                                  borderRadius: BorderRadius.circular(15.0),
                                                ),
                                              )),
                                          onPressed: (){cubit.subsystemButton();},
                                          label:  Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text('SubSystems',style: TextStyle(color: cubit.boolButton[3]?Colors.white:Colors.grey),)),
                                          icon:  Icon(cubit.showSubSystems?Icons.arrow_drop_up_outlined:Icons.arrow_drop_down_outlined,color: cubit.boolButton[3]?Colors.white:Colors.grey,),
                                        ),
                                      ),
                                      const Expanded(child: SizedBox(),)
                                    ],
                                  ),
                                ),
                                Visibility(
                                  visible: cubit.showSubSystems,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 17),
                                    child: Column(
                                      children: [
                                        ColumnButton(onTap: () {cubit.ClearMobileButtons(1,context,'OBC'); }, textOfBox: 'OBC', selectButton: cubit.boolSubsystems[0], width: 100, size: 13,),
                                        ColumnButton(onTap: () {cubit.ClearMobileButtons(2,context,'ADCS'); }, textOfBox: 'ADCS', selectButton: cubit.boolSubsystems[1], width: 100, size: 13,),
                                        ColumnButton(onTap: () {cubit.ClearMobileButtons(3,context,'Telemetry'); }, textOfBox: 'Telemetry', selectButton: cubit.boolSubsystems[2], width: 100, size: 13,),
                                        ColumnButton(onTap: () {cubit.ClearMobileButtons(4,context,'Communication'); }, textOfBox: 'Communication', selectButton: cubit.boolSubsystems[3], width: 100, size: 13,),
                                        ColumnButton(onTap: () {cubit.ClearMobileButtons(5,context,'Payload'); }, textOfBox: 'Payload', selectButton: cubit.boolSubsystems[4], width: 100, size: 13,),
                                        ColumnButton(onTap: () {cubit.ClearMobileButtons(6,context,'Structural'); }, textOfBox: 'Structural', selectButton: cubit.boolSubsystems[5], width: 100, size: 13,),

                                      ],
                                    ),
                                  ),
                                ),
                                ColumnButton(onTap: () {cubit.LinkButton() ;}, textOfBox: 'Source', selectButton: false, width: 100, size: 15,),
                                const SizedBox(width: 20),
                                ColumnButton(onTap: () {cubit.ClearButtons(5,context,null);  }, textOfBox: 'Contact', selectButton: cubit.boolButton[4], width: 100, size: 15,),
                              ],
                            ),
                          ),
                        ),
              ),
                    ],
                  ))
            ],
          );
        }));
  }
}
