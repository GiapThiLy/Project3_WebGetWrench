<?php

use Illuminate\Database\Seeder;

class ChiTietDichVuTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $NDDichVuPhanh = array(
            'Thay thế cáp phanh đỗ xe',
            'Thay Đổi Chỗ Đậu Phanh Xe Nôi',
            'Thay thế xy lanh phanh',
            'Kiểm tra an toàn phanh', 
            'Thay thế phanh',
            'Hệ thống bôi trơn phanh Brake',
            'Điều chỉnh phanh',
        );
        $NDDichVuChuanDoan = array(
            'Kiểm tra động cơ',
            'Đèn cảnh báo',
            'Chuẩn đoán',
        );  
        $NDDichVuDongCo = array(
            'Thay thế van điều khiển không hoạt động',
            'Thay thế hệ thống xả',
            'Thay thế cảm biến nhiệt độ nước làm mát động cơ',
            'thay thế bộ chế hòa khí',
        );  
        $NDDichVuPhuTung = array(
            'Thay thế cột Antenna',
            'Thay thế kính gương',
            'Thay thế bánh lái',
            'Thay thế cảm biến khoảng cách phía sau',
        );
        $NDDichVuSuoiVaDieuHoa = array(
            'Thay thế Bộ lọc không khí Cabin',
            'Chống rỉ rác',
            'Thay thế ống lò sưởi',
        );
        $NDDichVuAnhSang= array(
            'Thay bóng đèn pha',
            'Thay bóng đèn góc',
        );
        $NDDichVuBaoTri = array(
            'luân chuyển lốp',
            'bảo trì theo lịch trình',
        );
         for ($i=1; $i <=70 ; $i++) { 
            for ($j=0; $j <=6 ; $j++) { 
                DB::table('chitietdichvu')->insert([
                    'id_DichVu'=>$i,
                    'NDDichVu'=>$NDDichVuPhanh[$j],
                    'GiaDichVu'=>0,
                ]); 
            }
        }

        for ($i=71; $i <=140 ; $i++) { 
            for ($j=0; $j <=2 ; $j++) { 
                DB::table('chitietdichvu')->insert([
                    'id_DichVu'=>$i,
                    'NDDichVu'=>$NDDichVuChuanDoan[$j],
                    'GiaDichVu'=>0,
                ]); 
            }
        }
        for ($i=141; $i <=160 ; $i++) { 
            for ($j=0; $j <=3 ; $j++) { 
                DB::table('chitietdichvu')->insert([
                    'id_DichVu'=>$i,
                    'NDDichVu'=>$NDDichVuDongCo[$j],
                    'GiaDichVu'=>0,
                ]);
            } 
        }
        for ($i=161; $i <=230 ; $i++) { 
            for ($j=0; $j <=3 ; $j++) { 
                DB::table('chitietdichvu')->insert([
                    'id_DichVu'=>$i,
                    'NDDichVu'=>$NDDichVuPhuTung[$j],
                    'GiaDichVu'=>0,
                ]);
            } 
        }
        for ($i=231; $i <=250 ; $i++) { 
            for ($j=0; $j <=2 ; $j++) { 
                DB::table('chitietdichvu')->insert([
                    'id_DichVu'=>$i,
                    'NDDichVu'=>$NDDichVuSuoiVaDieuHoa[$j],
                    'GiaDichVu'=>0,
                ]); 
            }
        }
        for ($i=251; $i <=270 ; $i++) { 
            for ($j=0; $j <=1 ; $j++) { 
                DB::table('chitietdichvu')->insert([
                    'id_DichVu'=>$i,
                    'NDDichVu'=>$NDDichVuAnhSang[$j],
                    'GiaDichVu'=>0,
                ]); 
            }
         }   
        for ($i=271; $i <=340 ; $i++) { 
            for ($j=0; $j <=1 ; $j++) { 
                DB::table('chitietdichvu')->insert([
                    'id_DichVu'=>$i,
                    'NDDichVu'=>$NDDichVuBaoTri[$j],
                    'GiaDichVu'=>0,
                ]); 
            }
        }
       
    }
}
