
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class Ground_Station extends StatelessWidget {
  Ground_Station({Key? key}) : super(key: key);
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
                  child: Text("Ground Station",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
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
