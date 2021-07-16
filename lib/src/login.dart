import 'package:inventorystar/src/registro.dart';
import 'package:inventorystar/src/tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget{
  @override
  _Login createState() => _Login();

}
Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
        height: 50,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.lock,
              color: Color(0xFF003823)
            ),
           hintText: 'Password',
           hintStyle: TextStyle(
             color: Colors.black38
           )
          ),
        ),
      )
    ],
  );
}

Widget buildUsuario(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
        height: 50,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.person,
              color: Color(0xFF003823)
            ),
           hintText: 'Usuario',
           hintStyle: TextStyle(
             color: Colors.black38
           )
          ),
        ),
      )
    ],
  );
}

Widget buildLoginBtn(BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric(vertical:15),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Tabs()),
  );
      },
      padding: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
       ),
      color: Colors.white,
      child: Text(
        'LOGIN',
        style: TextStyle(
          color: Color(0xFF003823),
          fontSize: 18,
          fontWeight: FontWeight.bold
        )
      ),
    ),
  );
}

Widget buildSignUpBtn(BuildContext context){
  return GestureDetector(
    onTap: () => {
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Registro()),
  ),
    },
    child: RichText(
     text: TextSpan(
       children:[
         TextSpan(
           text: 'No tienes una cuenta?',
           style: TextStyle(
             color : Colors.white,
             fontSize: 15,
             fontWeight: FontWeight.w500
          ),
        ),
        TextSpan(
          text: ' Registraste',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold
          )
        )
      ]

     ) 
    ),
  );
}

class _Login extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF00A868),
                      Color(0xFF00A868),
                      Color(0xFF016840),
                      Color(0xFF003823),
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                            "assets/inventoryStar.png",
                          width: 100.0,
                          height: 100.0, 
                          ),
                    Text(
                      'Inventory⭐Star',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 50,),
                    buildUsuario(),
                    SizedBox(height: 20,),
                    buildPassword(),
                    buildLoginBtn(context),
                    buildSignUpBtn(context),
                  ]
                )
                )
              )
            ],
          )
        )
      ),
    );
  }
}