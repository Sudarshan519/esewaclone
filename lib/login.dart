import 'package:esewaui/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 110),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Mechanic Finder',
                  style: kTitleTextstyle.copyWith(color:Colors.blueGrey,fontSize:20),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text('x',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueAccent)),
                ),
                SizedBox(width: 30)
              ],
            ),
            Text(
              'Sign in to continue ',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Username/Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.of(context).pushReplacement(PageRouteBuilder(
                      pageBuilder: (_, animation, secontaryAnimation) {
                        return ListenableProvider(
                            create: (context) => animation, child: LoginPage());
                      },
                      transitionDuration: const Duration(seconds: 1)));
                },
                label: Text('   Login   '),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(PageRouteBuilder(
                      pageBuilder: (_, animation, secontaryAnimation) {
                        return ListenableProvider(
                            create: (context) => animation,
                            child: LoginPage());
                      },
                      transitionDuration: const Duration(seconds: 1)));
                },
                child: Text('Dont Have Account \n SignUp')),
                SizedBox(height: 30),
            FlatButton(
              color: Colors.blue.withOpacity(.3),
              onPressed: () {
              
                Navigator.of(context).pushReplacement(PageRouteBuilder(
                    pageBuilder: (_, animation, secontaryAnimation) {
                  return ListenableProvider(
                      create: (context) => animation, child: LoginPage());
                }));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                Text('G',style: TextStyle(color: Colors.blueGrey),),
                Text('o',style: TextStyle(color: Colors.red),),
                Text('o',style: TextStyle(color: Colors.yellowAccent),)
                ,
                Text('g',style: TextStyle(color: Colors.blueGrey),),
                Text('l',style: TextStyle(color: Colors.green),)
                ,Text('e',style: TextStyle(color: Colors.red),)
              ],),
            )
          ],
        ),
      ),
    );
  }
}
