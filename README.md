# 📱 PastiLaundry (Flutter Frontend)

PastiLaundry adalah aplikasi mobile frontend berbasis **Flutter** yang terhubung ke API Laravel bernama [LaundryAPI](https://github.com/ryhndastra/laundryAPI). Aplikasi ini memungkinkan pengguna untuk mendaftar, login, melihat layanan laundry, membuat pesanan, serta melacak status laundry mereka secara real-time.

---

## ✨ Fitur

- Register & Login pengguna
- Lihat daftar layanan laundry
- Buat dan kelola pesanan laundry
- Lihat status pesanan (diproses, selesai, diambil)
- Terhubung ke Laravel API (Sanctum Token Auth)
- Responsive & clean UI

---

## 🚀 Teknologi

- Flutter
- Dart
- HTTP Package
- Flutter Riverpod (untuk state management)
- Laravel API (backend)

---

## 📦 Instalasi

1. Clone project:
```bash
git clone https://github.com/ryhndastra/bwa-laundry-frontend.git
cd bwa-laundry-frontend
```

2. Install dependencies:
```bash
flutter pub get
```

3. Jalankan emulator atau hubungkan device, lalu:
```bash
flutter run
```

---

## 🔌 Konfigurasi Koneksi ke Backend

Edit file `lib/constants/api_config.dart` (atau file config yang kamu buat) untuk mengatur base URL:

```dart
const String baseUrl = "http://127.0.0.1:8000/api";
// Atau jika di real device:
// const String baseUrl = "http://192.168.x.x:8000/api";
```

Pastikan device dan backend berada di jaringan yang sama jika menggunakan IP lokal.

---

## 🧪 Testing

- Gunakan Postman untuk menguji Laravel API
- Pastikan API sudah berjalan sebelum menjalankan Flutter app
- Cek log menggunakan `flutter logs` untuk debug di real device

---

## 📌 Catatan

- Autentikasi menggunakan token (Sanctum)
- Token disimpan secara lokal (SharedPreferences)
- Bisa di-deploy ke Android/iOS
- Koneksi ke backend Laravel 12+

---

## 🔗 Terkait

- 🧺 Backend API: *https://github.com/ryhndastra/laundryAPI*
