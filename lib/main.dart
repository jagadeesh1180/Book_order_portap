import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/books_screen.dart';
import 'screens/favorites_screen.dart';
import 'screens/profile_screen.dart';

void main() => runApp(const BookOpenPortalApp());

class BookOpenPortalApp extends StatelessWidget {
  const BookOpenPortalApp({super.key});
  @override Widget build(BuildContext context) => MaterialApp(
    title:'Book Open Portal', debugShowCheckedModeBanner:false,
    theme:ThemeData(useMaterial3:true,colorScheme:ColorScheme.fromSeed(seedColor:Colors.indigo),scaffoldBackgroundColor:const Color(0xFFF7F8FC)),
    home:const PortalShell(),
  );
}
class PortalShell extends StatefulWidget {
  const PortalShell({super.key});
  @override State<PortalShell> createState()=>_PortalShellState();
}
class _PortalShellState extends State<PortalShell>{
  int index=0;
  final pages=const[HomeScreen(),BooksScreen(),FavoritesScreen(),ProfileScreen()];
  @override Widget build(BuildContext context)=>Scaffold(
    body:IndexedStack(index:index,children:pages),
    bottomNavigationBar:NavigationBar(selectedIndex:index,onDestinationSelected:(v)=>setState(()=>index=v),destinations:const[
      NavigationDestination(icon:Icon(Icons.home_outlined),selectedIcon:Icon(Icons.home),label:'Home'),
      NavigationDestination(icon:Icon(Icons.menu_book_outlined),selectedIcon:Icon(Icons.menu_book),label:'Books'),
      NavigationDestination(icon:Icon(Icons.favorite_outline),selectedIcon:Icon(Icons.favorite),label:'Favorites'),
      NavigationDestination(icon:Icon(Icons.person_outline),selectedIcon:Icon(Icons.person),label:'Profile'),
    ]),
  );
}
