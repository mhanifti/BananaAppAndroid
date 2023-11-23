# banana_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Tugas 9

Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
  Bisa, sebab JSON merupakan format, sama halnya seperti string, list, dict, dan semacamnya. Akan tetapi jika data JSON tersebut memiliki hubungan antar objek yang kompleks, dibutuhkan perubahan secara realtime, maupun manipulasi data secara realtime. Maka pengambilan data JSON tanpa membuat model tersebut tidaklah efektif.

Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
  CookieRequest berfungsi sebagai penyimpan informasi pengguna seperti last_login maupun csrfmiddelwaretoken. Dalam hal ini, CookieRequest sangat diperlukan apabila berkaitan dengan request HTTP ke server yang membutuhkan csrf sehingga dibutuhkan oleh semua komponen pada aplikasi flutter.

Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
  data dari JSON biasanya berbentuk queryDict, server/aplikasi fetch() url/request bersama dengan data JSON. sehingga setelahnya server/aplikasi dapat mengambil data tersebut dalam bentuk querydict. Jika ingin membutuhkan value, maka hanya get(key) saja.

Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
  autentikasi, menerima username dan password, atau hal yang dibutuhkan lainnya. Lalu akan fetch(url) dan menaruh data yang dibutuhkan. Lalu server akan mencoba login dan jika berhasil, maka akan merespon true/berhasil, jika tidak maka sebaliknya. Lalu dari response tersebut bisa dilanjutkan pada aplikasi seperti push ke widget lain ataupun info gagal login.

Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
1. Container Widget: Menampung widget lain, dan mengatur warna, padding, dan ukuran.
2. Scaffold Widget: Menampilkan layout utama dari aplikasi, dengan header, drawer, dan body.
3. Drawer Widget: Menampilkan menu untuk navigasi ke add_product, list_product, dan main menu.
4. AlertDialog Widget: Menampilkan dialog box dengan pesan seperti add_product dengan pesan berhasil tersimpan atau gagal tersimpan.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Mengikuti Tutorial dan mengubah beberapa kata yang dibutuhkan pada tampilan aplikasi.
2. Membuat tombol regsitrasi, halaman registrasi, dan input registrasi, tetapi masih belum bisa digunakan saat ini.

## Tugas 8

Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat
  Perbedaan antara Navigator.push() dan Navigator.pushReplacement() adalah cara flutter dalam merubah page aplikasi. Navigator.push() berarti menimpa page sebelumnya dengan page yang baru tanpa menghapus page dibawahnya, sedangkan pada Navigator.pushReplacement() berarti mengganti page yang ada dengan page yang baru, sehingga page sebelumnya akan hilang. Perbedaan diketahui ketika Navigator.pop() dilakukan. Jika pop dilakukan setelah push, maka akan kembali ke page sebelumnya, jika pop dilakukan setelah pushReplacement, maka akan kembali ke 2 kali page sebelumnya. Penggunaan metode push jika ingin page sebelumnya tidak ingin direset, sedangkan pushReplacement jika ingin membuat aplikasi lebih ringan.

Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing
1. Center =  Center berarti membuat child berada di tengah-tengah layar baik secara vertical maupun horizontal.
2. Container = Container berarti sebuah kotak kosong yang dapat diatur panjang, lebar, dan padding.
3. Align = Align berarti membuat child dapat diatur berada dimana dengan mengatur jarak di top, bottom, left, dan right.

Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
  Pada tugas kali ini, saya hanya menggunakan elemen input TextFormField dengan decoration, onChanged, dan validator. Untuk validator sendiri akan memvalidasi input user sudah sesuai ketentuan atau belum. Dan onChanged akan merubah state setiap kali berubah. validator akan berjalan ketika menekan tombol save, jika tidak sesuai, maka tidak disave.

Bagaimana penerapan clean architecture pada aplikasi Flutter?
  Pada tugas kali ini, penerapan clean architecture dilakukan dengan membedakan antara dart untuk tampilan aplikasi dengan dart untuk aside. setiap page memiliki 1 file dart tersendiri, dan 1 aside memiliki 1 file dart tersendiri pula.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
1. Mengikuti Tutorial dan mengubah beberapa kata yang dibutuhkan pada tampilan aplikasi.
2. Membuat file dart baru untuk tampilan produk yang disave (Lihat Produk)
3. Membuat model baru pada file dart yang baru tersebut sebagai model yang tersimpan.
4. Menghubungkan input form dengan model agar tersimpan dan dapat tampil di halaman lihat produk.

## Tugas 7

Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
= Perbedaan utama diantara kedua widget ini adalah bagaimana respon terhadap event yang terjadi. Pada widget stateless, tidak ada perubahan jika terjadi suatu event karena tidak memiliki internal state. Tetapi pada widget statefull memiliki internal state sehingga akan merespon jika terjadi event. ini membuktikan bahwa internal state memiliki kemiripan pada AJAX walau keduanya tetap memiliki perbedaan.

Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
1. Scaffold Widget: Adalah widget yang sebenarnya didalamnya menyediakan berbagai widget lainnya. Tetapi pada tugas ini, Scaffold digunakan sebagai base dari UI untuk menampung beberapa widget serta header pada UI.
2. SingleChildScrollView Widget: Adalah widget yang dapat discroll, widget ini berfungsi jika ingin tampilan UI fit pada lebarnya, dan dapat discroll kebawah. Pada tugas ini saya gunakan sebagai container pada card atau tombol yang berbentuk column. Akan terlihat jika terdapat banyak tombol atau card sehingga tidak muat pada screen.
3. Container Widget: Adalah widget yang memiliki padding dan margin. Tidak sama seperti Scaffold yang akan mengisi seluruh screen, ukuran container sendiri ditetapkan sendiri sesuai developer. Pada tugas ini, saya gunakan Container untuk menampilkan beberapa fungsi button seperti 'lihat item', 'tambah item', dan 'logout'.
4. SnackBar Widget: adalah widget seperti caution atau pop-up yang muncul pada bagian bawah UI. Pada tugas ini digunakan sebagai informasi ketika selesai menekan tombol 3 fungsi diatas.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
1. Saya mengerjakan sama seperti tutorial, dengan sedikit perubahan kalimat agar sesuai dengan yang saya inginkan.
2. Lalu, untuk mengerjakan bonus yang diminta, saya memakai cara membuat variable const dengan list warna di luar class apapun. Lalu saya menambahkan parameter ID pada class ShopItem dan digunakan pada iterasi dengan warna yang diambil adalah warna pada list warna dengan index sesuai ID-nya. Sehingga menghasilkan warna yang berbeda pada setiap tombol.
