import '../data/sample_books.dart';
import '../models/book_model.dart';

class BookService{
 Future<List<Book>> getBooks()async=>sampleBooks;
 Future<List<Book>> searchBooks(String query)async{
  final q=query.trim().toLowerCase();
  if(q.isEmpty)return sampleBooks;
  return sampleBooks.where((b)=>b.title.toLowerCase().contains(q)||b.author.toLowerCase().contains(q)||b.category.toLowerCase().contains(q)).toList();
 }
}
