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

# Tugas 8
 ## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
 Navigator.push (): Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
Navigator.pop (): Metode pop menghapus rute paling atas dari tumpukan. Ini menampilkan halaman sebelumnya kepada pengguna.

 ## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Drawer: berfungsi sebagai material design drawer.
- ListTile: berfungsi membuat list tile.
- Form: berfungsi untuk membuat container untuk form fields.
- TextFormField: berfungsi sebagai form field berisi TextField.
- DropdownButton: berfungsi membauat Dropdown berupa FormField.
- Card: berfungsi membauat material design card.


 ## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed
- onTap
- onChanged
- onSaved
- onEditingComplete
- onFieldSubmitted
- onHover


 ## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
 Widget Navigator menampilkan layar seakan sebagai sebuah tumpukan (stack). Untuk menavigasi sebuah halaman baru, kita dapat mengakses Navigator melalui BuildContext dan memanggil fungsi push() atau pop(). 

 ## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 1. Menambahkan drawer halaman tambah budget dan data budget pada tiap page
 2. Menambahkan field judul, nominal, dan jenis untuk form di halaman form
 ```shell
body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.title),
                      hintText: "Contoh: Beli Bakso",
                      labelText: "Judul",
                      // Menambahkan icon agar lebih intuitif
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.attach_money),
                      hintText: "Contoh: 5000",
                      labelText: "Nominal",
                      // Menambahkan icon agar lebih intuitif
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],

                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _nominal = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _nominal = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.startsWith('0')) {
                        return 'Nominal tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                      hint: Text('Pilih jenis'),
                      items: _jenis.map((jenis) {
                        return DropdownMenuItem(
                          value: jenis,
                          child: Text(jenis),
                        );
                      }).toList(),
                      value: _jenisTerpilih,
                      onChanged: (newValue) {
                        setState(() {
                          _jenisTerpilih = newValue!;
                        });
                      }),
                ),
                TextButton(
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(16)),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      var map = {};
                      map['judul'] = _judul;
                      map['nominal'] = _nominal;
                      map['jenis'] = _jenisTerpilih;
                      map['tanggal'] = dateInput.text;
                      data.add(map);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Data berhasil disimpan!'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  },
                ),
```
4. Membuat list yang berisi map, yang isinya data-data budget yang disimpan ketika button pada halaman form ditekan.
5. Menambahkan data.dart yang akan menampilkan data-data budget yang telah disimpan, dengan mengimport list data dari file tambah.dart.

# Tugas 9
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, output dari jsonDecode adalah Map [str, dynamic] sehingga dapat memproses data dengan objek ini. Tidak lebih baik karena kita tidak tahu berapa nilai item-item tersebut (dinamis).
## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Spacer: Widget untuk memakan empty space dan memberi jarak antar widget
- Checkbox: Widget untuk membuat checkbox
- Expanded: Widget untuk memperbesar widget child sepanjang axis dari Row/Column
- ListView: Widget untuk membangun suatu kumpulan anakan widget berdasarkan jumlah item.
- InkWell: berfungsi sebagai area yang akan merespon ketika ada onTap event
- FutureBuilder: Widget untuk melakukan update child berdasarkan hasil future yang diberikan


## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Menggunakan library http, flutter membuat HTTP request ke server dan server Django menyelesaikan path dan memuat views yang sesuai. Server kemudian mengirimkan respons ke flutter di mana responsnya adalah response.bodyBytes. Program lalu me-decode bytes yang diterima dan melakukan deserialization menggunakan jsonDecode. Output dari jsonDecode ini kemudian digunakan untuk menginisialisasi model yang dibuat sebelumnya.
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Refactor beberapa file ke folder model dan page. Kemudian tambahkan kotak navigasi yang mengarah ke halaman My Watch List. 
2. Membuat model WatchList di folder model yang dibuat oleh endpoint JSON terkait. 
3. Membuat file fetch.dart di folder model untuk mengambil data JSON dari web service. 
4. Membuat file mywatchlist_page di folder page yang menampilkan semua judul watchlist dengan FutureBuilder. 
5. File detail.dart dibuat di folder page  yang menunjukkan detail dari setiap judul daftar pantauan yang dipilih. Tombol back juga telah ditambahkan untuk kembali ke halaman mywatchlist. 
6. Menambahkan widget InkWell yang merespons sentuhan pada judul film lalu mengarahkan ke halaman details sesuai judul yang dipilih.
