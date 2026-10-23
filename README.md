# 🏨 Sistem Manajemen Basis Data Hotel ABC (MySQL)

![MySQL](https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/Language-SQL-003B57?style=for-the-badge&logo=sqlite&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

---

## 📌 1. Deskripsi Proyek

Repositori ini berisi laporan praktikum dan kode sumber (*source code*) implementasi **Sistem Manajemen Basis Data (DBMS)** untuk pengelolaan data reservasi **Hotel ABC** menggunakan **MySQL**[cite: 88]. Proyek ini dirancang untuk memenuhi modul praktikum Sistem Basis Data di Departemen Statistika, Universitas Brawijaya[cite: 86, 87]. 

Uniknya, dataset simulasi dalam basis data ini mencakup 30 data pelanggan nyata/publik figur (didominasi oleh bintang sepak bola dunia seperti Lionel Messi, Neymar Jr, Erling Haaland, dll.) yang melakukan pemesanan kamar dengan berbagai tipe dan rentang biaya tertentu[cite: 90, 91, 92, 93, 94].

---

## 🏗️ 2. Struktur Skema Basis Data

Basis data utama dinamakan **`Hotel_ABC`** dengan tabel tunggal bernama **`reservasi`**[cite: 89, 90]. Berikut adalah rancangan struktur kolom di dalam tabel tersebut:

| Nama Kolom | Tipe Data | Keterangan / Constraint |
| :--- | :--- | :--- |
| `Kode_reservasi` | `INT` | Primary Key, Auto Increment[cite: 90] |
| `Nama_Pelanggan` | `VARCHAR(100)` | Nama lengkap pelanggan[cite: 90] |
| `Jenis_kelamin_pelanggan` | `ENUM` | Kategori: `'Laki-Laki'`, `'Perempuan'`[cite: 90] |
| `NIK_pelanggan` | `VARCHAR(20)` | Nomor Induk Kependudukan[cite: 90] |
| `Tipe_kamar` | `ENUM` | Kategori: `'Twin'`, `'Deluxe'`, `'King'`[cite: 90] |
| `Nomor_kamar` | `VARCHAR(10)` | Kode nomor kamar (misal: TXX, DXX, KXX)[cite: 89, 90] |
| `Date_Check_In` | `DATE` | Tanggal mulai check-in[cite: 90] |
| `Date_Check_Out` | `DATE` | Tanggal selesai check-out[cite: 90] |
| `Biaya_Menginap` | `INT` | Biaya berkisar antara Rp400.000 – Rp999.999[cite: 89, 90] |

---

## 💻 3. Implementasi Perintah SQL & Pembahasan

Berikut adalah rangkuman query SQL utama yang diimplementasikan beserta fungsinya:

### A. Pembuatan Database & Tabel
```sql
CREATE DATABASE Hotel_ABC;
USE Hotel_ABC;

CREATE TABLE reservasi (
    Kode_reservasi INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Pelanggan VARCHAR(100),
    Jenis_kelamin_pelanggan ENUM('Laki-Laki', 'Perempuan'),
    NIK_pelanggan VARCHAR(20),
    Tipe_kamar ENUM('Twin', 'Deluxe', 'King'),
    Nomor_kamar VARCHAR(10),
    Date_Check_In DATE,
    Date_Check_Out DATE,
    Biaya_Menginap INT
);
