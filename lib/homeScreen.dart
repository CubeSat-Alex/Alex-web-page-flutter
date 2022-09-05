import 'package:flutter/material.dart';

import 'component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(title :Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children:  [
      //     const Center(
      //       child: Text("Alex Cube",
      //           style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 25)),
      //     ),
      //     const SizedBox(width: 10),
      //     Image.asset('images/cubeLogo.png',width: 60,height: 60)
      //   ],),),

     body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
       children: [
         Stack(
           children: [
             Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               decoration: const BoxDecoration(
                 image: DecorationImage(
                   fit: BoxFit.fill,
                   image: AssetImage('images/background.jpg'),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 50),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   const Center(
                     child: Text("Alex Cube",
                         style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 50)),
                   ),
                   const SizedBox(width: 7),
                   Image.asset('images/cubeLogo.png',width: 100,height: 100),
                   const Expanded(child: SizedBox(),),
                   DefualtBoxAction(onTap: () {  }, textOfBox: 'Button 1',),
                   const SizedBox(width: 20),
                   DefualtBoxAction(onTap: () {  }, textOfBox: 'Button 2',),
                   const SizedBox(width: 20),
                   DefualtBoxAction(onTap: () {  }, textOfBox: 'Button 3',),
                   const SizedBox(width: 20),
                   DefualtBoxAction(onTap: () {  }, textOfBox: 'Button 4',),
                   const SizedBox(width: 20),
                   DefualtBoxAction(onTap: () {  }, textOfBox: 'Button 5',),
                   const SizedBox(width: 20),
                 ],),
             ),
           ],
         ),
         const SizedBox(height: 100,),
         const Align(
             alignment:Alignment.center,
           child: Text("Who are we",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
           ),),
         ),
         const SizedBox(height: 20,),
         const Padding(
           padding: EdgeInsets.all(20.0),
           child: Text("We are a team of 5 people studying in the Department of Communications Engineering in the Faculty of Engineering, Alexandria University, Egypt.\n\n"
                       "We made CubeSat (satellite 10x10x10) for remote sensing (main task is to take a video or photo at certain time and send it to the ground station)\n\n "
                       "earth  to make this mission we  use ( 5 subsystem , OBC , Ground station (python desktop app), structure ).",
                       style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87
           )),
         ),
         const SizedBox(height: 70),
       ],
     )),
    );
  }
}

