import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restarunt_app/components/button.dart';
import 'package:restarunt_app/theme/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  primaryColor,
      body:
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 20,),
          //Shop Name
          Text(
            'SUSHI MAN',
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 28,
              color:Colors.white
            ),
          ),
          const SizedBox(height: 15,),
           
          //Icon
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/images/fish-eggs.png',height: 200,),
          ),
      
          //title
          Text(
            'THE TASTE OF JAPANESE FOOD',
          style: GoogleFonts.dmSerifDisplay(
              fontSize:44 ,
              color:Colors.white),
          ),
          const SizedBox(height: 10,),
      
          //subTitle
          Text(
          'feel the taste of the most popular japanese food from anywhere and anytime',
          style:TextStyle(
              color:Colors.grey[200],
              height: 2,
          ),
          ),
          const SizedBox(height: 15,),


      
          //getStarted Button
          MyButton(text:'Get Started',
          onTap: (){
            //go to menu page
            Navigator.pushNamed(context,'/menuPage');
          },)
        ],),
      ),
    );
  }
}