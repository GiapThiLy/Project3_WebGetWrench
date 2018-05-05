<?php

use Illuminate\Database\Seeder;

class PhuongTienTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //16id
        DB::table('phuongtien')->insert([
            //1-4
        	['TenPhuongTien'=>'Oto','id_NhanVien'=>'1'],
            ['TenPhuongTien'=>'Oto','id_NhanVien'=>'2'],
            ['TenPhuongTien'=>'Oto','id_NhanVien'=>'3'],
            ['TenPhuongTien'=>'Oto','id_NhanVien'=>'4'],
            //5-8
        	['TenPhuongTien'=>'xe tải','id_NhanVien'=>'1'],
            ['TenPhuongTien'=>'xe tải','id_NhanVien'=>'2'],
            ['TenPhuongTien'=>'xe tải','id_NhanVien'=>'3'],
            ['TenPhuongTien'=>'xe tải','id_NhanVien'=>'4'],
            //9-12
        	['TenPhuongTien'=>'xe máy','id_NhanVien'=>'1'],
            ['TenPhuongTien'=>'xe máy','id_NhanVien'=>'2'],
            ['TenPhuongTien'=>'xe máy','id_NhanVien'=>'3'],
            ['TenPhuongTien'=>'xe máy','id_NhanVien'=>'4'],
            //13-16
        	['TenPhuongTien'=>'xe đạp điện','id_NhanVien'=>'1'],
            ['TenPhuongTien'=>'xe đạp điện','id_NhanVien'=>'2'],
            ['TenPhuongTien'=>'xe đạp điện','id_NhanVien'=>'3'],
            ['TenPhuongTien'=>'xe đạp điện','id_NhanVien'=>'4'],
    	]);
    }
}
