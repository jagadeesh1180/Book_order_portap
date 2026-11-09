import 'package:flutter/material.dart';
import '../data/sample_books.dart';
import '../widgets/book_card.dart';
import 'book_details_screen.dart';

class HomeScreen extends StatelessWidget{
 const HomeScreen({super.key});
 @override Widget build(BuildContext context){
  final featured=sampleBooks.take(3).toList();
  return SafeArea(child:CustomScrollView(slivers:[
   SliverPadding(padding:const EdgeInsets.fromLTRB(20,20,20,10),sliver:SliverToBoxAdapter(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
    Text('Hello, Student 👋',style:Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight:FontWeight.w800)),const SizedBox(height:6),const Text('Discover your next book'),const SizedBox(height:20),
    const TextField(decoration:InputDecoration(hintText:'Search books, authors or topics',prefixIcon:Icon(Icons.search))),const SizedBox(height:22),
    Container(width:double.infinity,padding:const EdgeInsets.all(20),decoration:BoxDecoration(gradient:LinearGradient(colors:[Colors.indigo,Colors.deepPurple]),borderRadius:BorderRadius.circular(24)),child:const Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
      Icon(Icons.auto_stories,color:Colors.white,size:36),SizedBox(height:14),Text('Your Digital Library',style:TextStyle(color:Colors.white,fontSize:22,fontWeight:FontWeight.w800)),SizedBox(height:6),Text('Search, save and open books from one simple portal.',style:TextStyle(color:Colors.white70))
    ])),const SizedBox(height:26),Text('Featured Books',style:Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight:FontWeight.w800)),const SizedBox(height:12)
   ]))),
   SliverPadding(padding:const EdgeInsets.symmetric(horizontal:20),sliver:SliverList.builder(itemCount:featured.length,itemBuilder:(_,i)=>BookCard(book:featured[i],onTap:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>BookDetailsScreen(book:featured[i])))))),
   const SliverToBoxAdapter(child:SizedBox(height:20))
  ]));
 }
}
