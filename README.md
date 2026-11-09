# 📚 Book Open Portal

A Flutter Digital Library / Book Open Portal for college FAR Lab.

## Features
- Material 3 responsive UI
- Student dashboard
- Search and category filtering
- Book details
- Open PDF through a URL
- Favorites
- Profile
- Bottom navigation
- Service layer ready for Firebase/Firestore
- Sample offline catalogue

## Stack
Flutter + Dart + Material 3 + Firebase-ready architecture.

## Structure
lib/
  main.dart
  models/book_model.dart
  data/sample_books.dart
  services/book_service.dart
  widgets/book_card.dart
  screens/home_screen.dart
  screens/books_screen.dart
  screens/favorites_screen.dart
  screens/profile_screen.dart
  screens/book_details_screen.dart

## Run
flutter pub get
flutter run

Firebase is not required for the current demo because sample data is included.

## FAR Lab
Problem: students need one place to discover digital books.
Solution: the portal provides searchable books, categories, details, favorites and reading access.
Input: book metadata and PDF URL.
Processing: Flutter filters and presents reusable book objects through a service layer.
Output: students can search, inspect and open books.

## Firebase-ready database
Collection: books

Fields: title, author, description, category, coverUrl, pdfUrl, rating, pages, year.

Future work: Firebase Authentication, Firestore CRUD, Firebase Storage, admin role and an embedded PDF reader.

## Academic Deliverables
Source code, README documentation, architecture, database schema, test cases and demo-ready sample data.
