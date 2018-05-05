<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('Users')->insert(
        	['id'=>'1','name'=>'Nguyễn Minh Dũng','email'=>'minhdung11031998@gmail.com','password'=>bcrypt('minhdung97'),'created_at'=>new DateTime()]
        );

        for($i = 1; $i <= 10;$i++)
        {
        	DB::table('Users')->insert(
	        	[
	        		'name' => 'User_'.$i,
	            	'email' => 'user_'.$i.'@gmail.com',
	            	'password' => bcrypt('123456'),
	         
	            	'created_at' => new DateTime(),
	        	]
        	);
        }
    }
}
