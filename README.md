# Aplikasi Profil Pribadi/Portofolio

Aplikasi mobile sederhana yang berfungsi sebagai kartu nama digital atau halaman "tentang saya" menggunakan Flutter.

## Fitur

- **Halaman Utama**: Menampilkan foto profil, nama, dan deskripsi singkat
- **Halaman Keahlian**: Daftar keahlian teknologi yang dikuasai
- **Halaman Pengalaman**: Riwayat pengalaman kerja dan magang
- **Halaman Proyek**: Daftar proyek yang pernah dikerjakan
- **Halaman Kontak**: Informasi kontak lengkap

## Cara Menjalankan

1. Pastikan Flutter sudah terinstall di sistem Anda
2. Clone atau download repository ini
3. Buka terminal/command prompt di folder project
4. Jalankan perintah:
   ```
   flutter pub get
   flutter run
   ```

## Struktur Aplikasi

- `main.dart`: File utama yang berisi semua halaman aplikasi
- Navigasi menggunakan `Navigator.push()` untuk berpindah antar halaman
- UI menggunakan Material Design dengan custom theming
- Layout responsif dengan Container, Card, dan Shadow effects

## Teknologi

- Flutter 3.x
- Dart
- Material Design 3

## Screenshot

Aplikasi ini memiliki 5 halaman utama:
1. Halaman Profil (Home)
2. Halaman Keahlian 
3. Halaman Pengalaman
4. Halaman Proyek
5. Halaman Kontak

## Customization

Anda dapat mengubah:
- Nama dan deskripsi di halaman utama
- Daftar keahlian di `SkillsPage`
- Pengalaman kerja di `ExperiencePage`
- Proyek di `ProjectsPage`
- Informasi kontak di `ContactPage`

## Fokus Pembelajaran

Aplikasi ini dirancang untuk belajar:
- Penataan elemen UI (gambar, teks, tombol)
- Navigasi antar halaman di Flutter
- Layout dan design yang menarik
- State management sederhana
