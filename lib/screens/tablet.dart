import 'package:flutter/material.dart';

import '../component/component.dart';
import '../shared/cubit.dart';

class Tablet extends StatelessWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.zero,
          height: 130,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/crop_background.jpg'),
            ),
          ),
        ),
        Padding(
          padding:  const EdgeInsets.only(top:20,left:50,right:50),
          child: Row(

            children: [
              const  Text("Alex Cube",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 45)),
              const SizedBox(width: 7),
              Image.asset('images/cubeLogo.png',width: 50,height: 50),
              const Expanded(child: SizedBox(),),
              Column(
                children: [
                  Row(
                    children: [
                      RowButton(onTap: () {
                        cubit.ClearButtons(1,context,null) ; }, textOfBox: 'Overview', selectButton: cubit.boolButton[0], width: 100,),
                      const SizedBox(width: 20),
                      RowButton(onTap: () { cubit.LinkButton() ;}, textOfBox: 'Source', selectButton: false, width: 100,),
                      const SizedBox(width: 20),
                      RowButton(
                        onTap: () {

                          cubit.ClearButtons(5,context,null); },
                        textOfBox: 'Contact', selectButton: cubit.boolButton[4], width: 100,),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [

                      RowButton(onTap: () {cubit.ClearButtons(2,context,null)  ;}, textOfBox: 'Ground Station', selectButton: cubit.boolButton[1], width: 130,),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 130,
                        height: 40,
                        child: CustomDropdownButton2(
                          hint: 'SubSystems',
                          dropdownItems: cubit.items,
                          value: cubit.boolButton[3]?cubit.dropdownValue:null,
                          onChanged: (value) {
                            cubit.ClearButtons(4,context,value);
                          },
                          changeState: cubit.boolButton[3],
                          changeIcon: cubit.changeIcon, onMenuChange: (value ) {  cubit.changeIcons(value);},
                        ),
                      ),
                    ],
                  )
                ],
              ),

            ],),
        ),
      ],
    );
  }
}
