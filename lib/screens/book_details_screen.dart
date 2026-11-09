import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/book_model.dart';

class BookDetailsScreen extends StatelessWidget{
 final Book book;
 const BookDetailsScreen({super.key,required this.book});
 Future<void> openBook(BuildContext context)async{
  final ok=await launchUrl(Uri.parse(book.pdfUrl),mode:LaunchMode.externalApplication);
  if(!ok&&context.mounted)ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Unable to open the book PDF.')));
 }
 @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('Book Details')),body:SingleChildScrollView(padding:const EdgeInsets.all(20),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
  Center(child:ClipRRect(borderRadius:BorderRadius.circular(18),child:Image.network(book.coverUrl,width:180,height:250,fit:BoxFit.cover,errorBuilder:(_,__,___)=>Container(width:180,height:250,color:Theme.of(context).colorScheme.primaryContainer,child:const Icon(Icons.menu_book,size:70))))),
  const SizedBox(height:24),Text(book.title,style:Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight:FontWeight.w800)),const SizedBox(height:6),Text(book.author,style:Theme.of(context).textTheme.titleMedium),const SizedBox(height:16),
  Wrap(spacing:8,children:[Chip(label:Text(book.category)),Chip(avatar:const Icon(Icons.star,size:16),label:Text(book.rating.toString())),Chip(label:Text(book.pages.toString()+' pages'))]),const SizedBox(height:22),
  Text('About this book',style:Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight:FontWeight.w800)),const SizedBox(height:8),Text(book.description,style:Theme.of(context).textTheme.bodyLarge?.copyWith(height:1.5)),const SizedBox(height:28),
  SizedBox(width:double.infinity,child:FilledButton.icon(onPressed:()=>openBook(context),icon:const Icon(Icons.menu_book),label:const Text('Open Book'))),const SizedBox(height:10),
  SizedBox(width:double.infinity,child:OutlinedButton.icon(onPressed:()=>ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Book added to favorites.'))),icon:const Icon(Icons.favorite_border),label:const Text('Add to Favorites')))
 ])));
}
