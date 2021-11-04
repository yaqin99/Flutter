public class App {
    public static void main(String[] args) throws Exception {
       
        Pegawai pegawai = new Pegawai();
        pegawai.nama = "Andriansyah Syaputra";
        pegawai.lamaKerja = 10;

        Jabatan jabatan = new Jabatan();
        jabatan.nama = "Manajer";
        jabatan.gaji = 12000000;

        Tunjangan tunjangan = new Tunjangan();
        tunjangan.anak = 2;
        tunjangan.istri = false;

        Gaji gaji = new Gaji();
        gaji.jabatan = jabatan;
        gaji.pegawai = pegawai;
        gaji.tunjangan = tunjangan;

        System.out.println("Total gaji : " + gaji.totalGaji());

        Pegawai Pegawai = new Pegawai();
        Pegawai.nama = "Iqbal Ardiansyah";
        Pegawai.lamaKerja = 5;

        Jabatan Jabatan = new Jabatan();
        Jabatan.nama = "Staf";
        Jabatan.gaji = 4000000;

        Tunjangan Tunjangan = new Tunjangan();
        Tunjangan.anak = 0;
        Tunjangan.istri = false;

        Gaji Gaji = new Gaji();
        Gaji.jabatan = Jabatan;
        Gaji.pegawai = Pegawai;
        Gaji.tunjangan = Tunjangan;

        System.out.println("Total Gaji : " + Gaji.totalGaji());
        System.out.println("Total keseluruhan gaji adalah "+(gaji.totalGaji() + Gaji.totalGaji()));
    }
}