import 'package:flutter/material.dart';
import 'package:loginpage/ui_helper/App_Color.dart'; 
class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text('Login with Google'),
              SizedBox(height: 4,),
              Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundColor: AppColor.themColor,
                  child: InkWell(
                      onTap: (){},
                      child: Image.asset('assets/images/Google-logo.png',fit:BoxFit.cover,)),

                ),
              ),
            ],
          ),

             SizedBox(height: 6,),
          Column(
            children: [
              Text('Login with Facebook'),
              SizedBox(height: 4,),
              Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundColor: AppColor.themColor,
                  radius: MediaQuery.of(context).size.width,
                  child: InkWell(
                    onTap: (){},
                      child: Image.asset('assets/images/facebook.jpg',fit:BoxFit.cover)),

                ),
              ),
            ],
          ),
          SizedBox(height: 6,),
          Column(
            children: [
              Text('Login with Instagram'),
              SizedBox(height: 4,),
              Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundColor: AppColor.themColor,
                  radius: MediaQuery.of(context).size.width,
                  child: InkWell(
                    onTap: (){},
                      child: Image.asset('assets/images/Instagram_icon.png',fit:BoxFit.cover)),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
