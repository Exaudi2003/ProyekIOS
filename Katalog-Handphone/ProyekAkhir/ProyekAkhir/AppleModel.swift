

import Foundation
import UIKit

struct AppleModel {
  let id: Int
  let name: String
  let image: UIImage
  let description: String
}

// MARK: Menyiapkan data sementara yang akan digunakan TableView.
let dummyAppleData = [
    AppleModel(
    id: 1,
    name: "iPad Air (Generasi ke-5) - Spesifikasi Teknis",
    image: UIImage(named: "IpadAir5")!,
    description: "Layar Liquid Retina, Layar Multi-Touch dengan lampu latar LED 10,9 inci (diagonal) dengan teknologi IPS, Resolusi 2360 x 1640 piksel dengan 264 piksel per inci (ppi), Layar warna luas (P3), Layar True Tone, Lapisan oleophobic anti sidik jari, Layar yang dilaminasi penuh, Lapisan anti reflektif, Reflektivitas 1,8%, Kecerahan 500 nit, Mendukung Apple Pencil (generasi ke-2), Layar iPad Air memiliki sudut melengkung. Jika diukur secara diagonal sebagai persegi, layarnya memiliki ukuran 10,86 inci. Area bidang layar berukuran lebih kecil."
  ), AppleModel(
    id: 2,
    name: "iPhone 13 - Spesifikasi Teknis",
    image: UIImage(named: "iphone13")!,
    description: "Panggilan video FaceTime melalui seluler atau Wi‑Fi, Panggilan video FaceTime HD (1080p) melalui 5G atau Wi-Fi, Bagikan pengalaman seperti film, TV, musik, dan aplikasi lain melalui panggilan FaceTime dengan SharePlay, Berbagi layar, Mode Potret dalam video FaceTime, Audio spasial, Mode mikrofon Isolasi Suara dan Spektrum Luas, Zoom dengan kamera hadap belakang."
  ), AppleModel(
    id: 3,
    name: "iPhone 11 Pro - Spesifikasi Teknis",
    image: UIImage(named: "iphone11pro")!,
    description: "Layar Super Retina XDR, Layar OLED Multi-Touch sepenuhnya 5,8 inci (diagonal), Layar HDR, Resolusi 2436 x 1125 piksel pada 458 ppi, Rasio kontras 2.000.000:1 (umum), Layar True Tone, Layar warna luas (P3), Haptic Touch, Kecerahan maks 800 nit (umum); kecerahan maks 1200 nit (HDR), Lapisan oleophobic anti sidik jari, Mendukung tampilan berbagai bahasa dan karakter secara bersamaan"
  ), AppleModel(
    id: 4,
    name: "Apple Watch Series 3 - Spesifikasi Teknis",
    image: UIImage(named: "applewatchseries3")!,
    description: "Apple Watch Series 7, Apple Watch SE, dan Apple Watch Series 3 memiliki level tahan air 50 meter menurut standar ISO 22810:2010. Artinya, bisa digunakan untuk aktivitas air dangkal seperti berenang di kolam renang atau di laut. Namun, semuanya tidak boleh digunakan untuk scuba diving, ski air, atau aktivitas lainnya yang melibatkan air berkecepatan tinggi atau perendaman melebihi kedalaman dangkal. Series 7 juga tahan debu dengan level IP6x."
  ), AppleModel(
    id: 5,
    name: "iPad mini (Generasi ke-6) - Spesifikasi Teknis",
    image: UIImage(named: "ipadmini6")!,
    description: "Ruang tersedia lebih sedikit dan bergantung pada banyak faktor. Konfigurasi standar menggunakan ruang sekitar 12 GB hingga 17 GB, termasuk iOS 15 dengan fitur terbaru serta aplikasi Apple yang dapat dihapus. Aplikasi Apple yang dapat dihapus menggunakan ruang sekitar 4,5 GB, dan Anda bisa mengunduhnya kembali dari App Store. Kapasitas penyimpanan dapat berubah berdasarkan versi perangkat lunak, pengaturan, dan model iPad., Ukuran dan berat bervariasi, tergantung konfigurasi dan proses manufaktur., Penelepon dan penerima telepon FaceTime memerlukan perangkat berkemampuan FaceTime dan koneksi Wi-Fi. Ketersediaan melalui jaringan seluler bergantung pada kebijakan operator; mungkin dikenakan biaya data."
  ), AppleModel(
    id: 6,
    name: "iPhone 6s Plus - Spesifikasi Teknis",
    image: UIImage(named: "iphone6splus")!,
    description: "Pencerminan AirPlay, foto, audio, dan video keluar ke Apple TV (generasi kedua atau lebih baru), Dukungan video mirroring dan video keluar: Hingga 1080p melalui Adaptor AV Digital Lightning dan Adaptor Lightning ke VGA (adaptor dijual terpisah), Format video yang didukung: video H.264 hingga 4K, 30 frame per detik, High Profile level 4.2 dengan audio AAC‑LC hingga 160 Kbps, 48 kHz, audio stereo atau Dolby Audio hingga 1008 Kbps, 48 kHz, audio stereo atau multichannel, dalam format file .m4v, .mp4, dan .mov; video MPEG‑4 hingga 2,5 Mbps, 640 x 480 piksel, 30 frame per detik, Simple Profile dengan audio AAC‑LC hingga 160 Kbps per saluran, 48 kHz, audio stereo atau Dolby Audio hingga 1008 Kbps, 48 kHz, audio stereo atau multichannel, dalam format file .m4v, .mp4, dan .mov; Motion JPEG (M‑JPEG) hingga 35 Mbps, 1280 x 720 piksel, 30 frame per detik, audio dalam ulaw, audio stereo PCM dalam format file .avi"
  ), AppleModel(
    id: 7,
    name: "iPad (Generasi ke-9) - Spesifikasi Teknis",
    image: UIImage(named: "ipadgen9")!,
    description: "Ruang tersedia lebih sedikit dan bergantung pada banyak faktor. Konfigurasi standar menggunakan ruang sekitar 12 GB hingga 17 GB, termasuk iOS 15 dengan fitur terbaru serta aplikasi Apple yang dapat dihapus. Aplikasi Apple yang dapat dihapus menggunakan ruang sekitar 4,5 GB, dan Anda bisa mengunduhnya kembali dari App Store. Kapasitas penyimpanan dapat berubah berdasarkan versi perangkat lunak, pengaturan, dan model iPad., Ukuran dan berat bervariasi, tergantung konfigurasi dan proses manufaktur., Penelepon dan penerima panggilan FaceTime memerlukan perangkat berkemampuan FaceTime dan koneksi Wi-Fi. Ketersediaan melalui jaringan seluler bergantung pada kebijakan operator; mungkin dikenakan biaya data."
  ), AppleModel(
    id: 8,
    name: "iPad (generasi ke-5) - Spesifikasi Teknis",
    image: UIImage(named: "ipadgen5")!,
    description: "Respons frekuensi: 20 Hz hingga 20.000 Hz, Format audio yang didukung: AAC (8 hingga 320 Kbps), Protected AAC (dari iTunes Store), HE-AAC, MP3 (8 hingga 320 Kbps), MP3 VBR, Dolby Digital (AC-3), Dolby Digital Plus (E-AC-3), Audible (format 2, 3, 4, Audible Enhanced Audio, AAX, dan AAX+), Apple Lossless, AIFF, dan WAV, Batas volume maksimum yang dapat dikonfigurasi pengguna"
  ), AppleModel(
    id: 9,
    name: "Apple iPhone 8 - Spesifikasi Teknis",
    image: UIImage(named: "iphone8")!,
    description: "iPhone 8 dibekali dengan material kaca di bagian belakang dan frame aluminium di sisi sampingnya. Pembaruan material kaca ini memungkinkan seri 8 untuk melakukan Wireless Charging. Bagian depan dan belakangnya sudah dilengkapi perlindungan Gorilla Glass sehingga tahan akan goresan dan benturan., Dengan dimensi 138,4 x 67,3 x 7,3 mm dan bobot 148 gram, iPhone seri 8 tampil compact nyaman digenggam serta dibawa ke mana pun. Seri 8 juga masih memiliki tombol Home yang kini tidak lagi digunakan pada seri terbaru ponsel Apple."
  ), AppleModel(
    id: 10,
    name: "iPad (generasi ke-6) - Spesifikasi Teknis",
    image: UIImage(named: "ipadgen6")!,
    description: "Pencerminan AirPlay, keluaran foto, audio, dan video ke Apple TV (generasi kedua atau lebih baru), Dukungan video mirroring dan video keluar: Hingga 1080p melalui Adaptor AV Digital Lightning dan Adaptor Lightning ke VGA (adaptor dijual terpisah), Format video yang didukung: video H.264 hingga 4K, 30 frame per detik, High Profile level 4.2 dengan audio AAC‑LC hingga 160 Kbps, 48 kHz, audio stereo atau Dolby Audio hingga 1008 Kbps, 48 kHz, audio stereo atau multichannel, dalam format file .m4v, .mp4, dan .mov; video MPEG‑4 hingga 2,5 Mbps, 640 x 480 piksel, 30 frame per detik, Simple Profile dengan audio AAC‑LC hingga 160 Kbps per saluran, 48 kHz, audio stereo atau Dolby Audio hingga 1008 Kbps, 48 kHz, audio stereo atau multichannel, dalam format file .m4v, .mp4, dan .mov; Motion JPEG (M‑JPEG) hingga 35 Mbps, 1280 x 720 piksel, 30 frame per detik, audio dalam ulaw, audio stereo PCM dalam format file .avi"
  )
]
