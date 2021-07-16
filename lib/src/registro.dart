import 'package:inventorystar/src/tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registro extends StatelessWidget{
String usuario = '';
  String password = '';
  bool mostrarPassword = false;


  @override
  Widget build(context) {
    return Scaffold(
      
      body: Container(
        height: double.infinity,
                width: double.infinity,
        decoration: new BoxDecoration(
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

            SizedBox(height: 5,),

            Text("Registro", style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ), 
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20,),

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
      ),

            SizedBox(height: 10,),
            

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
      ),

            SizedBox(height: 10,),

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
           hintText: 'Confirmar Password',
           hintStyle: TextStyle(
             color: Colors.black38
           )
          ),
        ),
      ),

            SizedBox(height: 10,),
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
              Icons.email,
              color: Color(0xFF003823)
            ),
           hintText: 'Usuario',
           hintStyle: TextStyle(
             color: Colors.black38
           )
          ),
        ),
      ),
            

            SizedBox(height: 10,),

            ElevatedButton(
              
            
              onPressed:(){  
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tabs()),
              );
              },
              child:Text(
                'Iniciar sesión',
                style: TextStyle(color: Colors.white,
                ),
              ),

              style: ButtonStyle(

                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                        return Color.fromRGBO(
                       11,97,156,1.0); 
                      },
                    ),
                  
                ),
              
            ),

            SizedBox(height: 40,),
            
          ],  
        ),

      ),

    ),
    );
  }

}