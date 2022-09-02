
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_chacking_ecommerce/login/login.dart';
import 'package:provider_chacking_ecommerce/model/loginModel.dart';
import 'package:provider_chacking_ecommerce/provider/LoginProvider.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   late LoginModel loginModel;
  TextEditingController FullnameController= TextEditingController();

  TextEditingController EmailController=TextEditingController();
  TextEditingController PasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
     final registerProvider = Provider.of<UserProvider>(context);
    return SafeArea(
      child: Scaffold(
        body:

        Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "asset/logo/logo-removebg-preview.png",
                              ),
                            )),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        "Signup",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: TextField(
                        controller: FullnameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.drive_file_rename_outline),
                          labelText: 'Fullname',
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(5),
                      child: TextFormField(
                        controller: EmailController,
                        validator: (value) {
                          // Check if this field is empty
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          // using regular expression
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Please enter a valid email address";
                          }

                          // the email is valid
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.email_outlined),
                          labelText: 'Email',
                        ),
                      ),
                    ),Container(
                      padding: const EdgeInsets.all(5),
                      child: TextFormField(
                        controller: PasswordController,
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Can\'t be empty';
                          }
                          if (value.length < 6) {
                            return 'Too short';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.lock),
                          labelText: 'Password',
                        ),
                      ),
                    ),

                    Container(
                        height: 50,

                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          child: const Text('SignUp'),
                          onPressed: () {
                            print("*********************************************************");
                            final loginProvider = Provider.of<UserProvider>(
                                context,
                                listen: false);
                            loginProvider .getSignupApiData(email:EmailController.text, password:PasswordController.text,name: FullnameController.text);
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Login()));
                            // print(MobileNomberController.text);
                            // print(passwordController.text);
                          },
                        )),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('Already have an account?'),
                        TextButton(
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Login()));
                          },
                        )
                      ],
                    ),
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}