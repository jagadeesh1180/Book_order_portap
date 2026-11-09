import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget{
 const ProfileScreen({super.key});
 @override Widget build(BuildContext context)=>SafeArea(child:ListView(padding:const EdgeInsets.all(20),children:[
  const SizedBox(height:20),const CircleAvatar(radius:42,child:Icon(Icons.person,size:42)),const SizedBox(height:14),
  Text('Student Account',textAlign:TextAlign.center,style:Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight:FontWeight.w800)),const SizedBox(height:5),const Text('B.Tech Computer Science',textAlign:TextAlign.center),const SizedBox(height:28),
  const Card(elevation:0,child:Column(children:[ListTile(leading:Icon(Icons.book_outlined),title:Text('Books available'),trailing:Text('6')),Divider(height:1),ListTile(leading:Icon(Icons.favorite_outline),title:Text('Favorites'),trailing:Text('2')),Divider(height:1),ListTile(leading:Icon(Icons.history),title:Text('Recently opened'),trailing:Text('0'))])),
  const SizedBox(height:16),const Card(elevation:0,child:Column(children:[ListTile(leading:Icon(Icons.settings_outlined),title:Text('Settings'),trailing:Icon(Icons.chevron_right)),Divider(height:1),ListTile(leading:Icon(Icons.info_outline),title:Text('About Portal'),trailing:Icon(Icons.chevron_right))]))
 ]));
}
