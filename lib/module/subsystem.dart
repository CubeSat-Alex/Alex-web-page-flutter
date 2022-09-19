import 'package:alex_cube/module/subsystems/OBC.dart';
import 'package:flutter/material.dart';
import '../../shared/cubit.dart';

class SubSystems extends StatelessWidget {
  const SubSystems(String? dropdownValue, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);

    return (cubit.dropdownValue=='ADCS'?ADCS():(cubit.dropdownValue=='OBC'?const OBC():
    (cubit.dropdownValue=='Telemetry'?Telemetry():(cubit.dropdownValue=='Communication'?Communication():
    (cubit.dropdownValue=='Payload'?Payload():Structural())))));
  }
}

// ignore: must_be_immutable

// ignore: must_be_immutable
class ADCS extends StatelessWidget {
  ADCS({Key? key}) : super(key: key);
  late double width,height;

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 120,bottom: 80,left: (width/5),right: (width/5)),
            child: Column(
              children: const [
                Center(
                  child: Text("ADCS",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
                  ),),
                ),
                SizedBox(height: 20,),
                Text("We are a team of 5 studying in the Department of Communications Engineering in the Faculty of Engineering, Alexandria University, Egypt.\n\n"
                    "We made CubeSat (satellite 10x10x10) for remote sensing (main task is to take a video or photo at certain time and send it to the ground station)  "
                    "to make this mission we  use ( 5 subsystem , OBC , Ground station (python desktop app), structure ).",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87
                    )),
              ],
            ),
          )]);
  }
}

// ignore: must_be_immutable
class Telemetry extends StatelessWidget {
  Telemetry({Key? key}) : super(key: key);
  late double width,height;

  @override
  Widget build(BuildContext context){
  width=MediaQuery.of(context).size.width;
  height=MediaQuery.of(context).size.height;
    return Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 120,bottom: 80,left: (width/5),right: (width/5)),
            child: Column(
              children: const [
                Center(
                  child: Text("Telemetry",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
                  ),),
                ),
                SizedBox(height: 20,),
                Text("We are a team of 5 studying in the Department of Communications Engineering in the Faculty of Engineering, Alexandria University, Egypt.\n\n"
                    "We made CubeSat (satellite 10x10x10) for remote sensing (main task is to take a video or photo at certain time and send it to the ground station)  "
                    "to make this mission we  use ( 5 subsystem , OBC , Ground station (python desktop app), structure ).",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87
                    )),
              ],
            ),
          )]);
  }
}

// ignore: must_be_immutable
class Communication extends StatelessWidget {
  Communication({Key? key}) : super(key: key);
  late double width,height;
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 120,bottom: 80,left: (width/5),right: (width/5)),
            child: Column(
              children: const [
                Center(
                  child: Text("Communication",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
                  ),),
                ),
                SizedBox(height: 20,),
                Text("We are a team of 5 studying in the Department of Communications Engineering in the Faculty of Engineering, Alexandria University, Egypt.\n\n"
                    "We made CubeSat (satellite 10x10x10) for remote sensing (main task is to take a video or photo at certain time and send it to the ground station)  "
                    "to make this mission we  use ( 5 subsystem , OBC , Ground station (python desktop app), structure ).",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87
                    )),
              ],
            ),
          )]);
  }
}

// ignore: must_be_immutable
class Payload extends StatelessWidget {
  Payload({Key? key}) : super(key: key);
  late double width,height;
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 120,bottom: 80,left: (width/5),right: (width/5)),
            child: Column(
              children: const [
                Center(
                  child: Text("Payload",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
                  ),),
                ),
                SizedBox(height: 20,),
                Text("We are a team of 5 studying in the Department of Communications Engineering in the Faculty of Engineering, Alexandria University, Egypt.\n\n"
                    "We made CubeSat (satellite 10x10x10) for remote sensing (main task is to take a video or photo at certain time and send it to the ground station)  "
                    "to make this mission we  use ( 5 subsystem , OBC , Ground station (python desktop app), structure ).",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87
                    )),
              ],
            ),
          )]);
  }
}


// ignore: must_be_immutable
class Structural extends StatelessWidget {

  Structural({Key? key}) : super(key: key);
  late double width,height;

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 120,bottom: 80,left: (width/5),right: (width/5)),
            child: Column(
              children: const [
                Center(
                  child: Text("Structural",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
                  ),),
                ),
                SizedBox(height: 20,),
                Text("We are a team of 5 studying in the Department of Communications Engineering in the Faculty of Engineering, Alexandria University, Egypt.\n\n"
                    "We made CubeSat (satellite 10x10x10) for remote sensing (main task is to take a video or photo at certain time and send it to the ground station)  "
                    "to make this mission we  use ( 5 subsystem , OBC , Ground station (python desktop app), structure ).",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87
                    )),
              ],
            ),
          )]);
  }
}

