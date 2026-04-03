# Kalkulator Volume (Volume Calculator App)

## Deskripsi Aplikasi

**Kalkulator Volume** adalah aplikasi mobile yang dikembangkan menggunakan framework Flutter untuk menghitung volume berbagai bangun ruang secara mudah dan akurat. Aplikasi ini dirancang dengan antarmuka pengguna yang modern dan intuitif, sehingga memudahkan pengguna dalam melakukan perhitungan matematika.

## Latar Belakang

Perhitungan volume bangun ruang merupakan salah satu materi penting dalam matematika yang sering dibutuhkan dalam kehidupan sehari-hari, baik dalam bidang pendidikan maupun profesional. Aplikasi ini hadir sebagai solusi praktis untuk membantu pengguna menghitung volume tiga bangun ruang dasar yaitu kubus, tabung, dan bola dengan cepat dan akurat.

## Fitur Utama

### 1. Volume Kubus
- Menghitung volume kubus dengan rumus: **V = s³**
- Input: panjang sisi (s)
- Output: hasil perhitungan volume dalam cm³ beserta langkah-langkah perhitungan

### 2. Volume Tabung
- Menghitung volume tabung dengan rumus: **V = π × r² × t**
- Input: jari-jari (r) dan tinggi (t)
- Output: hasil perhitungan volume dalam cm³ beserta langkah-langkah perhitungan

### 3. Volume Bola
- Menghitung volume bola dengan rumus: **V = (4/3) × π × r³**
- Input: jari-jari (r)
- Output: hasil perhitungan volume dalam cm³ beserta langkah-langkah perhitungan

## Spesifikasi Teknis

| Aspek | Detail |
|-------|--------|
| **Framework** | Flutter |
| **Bahasa Pemrograman** | Dart |
| **Target Platform** | Android, iOS, Web, Windows, Linux, macOS |
| **UI Design** | Material Design 3 |
| **Arsitektur** | Stateless & Stateful Widget |
| **Minimum SDK** | Android API 21 / iOS 12.0 |

## Struktur Kode

```
lib/
└── main.dart          # File utama aplikasi
    ├── VolumeCalculatorApp    # Kelas utama aplikasi (StatelessWidget)
    ├── HomePage               # Halaman utama pemilihan bangun ruang
    ├── KubusPage              # Halaman perhitungan volume kubus
    ├── TabungPage             # Halaman perhitungan volume tabung
    └── BolaPage               # Halaman perhitungan volume bola
```

## Teknologi dan Libraries

- **flutter/material.dart**: Library utama untuk komponen UI
- **dart:math**: Library untuk fungsi matematika (pi, pow)
- **cupertino_icons**: Ikon untuk iOS style

## Desain Antarmuka (UI/UX)

### Desain Utama
- **Tema**: Modern dengan efek gradien
- **Warna Utama**: Indigo (#6366F1) dengan berbagai variasi
- **Tipografi**: Font Roboto
- **Efek Visual**:
  - Gradien latar belakang yang menarik
  - Card dengan efek shadow (bayangan)
  - Animasi transisi antar halaman
  - Ikon dengan efek glow

### Pengalaman Pengguna
- Navigasi yang mudah dengan tombol kembali
- Input validation untuk memastikan data yang dimasukkan valid
- Tampilan hasil perhitungan yang jelas dengan langkah-langkah
- Pesan error yang informatif jika input tidak valid

## Cara Penggunaan

1. **Halaman Utama**: Pilih bangun ruang yang ingin dihitung volumenya
2. **Input Data**: Masukkan dimensi yang diperlukan (sisi, jari-jari, tinggi)
3. **Hitung**: Tekan tombol "Hitung Volume"
4. **Hasil**: Lihat hasil perhitungan beserta rumus yang digunakan

## Metode Perhitungan

### Kubus
```
V = s³
Contoh: Jika sisi = 5 cm
V = 5³ = 125 cm³
```

### Tabung
```
V = π t
Contoh: × r² × Jika jari-jari = 3 cm dan tinggi = 7 cm
V = π × 3² × 7 = π × 9 × 7 = 197.92 cm³
```

### Bola
```
V = (4/3) × π × r³
Contoh: Jika jari-jari = 5 cm
V = (4/3) × π × 5³ = (4/3) × π × 125 = 523.60 cm³
```

## Kesimpulan

Aplikasi Kalkulator Volume ini merupakan aplikasi yang berguna untuk membantu pengguna menghitung volume bangun ruang dengan mudah. Dengan desain yang modern dan antarmuka yang user-friendly, aplikasi ini dapat menjadi alat bantu yang efektif dalam pembelajaran matematika maupun aplikasi praktis sehari-hari.

## Cara Menjalankan Aplikasi

1. Pastikan Flutter SDK sudah terinstall
2. Clone repository ini
3. Jalankan perintah: `flutter pub get`
4. Jalankan perintah: `flutter run`

---

*Dikembangkan dengan Flutter*

