# Tugas 7

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
"# pbp-flutter-lab" 

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. Sedangkan Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. Container, fungsinya untuk membungkus widget lain sehingga dapat diberikan nilai seperti margin, padding, warna background, atau dekorasi.
2. Row, menampilkan widget-widget secara horizontal atau sebaris dari kiri ke kanan, widget Row menggunakan property children artinya widget ini bisa diisi oleh banyak widget.
3. Column, widget akan mengarah secara vertikal atau dari atas kebawah, widget ini juga menggunakan property children artinya widget ini bisa diisi oleh banyak widget.
4. Scaffold, berfungsi membuat sebuah halaman pada flutter, scaffold ini memiliki beberapa parameter yang biasa kita gunakan seperti appBar untuk membuat AppBar, body untuk bagian tubuhnya, atau kita juga bisa menambahkan floating action bar, maupun mengganti warna background bodynya.
5. Text,  berfungsi untuk menampilkan sebuah teks biasa, atau bisa kita berikan style dengan menambahkan property style.
6. AppBar, berfungsi sebagai menu penunjuk atau dapat menampilkan beberapa navigasi dari aplikasi.
7. MaterialApp, berfungsi membuat aplikasi menerapkan Material Design
8. Icon, berfungsi untuk menggunakan icon yang telah disediakan

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() berfungsi untuk memberitahu widget bahwa ada objek yang berubah pada State sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang sudah diubah. Pada tugas ini, variabel yang terdampak adalah _counter.


### Jelaskan perbedaan antara const dengan final.
Const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi (Compile time) berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan value secara langsung. 
Final (variabel yang menggunakan keyword final) diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali. Dengan kata lain nilai final akan diketahui pada saat run-time. Final dapat digunakan untuk deklarasi variabel immutable yang nilainya sudah ataupun belum diketahui pada saat waktu kompilasi berjalan.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat sebuah program Flutter baru dengan nama counter_7.
flutter create counter_7 pada cmd dengan direktori yang diinginkan.

2. Tombol + menambahkan angka sebanyak satu satuan.
Menambahkan kode
```shell
void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

floatingActionButton: Container(
        margin: EdgeInsets.only(left: 30),
        child: Row(
              mainAxisAlignment: _counter==0 ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.add
                ),
                onPressed: _incrementCounter,
                heroTag: null,
              ),
              
              ],
          ),
      )
```
3. Tombol - mengurangi angka sebanyak satu satuan. Apabila counter bernilai 0, maka tombol - tidak memiliki efek apapun pada counter.
Menambahkan kode
```shell
void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
floatingActionButton: Container(
        margin: EdgeInsets.only(left: 30),
        child: Row(
              mainAxisAlignment: _counter==0 ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
              children: [
                if (_counter > 0) 
                FloatingActionButton(   
                  backgroundColor: Colors.red,        
                child: Icon(
                  Icons.remove
                ),
                onPressed: _decrementCounter,
                heroTag: null,
              ),
              
              ],
          ),
      )
```
4. Apabila counter bernilai ganjil, maka teks indikator berubah menjadi "GANJIL" dengan warna biru.
```shell
mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_counter.isOdd) 
              const Text(
              'GANJIL', style: TextStyle(color: Colors.blue),
              ),
```

5. Apabila counter bernilai genap, maka teks indikator berubah menjadi "GENAP" dengan warna merah.
```shell
mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_counter.isEven)
              const Text(
              'GENAP', style: TextStyle(color: Colors.red),
              ),
```