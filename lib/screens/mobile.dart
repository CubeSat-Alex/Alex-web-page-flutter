import 'package:flutter/material.dart';
import '../component/constant.dart';
import '../shared/cubit.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.zero,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/crop_background.jpg'),
            ),
          ),
        ),
        Padding(
          padding:  const EdgeInsets.only(left: 30,right: 30),
          child: SizedBox(
            width: double.infinity,
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const  Text("Alex Cube",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 35)),
                const SizedBox(width: 7),
                Image.asset('images/cubeLogo.png',width: 40,height: 40),
                const Expanded(child:  SizedBox()),
                Container(
                  margin: const EdgeInsets.all(0),
                  width: 40,
                  height: 40,
                  // ignore: prefer_const_constructors
                  child: IconButton(onPressed: () { cubit.openmenu(); }, icon: Icon(Icons.menu,color: Colors.white,size: 30,),),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
