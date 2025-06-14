import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Pribadi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProfileHomePage(),
    );
  }
}

// Halaman Utama Profil
class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Header dengan foto profil
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.blueAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    // Foto Profil (placeholder dengan ikon)
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 60,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Nama
                    const Text(
                      'Hilmi',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Deskripsi singkat
                    const Text(
                      'Flutter Developer & Mobile App Enthusiast',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 30),
              
              // Deskripsi tentang saya
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tentang Saya',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Saya adalah seorang pengembang aplikasi mobile yang passionate dalam menciptakan aplikasi yang user-friendly dan inovatif. Saya senang belajar teknologi baru dan berbagi pengetahuan dengan komunitas developer.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 30),
              
              // Menu navigasi ke halaman lain
              Row(
                children: [
                  Expanded(
                    child: _buildMenuCard(
                      context,
                      'Keahlian',
                      Icons.star,
                      Colors.orange,
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SkillsPage()),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: _buildMenuCard(
                      context,
                      'Pengalaman',
                      Icons.work,
                      Colors.green,
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ExperiencePage()),
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 15),
              
              Row(
                children: [
                  Expanded(
                    child: _buildMenuCard(
                      context,
                      'Proyek',
                      Icons.code,
                      Colors.purple,
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProjectsPage()),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: _buildMenuCard(
                      context,
                      'Kontak',
                      Icons.contact_phone,
                      Colors.red,
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ContactPage()),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, IconData icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman Keahlian
class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keahlian'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildSkillCategory('Bahasa Pemrograman', [
            'Dart',
            'Java',
            'Python',
            'JavaScript',
          ]),
          const SizedBox(height: 20),
          _buildSkillCategory('Framework & Tools', [
            'Flutter',
            'React Native',
            'Firebase',
            'Git',
          ]),
          const SizedBox(height: 20),
          _buildSkillCategory('Database', [
            'SQLite',
            'MySQL',
            'Firebase Firestore',
            'MongoDB',
          ]),
        ],
      ),
    );
  }

  Widget _buildSkillCategory(String category, List<String> skills) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          const SizedBox(height: 15),
          ...skills.map((skill) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                const Icon(Icons.check_circle, color: Colors.green, size: 20),
                const SizedBox(width: 10),
                Text(
                  skill,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

// Halaman Pengalaman
class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengalaman'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildExperienceCard(
            'Flutter Developer',
            'PT. Tech Solutions',
            '2023 - Sekarang',
            'Mengembangkan aplikasi mobile menggunakan Flutter untuk berbagai klien. Bertanggung jawab dalam design pattern, state management, dan integrasi API.',
          ),
          const SizedBox(height: 20),
          _buildExperienceCard(
            'Mobile App Developer Intern',
            'CV. Digital Startup',
            '2022 - 2023',
            'Magang sebagai mobile developer, mempelajari dasar-dasar pengembangan aplikasi mobile dan berpartisipasi dalam projek tim.',
          ),
          const SizedBox(height: 20),
          _buildExperienceCard(
            'Freelance Developer',
            'Berbagai Klien',
            '2021 - 2022',
            'Mengerjakan berbagai projek freelance untuk mengembangkan aplikasi mobile sederhana dan website.',
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceCard(String position, String company, String period, String description) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            position,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            company,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            period,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

// Halaman Proyek
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyek'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildProjectCard(
            'Aplikasi E-Commerce',
            'Aplikasi mobile untuk belanja online dengan fitur keranjang, pembayaran, dan tracking pesanan.',
            ['Flutter', 'Firebase', 'Stripe API'],
          ),
          const SizedBox(height: 20),
          _buildProjectCard(
            'Aplikasi Cuaca',
            'Aplikasi yang menampilkan informasi cuaca real-time berdasarkan lokasi pengguna.',
            ['Flutter', 'Weather API', 'Geolocator'],
          ),
          const SizedBox(height: 20),
          _buildProjectCard(
            'Todo List App',
            'Aplikasi manajemen tugas dengan fitur kategori, reminder, dan sinkronisasi cloud.',
            ['Flutter', 'SQLite', 'Provider'],
          ),
          const SizedBox(height: 20),
          _buildProjectCard(
            'Aplikasi Chat',
            'Aplikasi chat real-time dengan fitur grup chat dan sharing media.',
            ['Flutter', 'Firebase', 'Socket.IO'],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(String title, String description, List<String> technologies) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Teknologi:',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: technologies.map((tech) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                tech,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.purple,
                ),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
}

// Halaman Kontak
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildContactCard(
            Icons.email,
            'Email',
            'hilmi@email.com',
            Colors.red,
          ),
          const SizedBox(height: 15),
          _buildContactCard(
            Icons.phone,
            'Telepon',
            '+62 812-3456-7890',
            Colors.green,
          ),
          const SizedBox(height: 15),
          _buildContactCard(
            Icons.location_on,
            'Alamat',
            'Jakarta, Indonesia',
            Colors.blue,
          ),
          const SizedBox(height: 15),
          _buildContactCard(
            Icons.web,
            'LinkedIn',
            'linkedin.com/in/hilmi',
            Colors.indigo,
          ),
          const SizedBox(height: 15),
          _buildContactCard(
            Icons.code,
            'GitHub',
            'github.com/hilmi',
            Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard(IconData icon, String title, String value, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: color,
              size: 24,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
