import 'package:flutter/material.dart';
import '../data/sample_books.dart';
import 'book_details_screen.dart';

class FavoritesScreen extends StatelessWidget{
 const FavoritesScreen({super.key});
 @override Widget build(BuildContext context)=>SafeArea(child:ListView(padding:const EdgeInsets.all(20),children:[
  Text('Favorites',style:Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight:FontWeight.w800)),const SizedBox(height:6),const Text('Your saved books will appear here.'),const SizedBox(height:20),
  ...sampleBooks.take(2).map((b)=>Card(elevation:0,child:ListTile(leading:const CircleAvatar(child:Icon(Icons.menu_book)),title:Text(b.title),subtitle:Text(b.author),trailing:const Icon(Icons.favorite),onTap:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>BookDetailsScreen(book:b))))))
 ]));
}
