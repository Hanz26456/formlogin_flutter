import 'package:flutter/material.dart';
import 'login_page.dart'; // Impor halaman login jika perlu logout
import 'register_page.dart'; // Impor halaman registrasi jika perlu navigasi

class HomePage extends StatelessWidget {
  final String email; // Menyimpan email pengguna yang login

  // Konstruktor untuk menerima email pengguna
  const HomePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'), // Gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Menambahkan gambar atau ikon besar
              const Icon(
                Icons.home,
                size: 100,
                color: Colors.white,
              ),
              const SizedBox(height: 20),

              // Menampilkan email pengguna dalam Card untuk memberi efek kedalaman
              Card(
                color: Colors.white.withOpacity(0.8),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Selamat datang, $email!',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Tombol Logout dengan animasi dan perubahan warna
              ElevatedButton(
                onPressed: () {
                  // Navigasi kembali ke halaman login saat logout
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5, // Tambahkan bayangan pada tombol
                ),
                child: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),

              // Tombol untuk registrasi dengan animasi hover
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman registrasi
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5, // Tambahkan bayangan pada tombol
                ),
                child: const Text(
                  'Go to Register Page',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),

              // Menambahkan Divider untuk memisahkan konten (opsional)
              const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              const SizedBox(height: 20),

              // Menambahkan teks atau informasi tambahan (opsional)
              const Text(
                'Terima kasih telah menggunakan aplikasi kami!',
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.center,
              ),

              // Menambahkan FloatingActionButton untuk aksi tambahan (misal profil)
              FloatingActionButton(
                onPressed: () {
                  // Aksi tambahan jika perlu
                  print('Aksi tambahan');
                },
                backgroundColor: Colors.pinkAccent,
                child: const Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
