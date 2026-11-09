import 'package:flutter/material.dart';
import '../models/book_model.dart';

class BookCard extends StatelessWidget{
 final Book book; final VoidCallback onTap;
 const BookCard({super.key,required this.book,required this.onTap});
 @override Widget build(BuildContext context)=>Card(elevation:0,margin:const EdgeInsets.only(bottom:14),clipBehavior:Clip.antiAlias,child:InkWell(onTap:onTap,child:Padding(padding:const EdgeInsets.all(12),child:Row(children:[
  ClipRRect(borderRadius:BorderRadius.circular(12),child:Image.network(book.coverUrl,width:78,height:108,fit:BoxFit.cover,errorBuilder:(_,__,___)=>Container(width:78,height:108,color:Theme.of(context).colorScheme.primaryContainer,child:const Icon(Icons.menu_book,size:34)))),
  const SizedBox(width:14),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
   Text(book.title,maxLines:2,overflow:TextOverflow.ellipsis,style:const TextStyle(fontSize:16,fontWeight:FontWeight.w700)),const SizedBox(height:5),
   Text(book.author,maxLines:1,overflow:TextOverflow.ellipsis),const SizedBox(height:8),
   Wrap(spacing:6,children:[Chip(label:Text(book.category)),Row(mainAxisSize:MainAxisSize.min,children:[const Icon(Icons.star,size:16,color:Colors.amber),const SizedBox(width:3),Text(book.rating.toString())])])
  ]))
]))));
}
