<?php

use Illuminate\Database\Seeder;

class NhanVienTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('nhanvien')->insert([
        	['Ten'=>'Nguyễn Văn Thiết','Email'=>'thiet.nt@gmail.com','SĐT'=>'0240360113','DiaChi'=>'263 Giải Phóng','ChungChi'=>'Chứng chỉ nghề','BangCap'=>'Giỏi','NamKinhNgiem'=>'15','XepLoai'=>'Good','Anh'=>'anh1.jpg'],

        	['Ten'=>'Nguyễn Hải Đăng','Email'=>'dangnguyenhai@gmail.com','SĐT'=>'01678847294','DiaChi'=>'Ngõ 100 Đường Trương Định','ChungChi'=>'Chứng chỉ nghề','BangCap'=>'Khá','NamKinhNgiem'=>'5','XepLoai'=>'Good','Anh'=>'anh2.jpg'],

        	['Ten'=>'Dương Văn Chung','Email'=>'duongvanchung@gmail.com','SĐT'=>'106887456','DiaChi'=>'75 Hồ Tùng Mậu','ChungChi'=>'Chứng chỉ nghề','BangCap'=>'Khá','NamKinhNgiem'=>'20','XepLoai'=>'Good','Anh'=>'anh3.jpg'],

        	['Ten'=>'Giáp Tùng Bách','Email'=>'bachtung@gmail.com','SĐT'=>'024360113','DiaChi'=>'số 3 Tạ Quang Bửu','ChungChi'=>'Chứng chỉ nghề','BangCap'=>'Trung bình','NamKinhNgiem'=>'2','XepLoai'=>'Khá','Anh'=>'anh4.jpg'],
        	
        ]);
    }
}
