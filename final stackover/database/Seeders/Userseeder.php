<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Models\User::class, 50)->create();
         $user = App\User::create(
            [
               'name' => 'Admin',
              'email' => 'admin@aqar.net',
               'email_verified_at' => now(),
               'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
              'remember_token' => Str::random(10),
                'phone' => '010021202',
               'nationality' => 'Egyptian',
            ]
         );
         $user->roles()->attach(1);
    }
}
