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
