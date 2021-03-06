import 'package:dbapp/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:dbapp/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:dbapp/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user= Provider.of<FirebaseUser>(context);
    //either home or auth widget
    if(user==null){
      return Authenticate();
    }else{
      return Home();
    }
    
  }
}