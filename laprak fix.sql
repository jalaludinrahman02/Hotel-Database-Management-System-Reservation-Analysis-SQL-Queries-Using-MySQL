CREATE DATABASE Hotel_ABC;
USE Hotel_ABC;
CREATE TABLE reservasi (
Kode_reservasi INT AUTO_INCREMENT PRIMARY KEY,
Nama_Pelanggan VARCHAR (100),
Jenis_kelamin_pelanggan ENUM('Laki-Laki','Perempuan'),
NIK_pelanggan VARCHAR(20),
Tipe_kamar ENUM('Twin','Deluxe','King'),
Nomor_kamar VARCHAR(10),
Date_Check_In DATE,
Date_Check_Out DATE,
Biaya_Menginap INT)
SELECT * FROM reservasi
SELECT Tipe_kamar, COUNT(*) AS Total_pemesanan
FROM reservasi
GROUP BY Tipe_kamar
ORDER BY Total_pemesanan DESC
LIMIT 1;

SELECT Jenis_kelamin_pelanggan, AVG(Biaya_menginap) AS Rata_rata_biaya_menginap
FROM reservasi
GROUP BY Jenis_kelamin_pelanggan;

SELECT *
FROM reservasi
WHERE Biaya_menginap > 750000 AND Tipe_kamar IN ('Twin', 'Deluxe', 'King');

SELECT Nama_pelanggan, Tipe_kamar, Nomor_kamar, Date_Check_In, Date_Check_Out, Biaya_menginap
FROM reservasi
WHERE Biaya_menginap > 750000 AND Tipe_kamar IN ('Twin', 'Deluxe', 'King');





INSERT INTO reservasi (Nama_Pelanggan, Jenis_kelamin_pelanggan, NIK_pelanggan, Tipe_kamar ,Nomor_kamar ,Date_Check_In ,Date_Check_Out ,Biaya_Menginap)
VALUES
('Lionel Messi', 'Laki-laki', '1234567890', 'Deluxe', 'D01', '2024-05-07', '2024-05-10', 700000),
('Alexia Putellas', 'Perempuan', '0987654321', 'Twin', 'T02', '2024-05-08', '2024-05-11', 600000),
('Neymar Jr', 'Laki-laki', '1357924680', 'King', 'K03', '2024-05-09', '2024-05-12', 800000),
('Aittana Bonmati', 'Perempuan', '2468013579', 'Deluxe', 'D04', '2024-05-10', '2024-05-13', 750000),
('Robert Lewandowski', 'Laki-laki', '9876543210', 'Twin', 'T05', '2024-05-11', '2024-05-14', 650000),
('Ruzana', 'Perempuan', '3692581470', 'King', 'K06', '2024-05-12', '2024-05-15', 850000),
('Kevin De Bruyne', 'Laki-laki', '9517534682', 'Twin', 'T07', '2024-05-13', '2024-05-16', 700000),
('Sadio Mané', 'Laki-laki', '8642071359', 'Deluxe', 'D08', '2024-05-14', '2024-05-17', 750000),
('Erling Haaland', 'Laki-laki', '7539514682', 'King', 'K09', '2024-05-15', '2024-05-18', 900000),
('Harry Kane', 'Laki-laki', '2589631470', 'Twin', 'T10', '2024-05-16', '2024-05-19', 650000),
('Iis Dahlia', 'Perempuan', '1230987654', 'Deluxe', 'D11', '2024-05-17', '2024-05-20', 750000),
('Bruno Fernandes', 'Laki-laki', '5678901234', 'King', 'K12', '2024-05-18', '2024-05-21', 850000),
('Romelu Lukaku', 'Laki-laki', '4567890123', 'Twin', 'T13', '2024-05-19', '2024-05-22', 700000),
('Raheem Sterling', 'Laki-laki', '3456789012', 'Deluxe', 'D14', '2024-05-20', '2024-05-23', 750000),
('Gareth Bale', 'Laki-laki', '2345678901', 'King', 'K15', '2024-05-21', '2024-05-24', 900000),
('Virgil van Dijk', 'Laki-laki', '1234567890', 'Twin', 'T16', '2024-05-22', '2024-05-25', 650000),
('Paul Pogba', 'Laki-laki', '0987654321', 'Deluxe', 'D17', '2024-05-23', '2024-05-26', 750000),
('Lisa Blackpink', 'Perempuan', '1357924680', 'King', 'K18', '2024-05-24', '2024-05-27', 850000),
('Trent Alexander-Arnold', 'Laki-laki', '2468013579', 'Twin', 'T19', '2024-05-25', '2024-05-28', 700000),
('Antoine Griezmann', 'Laki-laki', '9876543210', 'Deluxe', 'D20', '2024-05-26', '2024-05-29', 750000),
('Baesuzy', 'Perempuan', '3692581470', 'King', 'K21', '2024-05-27', '2024-05-30', 900000),
('Luka Modrić', 'Laki-laki', '9517534682', 'Twin', 'T22', '2024-05-28', '2024-05-31', 650000),
('Son Heung-min', 'Laki-laki', '8642071359', 'Deluxe', 'D23', '2024-05-29', '2024-06-01', 750000),
('Alisson Becker', 'Laki-laki', '7539514682', 'King', 'K24', '2024-05-30', '2024-06-02', 900000),
('Marc-André ter Stegen', 'Laki-laki', '2589631470', 'Twin', 'T25', '2024-05-31', '2024-06-03', 650000),
('Joshua Kimmich', 'Laki-laki', '1230987654', 'Deluxe', 'D26', '2024-06-01', '2024-06-04', 750000),
('Eden Hazard', 'Laki-laki', '5678901234', 'King', 'K27', '2024-06-02', '2024-06-05', 900000),
('Zee JKT48', 'Perempuan', '4567890123', 'Twin', 'T28', '2024-06-03', '2024-06-06', 650000),
('Kai Havertz', 'Laki-laki', '3456789012', 'Deluxe', 'D29', '2024-06-04', '2024-06-07', 750000),
('Karim Benzema', 'Laki-laki', '2345678901', 'King', 'K30', '2024-06-05', '2024-06-08', 900000);
