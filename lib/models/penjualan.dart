class Penjualan{
  //deklarasi variabel untuk menerima inputan
  //tidak sama dg field pada tabel
  int _id;
  String _name;
  String _keterangan;
  String _jumlah;
  String _tanggal;
  //deklarasi parameter untuk menerima inputan pada class
  Penjualan(this._name,this._keterangan, this._jumlah, this._tanggal);
  //memasukkan atribut pada map yang nantinya akan ditampilkan
  Penjualan.fromMap(Map<String, dynamic> map){
    this._id=map['id'];
    //terdapat toString(), jika terdapat nilai angka tetap ditampilkan sebagai string
    this._name=map['name'].toString();
    this._keterangan=map['keterangan'].toString();
    this._jumlah=map['jumlah'].toString();
    this._tanggal=map['tanggal'].toString();
  }
  //variabel yang digunakan diluar class ini
  //sebaiknya sesuaikan dengan field pada tabel
  //inisialisasi variabel
  int get id =>_id;
  String get name => _name;
  String get keterangan => _keterangan;
  String get jumlah => _jumlah;
  String get tanggal => _tanggal;
  //fungsi ini akan dipanggil pada proses pengisian data untuk form input
  //dan yang menggunakan class penjualan
  //sebaiknya disamakan nama fungsinya dengan variabel diatas
  set name(String value){
    //sebaiknya disamakan dengan variabel lokal diatas _name
    //jika berbeda dapat terjadi masalah pada proses update
    _name=value;
  }
  set keterangan(String value){
    _keterangan=value;
  }
  set jumlah(String value){
    _jumlah=value;
  }
  set tanggal(String value){
    _tanggal=value;
  }
  //return map digunakan pada database, nama variabel disamakan dg field
  Map<String, dynamic> toMap(){
    Map<String, dynamic> map= Map<String, dynamic>();
    map['id']=this._id;
    map['name']=name;
    map['keterangan']=keterangan;
    map['jumlah']=jumlah;
    map['tanggal']=tanggal;
    return map;
  }
}