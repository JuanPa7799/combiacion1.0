import 'package:flutter/material.dart';
import '../widgets/user_info.dart';
import '../widgets/button_bar.dart';
import 'package:combinacion1_0/User/model/user.dart';

class ProfileHeader extends StatelessWidget {
  final User user;

  ProfileHeader({Key? key, required this.user});
  @override
  Widget build(BuildContext context) {
    //UserBloc userBloc;
    //userBloc = BlocProvider.of(context);

    final title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0),
    );

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[title],
          ),
          UserInfo(user),
          ButtonsBar()
        ],
      ),
    );
  }

  /*Widget showProfileData(AsyncSnapshot snapshot) {
    User user;
    if (!snapshot.hasData || snapshot.hasError) {
      print("No logueado");
      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar la información, Haz loggin")
          ],
        ),
      );
    } else {
      print("Logeado");
      print(snapshot.data);
      user = User(
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoURL.toString());
      final title = Text(
        'Profile',
        style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      );
      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[title],
            ),
            UserInfo(user),
            ButtonsBar()
          ],
        ),
      );
    }
  }*/
}
