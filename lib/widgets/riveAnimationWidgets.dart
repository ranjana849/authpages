import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
class RiveAnimationWidget extends StatefulWidget {
  const RiveAnimationWidget({super.key});

  @override
  State<RiveAnimationWidget> createState() => _RiveAnimationWidgetState();
}

class _RiveAnimationWidgetState extends State<RiveAnimationWidget> {
  SMIInput<bool>? mInputCheck;
  Artboard? mArtBoard;
  StateMachineController? mController;

  @override
  void initState() {

    super.initState();
    rootBundle.load("assets/rive/sign_up_login_animation.riv").then((data) {
      final file = RiveFile.import(data);

      final artBoard = file.mainArtboard;

      mController=StateMachineController.fromArtboard(artBoard!,'State');
      if (mController!=null){
        artBoard.addController(mController!);

        mInputCheck =mController!.findInput("check");

        setState(() {
          mArtBoard=artBoard;
        });
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          mArtBoard==null?SizedBox() : Center(
            child: InkWell(
              onTap: (){
                if(mInputCheck!.value==false && mInputCheck!.controller.isActive==false){
                  mInputCheck!.value = true;
                } else if(mInputCheck!.value==true && mInputCheck!.controller.isActive==false){
                  mInputCheck!.value=false;
                }
              },
              child: Padding(
                padding:  const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height:300,
                  child:Rive(artboard: mArtBoard!,) ,
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
