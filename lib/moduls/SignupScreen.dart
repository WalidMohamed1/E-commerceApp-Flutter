import 'package:flutter/material.dart';
import 'LoginScreen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var keyValidator = GlobalKey<FormState>();
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Signup"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: SingleChildScrollView(
            child: Form(
              key: keyValidator,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/logo.png'),
                    width: 250,
                  ),
                  const SizedBox(height: 60),
                  TextFormField(
                    controller: nameController,
                    validator: (value){
                      var letters = RegExp("[a-zA-Z]");
                      if(value == "")
                        return "This field is required.";
                      if(value!.contains(" ",0))
                        return "Do not leave spaces.";
                      if(!value.contains(letters))
                        return "Invalid username !";
                      if(value.length < 2 || value.length > 8 )
                        return "It must be between 2 and 8 letters.";
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: ("Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: emailController,
                    validator: (value){
                      if(value == "")
                        return "This field is required.";
                      if(value!.contains(" ",0))
                        return "Do not leave spaces.";
                      if(!value.contains("@") || !value.contains("."))
                        return "Invalid email !";
                      if(value.length < 5 || value.length > 50 )
                        return "Out of range !";
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: ("Email"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: passwordController,
                    validator: (value){
                      if(value == "")
                        return "This field is required.";
                      if(value!.contains(" ",0))
                        return "Do not leave spaces.";
                      if(value.length < 8)
                        return "Password must be minimum 8 characters.";
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isHidden,
                    decoration: InputDecoration(
                        labelText: ("Password"),
                        suffixIcon: IconButton(
                            onPressed:()
                            {
                              setState(() {
                                isHidden = !isHidden;
                              });
                            } ,
                            icon: isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 200,
                    child: OutlinedButton(
                        onPressed: () {
                          if(keyValidator.currentState!.validate())
                          {
                            print(nameController.text);
                            print(emailController.text);
                            print(passwordController.text);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                          }
                        },
                        child: const Text("SignUp", style: TextStyle(fontSize: 17)),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(244,0,20,0.9),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        )


                    ),
                  ),
                  const SizedBox(height: 5),
                  Text("Have an account ?"),
                  MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },child: Text("Go Login"),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





