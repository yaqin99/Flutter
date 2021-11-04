public class Gaji {
    Pegawai pegawai;
    Jabatan jabatan;
    Tunjangan tunjangan;

    double totalGaji(){
        double LamaKerja = pegawai.lamaKerja <= 5 ? 500000 : 1000000;
        double Anak = tunjangan.anak <= 3 ? 200000 : 500000;
        double total = LamaKerja + Anak + jabatan.gaji;
        return total -  total*18/100;
    }
}
