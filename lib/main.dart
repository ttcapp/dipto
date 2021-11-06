import 'package:dipto/demo_page.dart';
import 'package:dipto/list_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() {
  runApp(MyApp());
}
double conHeight=100;
double conWidth=100;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SlideDrawer(
        offsetFromRight: 180,
        backgroundColor: Colors.blue,
        duration: Duration(milliseconds: 5000),
        headDrawer: Container(
          height: 200,
          child: Image.network("https://cdn.pixabay.com/photo/2020/06/14/10/35/flower-5297344_960_720.jpg",
            fit:BoxFit.fitWidth ,),
        ),
        items: [
          MenuItem('Home',
              icon: Icons.ac_unit_outlined,
              onTap: (){}),
          MenuItem('Project',
              icon: Icons.remove,
              onTap: (){}),
          MenuItem('Favourite',
              icon: Icons.login,
              onTap: (){}),
          MenuItem('Profile',
              icon: Icons.height,
              onTap: (){}),
          MenuItem('Setting',
              icon: Icons.mode,
              onTap: (){}),
        ],
        child: HomePage(),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dipto"),

      ),
      body: Center(
        child: Column(

          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ListPage()));
                },
                child: Text("Go To Sing In")),
            Container(
                height: conHeight,
                width:conWidth,
                color: Colors.black,
              ),

            InkWell(
              onTap: (){
                setState(() {
                  conHeight=300;
                  conWidth=300;
                });
              },
              onDoubleTap: (){
                setState(() {
                  conHeight=100;
                  conWidth=100;

                });
              },
              child: AnimatedContainer(
                height: conHeight,
                width: conWidth,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:NetworkImage("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg",
                        ),fit: BoxFit.cover

                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(180),
                    border: Border.all(color: Colors.purple,width: 4)
                ), duration: Duration(milliseconds: 4000),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
