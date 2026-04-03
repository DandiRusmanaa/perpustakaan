import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'models/book.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const LibraryPage(),
    );
  }
}

// Halaman Utama Perpustakaan
class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  final List<Book> books = [
    Book(title: 'DILAN', author: 'Pidi Baiq', pdfUrl: 'assets/books/DILAN.pdf'),
    Book(title: 'Laskar Pelangi', author: 'Andrea Hirata', pdfUrl: 'assets/books/Laskar_Pelangi.pdf'),
    Book(title: 'Laut Bercerita', author: 'Leila S. Chudori', pdfUrl: 'assets/books/Laut Bercerita.pdf'),
    Book(title: 'Sebuah Seni untuk Bersikap Bodo Amat', author: 'Mark Manson', pdfUrl: 'assets/books/sebuah seni untuk bersikap bodo amat.pdf'),
    Book(title: 'Seporsi Mie Ayam Sebelum Mati', author: 'Brian Khrisna', pdfUrl: 'assets/books/Seporsi Mie Ayam Sebelum Mati by Brian Khrisna.pdf'),
    Book(title: 'Tentang Kamu', author: 'Sinta Joelina', pdfUrl: 'assets/books/TENTANG KAMU.pdf'),
    Book(title: 'Tere Liye - Hujan', author: 'Tere Liye', pdfUrl: 'assets/books/Tere Liye - Hujan.pdf'),
    Book(title: 'Buku 5cm', author: 'Eiji Hatmi', pdfUrl: 'assets/books/buku 5cm.pdf'),
    Book(title: 'The Psychology of Money', author: 'Morgan Housel', pdfUrl: 'assets/books/the-psychology-of-money-by-morgan-housel.pdf'),
    Book(title: 'Atomic Habits', author: 'James Clear', pdfUrl: 'assets/books/Atomic Habits by James Clear.pdf.pdf'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.blue.shade50,
            child: Row(
              children: [
                const Icon(Icons.menu_book, color: Colors.blue, size: 28),
                const SizedBox(width: 12),
                const Text(
                  'My Library',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text(
                  'Jumlah Buku: ${books.length}',
                  style: TextStyle(fontSize: 16, color: Colors.blue.shade700),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  elevation: 4,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade100,
                      child: Text((index + 1).toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    title: Text(
                      book.title,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    subtitle: Text('by ${book.author}'),
                    trailing: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PdfPage(pdfUrl: book.pdfUrl, bookTitle: book.title),
                          ),
                        );
                      },
                      icon: const Icon(Icons.picture_as_pdf, size: 18),
                      label: const Text('Read'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Halaman PDF Viewer
class PdfPage extends StatelessWidget {
  final String pdfUrl;
  final String bookTitle;

  const PdfPage({
    super.key,
    required this.pdfUrl,
    required this.bookTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookTitle),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SfPdfViewer.asset(
        pdfUrl,
        canShowScrollHead: false,
        canShowScrollStatus: true,
      ),
    );
  }
}

