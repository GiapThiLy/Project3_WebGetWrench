<?php

use Illuminate\Database\Seeder;

class DichVuTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dv1= array(
            'Hệ thống phanh và điều khiển lực kéo',
            'Chẩn đoán',
            'Động cơ, làm mát, xả',
            'Phụ tùng xe',
            'Hệ thống sưởi ấm và điều hòa không khí',
            'Ánh sáng và Horns',
            'Bảo trì',
            'Khởi động và sạc pin',
            'Truyền tải và lái xe',
                );
        for ($i=1; $i <=70 ; $i++) { 
            
            DB::table('dichvu')->insert([
                'TenDichVu'=>$dv1[0],
                'id_PhuongTien'=>$i,
            ]);
           
        }
        for ($i=1; $i <=70 ; $i++) { 
            
            DB::table('dichvu')->insert([
                'TenDichVu'=>$dv1[1],
                'id_PhuongTien'=>$i,
            ]);
           
        }

        for ($i=1; $i <=20 ; $i++) { 
            
            DB::table('dichvu')->insert([
                'TenDichVu'=>$dv1[2],
                'id_PhuongTien'=>$i,
            ]);
           
        }

        for ($i=1; $i <=70 ; $i++) { 
            
            DB::table('dichvu')->insert([
                'TenDichVu'=>$dv1[3],
                'id_PhuongTien'=>$i,
            ]);
           
        }
        for ($i=1; $i <=20 ; $i++) { 
            
            DB::table('dichvu')->insert([
                'TenDichVu'=>$dv1[4],
                'id_PhuongTien'=>$i,
            ]);
           
        }

        for ($i=1; $i <=20 ; $i++) { 
            
            DB::table('dichvu')->insert([
                'TenDichVu'=>$dv1[5],
                'id_PhuongTien'=>$i,
            ]);
           
        }

        for ($i=1; $i <=70 ; $i++) { 
            
            DB::table('dichvu')->insert([
                'TenDichVu'=>$dv1[6],
                'id_PhuongTien'=>$i,
            ]);
           
        }

        for ($i=1; $i <=70 ; $i++) { 
            
            DB::table('dichvu')->insert([
                'TenDichVu'=>$dv1[7],
                'id_PhuongTien'=>$i,
            ]);
           
        }

        for ($i=1; $i <=50 ; $i++) { 
            
            DB::table('dichvu')->insert([
                'TenDichVu'=>$dv1[8],
                'id_PhuongTien'=>$i,
            ]);
           
        }
    }   
}
