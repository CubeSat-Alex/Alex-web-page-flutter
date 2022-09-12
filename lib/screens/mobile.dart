import 'package:flutter/material.dart';

import '../component/component.dart';
import '../component/constant.dart';
import '../shared/cubit.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Padding(
      padding:  EdgeInsets.only(left: 55,right: width/30),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 265,
                height: 100,
                child: Row(
                  children: [
                    const  Text("Alex Cube",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 35)),
                    const SizedBox(width: 7),
                    Image.asset('images/cubeLogo.png',width: 40,height: 40),
                  ],
                ),
              ),
            ),
            const Expanded(child:  SizedBox()),
            Container(
              margin: const EdgeInsets.all(0),
              width: 40,
              height: 40,
              // ignore: prefer_const_constructors
              child: IconButton(onPressed: () { cubit.openmenu(); }, icon: Icon(Icons.menu,color: Colors.white,size: 30,),),
            ),
            Visibility(
              visible: cubit.showButtons,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    ColumnButton(onTap: () {  cubit.ClearButtons(1,context,null);}, textOfBox: 'Overview', selectButton: cubit.boolButton[0], width: 100, size: 15,),
                    const SizedBox(width: 20),
                    ColumnButton(onTap: () { cubit.ClearButtons(2,context,null); }, textOfBox: 'Ground Station', selectButton: cubit.boolButton[1], width: 130, size: 15,),
                    const SizedBox(width: 20),
                    const SizedBox(width: 20),
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: cubit.markSubsystem?Colors.white:Colors.transparent),
                          bottom: BorderSide(width: 1.0, color: cubit.markSubsystem?Colors.white:Colors.transparent),
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
                                  child: Text('SubSystems',style: TextStyle(color: cubit.markSubsystem?Colors.white:Colors.grey),)),
                              icon:  Icon(cubit.showSubSystems?Icons.arrow_drop_up_outlined:Icons.arrow_drop_down_outlined,color: cubit.markSubsystem?Colors.white:Colors.grey,),
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
                            ColumnButton(onTap: () {cubit.ClearButtons(4,context,'OBC'); }, textOfBox: 'OBC', selectButton: false, width: 100, size: 13,),
                            ColumnButton(onTap: () {cubit.ClearButtons(4,context,'ADCS'); }, textOfBox: 'ADCS', selectButton: false, width: 100, size: 13,),
                            ColumnButton(onTap: () {cubit.ClearButtons(4,context,'Telemetry'); }, textOfBox: 'Telemetry', selectButton: false, width: 100, size: 13,),
                            ColumnButton(onTap: () {cubit.ClearButtons(4,context,'Communication'); }, textOfBox: 'Communication', selectButton: false, width: 100, size: 13,),
                            ColumnButton(onTap: () {cubit.ClearButtons(4,context,'Payload'); }, textOfBox: 'Payload', selectButton: false, width: 100, size: 13,),
                            ColumnButton(onTap: () {cubit.ClearButtons(4,context,'Structural'); }, textOfBox: 'Structural', selectButton: false, width: 100, size: 13,),

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
            )
          ],
        ),
      ),
    );
  }
}
