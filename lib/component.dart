import 'package:flutter/material.dart';

class DefualtBoxAction extends StatefulWidget {
  final String textOfBox;
  final Function()? onTap;
  const DefualtBoxAction({Key? key,
    required this.textOfBox,
    required this.onTap,
  }
      ) : super(key: key);
  @override
  _DefualtBoxActionState createState() => _DefualtBoxActionState();
}

class _DefualtBoxActionState extends State<DefualtBoxAction> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 100,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              side:  const BorderSide(color: Colors.transparent, width: 1),
              borderRadius: BorderRadius.circular(20.0),)
              ,)
        ),
        child: Text(widget.textOfBox,style: const TextStyle(color:Colors.white,)),
        onPressed: widget.onTap,
      ),
    );
  }
}

class DetailBox extends StatefulWidget {
  const DetailBox({Key? key}) : super(key: key);

  @override
  State<DetailBox> createState() => _DetailBoxState();
}

class _DetailBoxState extends State<DetailBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
