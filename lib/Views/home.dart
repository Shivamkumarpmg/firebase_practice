import 'package:firebase_practice/Resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return  Scaffold(
        backgroundColor: AppColors.appColor,
        body: SafeArea(

            child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Hey 😊 \nLets Search your grocery food',
                style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              CircleAvatar(
                foregroundImage: NetworkImage('https://picsum.photos/200/300'),
              )
              ],),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 46,

              child: TextFormField(
                cursorColor: AppColors.appColor,
                style: TextStyle(color: AppColors.greyColor),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey,),
                    hintText: 'Search your daily grocery food',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),

            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
              ),
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 200,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Categories',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        InkWell(onTap: (){},child: Text('See all', style: TextStyle(fontSize: 13, color:Colors.blue),),)
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
