import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(

          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white12,
              ),
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text('Akshay Jadhav'),
                accountEmail: Text('akshayjadhavig@gmail.com'),
                currentAccountPicture:

                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('images/me.jpg'),
                  backgroundColor: Colors.white,


                )


              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text('Home',style: TextStyle(
                color: Colors.white,
              ),),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text('Profile',style: TextStyle(
                color: Colors.white,
              ),),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text('Mail',style: TextStyle(
                color: Colors.white,
              ),),

            ),
            // Image(image: AssetImage('images/crop-4-15.jpg'),),
            // Text('Home'),
            // Text('Profile'),
            // Text('xyz'),
            // Text('Logout'),
          ],
        ),
      ),
    );
  }
}
