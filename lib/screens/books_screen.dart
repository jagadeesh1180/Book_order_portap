import 'package:flutter/material.dart';
import '../data/sample_books.dart';
import '../models/book_model.dart';
import '../widgets/book_card.dart';
import 'book_details_screen.dart';

class BooksScreen extends StatefulWidget{const BooksScreen({super.key});@override State<BooksScreen> createState()=>_BooksScreenState();}
class _BooksScreenState extends State<BooksScreen>{
 String query='',category='All';
 List<Book> get filtered=>sampleBooks.where((b){final q=query.toLowerCase();return(category=='All'||b.category==category)&&(q.isEmpty||b.title.toLowerCase().contains(q)||b.author.toLowerCase().contains(q));}).toList();
 @override Widget build(BuildContext context){
  final cats=['All',...sampleBooks.map((b)=>b.category).toSet()];
  return SafeArea(child:Column(children:[
   Padding(padding:const EdgeInsets.fromLTRB(20,20,20,10),child:TextField(onChanged:(v)=>setState(()=>query=v),decoration:const InputDecoration(hintText:'Search books or authors',prefixIcon:Icon(Icons.search)))),
   SizedBox(height:52,child:ListView.separated(padding:const EdgeInsets.symmetric(horizontal:20),scrollDirection:Axis.horizontal,itemCount:cats.length,separatorBuilder:(_,__)=>const SizedBox(width:8),itemBuilder:(_,i)=>ChoiceChip(label:Text(cats[i]),selected:category==cats[i],onSelected:(_)=>setState(()=>category=cats[i])))),
   Expanded(child:filtered.isEmpty?const Center(child:Text('No books found.')):ListView.builder(padding:const EdgeInsets.fromLTRB(20,8,20,20),itemCount:filtered.length,itemBuilder:(_,i)=>BookCard(book:filtered[i],onTap:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>BookDetailsScreen(book:filtered[i]))))))
  ]));
 }
}
