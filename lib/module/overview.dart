import 'package:flutter/material.dart';
import '../component/component.dart';
import '../component/constant.dart';
import '../responsiv.dart';
import '../shared/cubit.dart';

// ignore: must_be_immutable
class OverView extends StatelessWidget {
  const OverView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return Padding(
      padding: EdgeInsets.only(top: 120,bottom: 80,left:Responsive.isMobile(context)?10:width/(height/70),right:Responsive.isMobile(context)?0:width/(height/70)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Center(
            child: Text("Overview",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
            ),),
          ),
          const SizedBox(height: 100,),
          Responsive.isMobile(context) ?OverviewText(state: 'column', context: context)
              :(Responsive.isTablet(context) ? OverviewText(state: 'column', context: context)
              : OverviewText(state: 'row', context: context)),
          const SizedBox(height: 30),
          const Text("Scope :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("Alex-Cube mission aspires to be the first fully open source satellite in Egypt, with all satellite "
              "subsystems designed from the ground up in an open source hardware and software manner.\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const SizedBox(height: 30),
          const Text("Mission Objectives :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("The Alex-cube project's mission goals are to have the camera on the cube capture "
              "(photos or videos) large areas of the Earth's surface and store them until the ground station "
              "orders them. There are three tasks that Cubesat performs in its orbit :"
              ,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          Padding(
            padding: EdgeInsets.only(left: (width/50),top: 7),
            child: const Text( "•  TT&M collect data and send it to OBC by SPI (serial peripheral interface) then OBC send it to GS(Ground Station)  \n"
                "•  The ADCS subsystem receive order from GS by OBC for drive servo motors to certain position  \n"
                "•  Payload subsystem successfully  take (image or video) in Certain Position then save it for sending it within Session by OBC. \n",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.7
                )),
          ),
          const SizedBox(height: 30),
          const Text("Project Development Phases :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("A space project needs a big management to be successful. That’s why all space projects  "
              "are divided into various logical stages, called Phases. Each phase is designed to end with a major "
              "milestone in the development, the CubeSat development is divided in 4 different phases A, B, C, D.\n"
              ,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          RichText(
            text: const TextSpan(
              // Here is the explicit parent TextStyle
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  height: 1.5
              ),
              children: <TextSpan>[
                TextSpan(text: 'Phase A : ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'is a relatively low cost paper exercise, designed to expand the basic idea and confirm that the project is feasible, by studying mission documentation.\n\n'),
                TextSpan(text: 'Phase B : ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'The main purpose of Phase B is to convert the conceptual idea into a prototype model upon '
                    'which further investigations can be performed to confirm the feasibility of the concept, before going to the calculation of building qualified hardware for the mission.\n'
                    'In phase B we make ground Station(desktop application with python) and 3 kits achieve our goals :'
                ),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: (width/50),top: 7),
            child: const Text( "•  The raspberry pi act as OBC,communication and payload.\n"
                "•  Arduino uno act as ADCS subsystem.\n"
                "•  Arduino uno act as TT&M subsystem.\n",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.7
                )),
          ),
          RichText(
            text: const TextSpan(
              // Here is the explicit parent TextStyle
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  height: 1.5
              ),
              children: <TextSpan>[
                TextSpan(text: 'Phase C : ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'The purpose of Phase C  is to convert the outcome of Phase B into a fully mission qualified model.\n'
                    'In phase c  we make a structure for cubesat ,make pcb for  subsystems ,use (Atmega328)  instead of arduino uno\n\n'
                ),
                TextSpan(text: 'Phase D : ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'After made cubesat  our supervisor suggest make a  communication and broadcast satellite in GEO region.\n'
                    'Our prototype Was  used The satellite to receive the signals from the broadcast station and rebroadcast them to Earth.'
                    'The viewer\'s or subscriber’s picks up the signal from the satellite and passes it to the receiver in the viewer\'s house.'
                    'The receiver processes the signal and passes it to subscribers . '
                ),

              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text("system functional Description :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("The following diagram gives a general idea of the functionality of each subsystem and of the interactions between the subsystems."
              " The power supply is represented in a blue dotted line and the data flow in dotted dark gray."
              " The EPS gives the electrical power to all the other subsystem and Each subsystem will be discussed more in detail in the following section.\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          Center(child: SizedBox(
              height: 550,
              width: 1000,
              child: Image.asset('images/systems.png'))),
          Row(
            children:  [
              const Text('For more details about the project read this '),
              TextButton(
                  onPressed:(){
                    cubit.boolButton[0]=false;
                    scrollController.animateTo(0,
                        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                    cubit.showBudget(1);}, child: const Text('Pdf\'s',style: TextStyle(color: Colors.blue))),


            ],
          ),

          Padding(
            padding: EdgeInsets.only(top: 30,bottom: 0,left:Responsive.isMobile(context)?10:width/(height/70),right:Responsive.isMobile(context)?0:width/(height/70)),
            child: const Text('Supported by :',style: TextStyle(color: Colors.grey,fontSize: 17),),
          ),
          Responsive.isMobile(context)?Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [Image.asset('images/azhar.png',width: 100,height: 100,),
                  const SizedBox(width: 70),
                  Image.asset('images/logo-2.png',width: 150,height: 150,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Image.asset('images/logo-1.png',width: 150,height: 150,),
                  const SizedBox(width: 35),
                  Image.asset('images/Alexandria_University_logo.png',width: 150,height: 150,),
                ],
              )


            ],
          ):Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/azhar.png',width: 100,height: 100,),
              const SizedBox(width: 30),
              Image.asset('images/logo-2.png',width: 150,height: 150,),
              Image.asset('images/logo-1.png',width: 150,height: 150,),
              const SizedBox(width: 30),
              Image.asset('images/Alexandria_University_logo.png',width: 150,height: 150,),
            ],
          )
        ],
      ),
    );
  }
}
