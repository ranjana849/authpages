import 'package:flutter/material.dart';
import '../ui_helper/App_Color.dart';
import '../ui_helper/appiconhelper.dart';
import '../widgets/riveAnimationWidgets.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var nameController =TextEditingController();
  var emailController =TextEditingController();
  var passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mq =MediaQuery.of(context);
    return Scaffold(
      body:  mq.orientation == Orientation.portrait ? _portraitLay() : _landscapeLay() ,

    );
  }
  Widget _portraitLay(){
    return LayoutBuilder(builder: (context,constraints){
      return  constraints.maxWidth>500 ? Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                        height: 320,
                        child: RiveAnimationWidget()),
                    SizedBox(height: 20,),
                    Text('Hello, again',
                      style: mTextStyle43(),),
                    Text('Start adding your expenses in one click',
                      style: mTextStyle16(),),
                    SizedBox(height: 12,),
                    TextFormField(
                      controller:nameController ,
                      keyboardType: TextInputType.emailAddress,
                      decoration: fieldDecoration(
                        hint: 'Enter your Name',
                        prefixIcon: Icons.account_box,
                        labelText:'Name',
                      ),
                    ),

                    SizedBox(height: 6,),
                    TextFormField(
                      controller:emailController ,
                      decoration: fieldDecoration(
                        hint: 'Enter your Email',
                        prefixIcon: Icons.email,
                        suffixIcon: Icons.clear,
                        labelText:'Email',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        // You can add additional email validation here
                        return null;
                      },

                    ),
                    SizedBox(height: 6,),
                    TextFormField(
                      controller:passwordController ,
                      obscureText: true,
                      decoration: fieldDecoration(
                        hint: 'Enter your Password',
                        prefixIcon: Icons.password,
                        suffixIcon: Icons.visibility,
                        isPasswordField: true,
                        labelText:'Password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        }
                        // You can add additional password validation here
                        return null;
                      },
                    ),
                SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      _signUp();
                    }
                  },
                      child: Text('Login')),
                ),
                SizedBox(height: 8,),
                AppLogoWidget(),
                  ],
                ),
          ),


        ),
      ):Column();

    });
  }
  Widget _landscapeLay(){
    return Row();
  }

void _signUp() {
  // Implement your sign-up logic here
  String email = emailController.text;
  // You can also get the password here: String password = _passwordController.text;
  // Perform the necessary sign-up actions


  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Sign Up Successful'),
        content: Text('You have successfully signed up with $email'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              emailController.clear();
              passwordController.clear();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
}





