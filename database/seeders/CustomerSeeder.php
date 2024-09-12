<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class CustomerSeeder extends Seeder
{
    public function run(): void
    {
        // Define demo data
        $customers = [
            [
                'uid' => 'CUST001',
                'name' => 'John Doe',
                'phone' => '1234567890',
                'email' => 'john.doe@example.com',
                'address' => '123 Elm Street, Springfield',
                'create_by' => 'admin',
                'create_date' => Carbon::now()->toDateString(),
                'update_by' => null,
                'update_date' => null,
            ],
            [
                'uid' => 'CUST002',
                'name' => 'Jane Smith',
                'phone' => '0987654321',
                'email' => 'jane.smith@example.com',
                'address' => '456 Oak Avenue, Springfield',
                'create_by' => 'admin',
                'create_date' => Carbon::now()->toDateString(),
                'update_by' => null,
                'update_date' => null,
            ],
            [
                'uid' => 'CUST003',
                'name' => 'Alice Johnson',
                'phone' => '1122334455',
                'email' => 'alice.johnson@example.com',
                'address' => '789 Pine Road, Springfield',
                'create_by' => 'admin',
                'create_date' => Carbon::now()->toDateString(),
                'update_by' => null,
                'update_date' => null,
            ],
            [
                'uid' => 'CUST004',
                'name' => 'Bob Brown',
                'phone' => '5566778899',
                'email' => 'bob.brown@example.com',
                'address' => '101 Maple Street, Springfield',
                'create_by' => 'admin',
                'create_date' => Carbon::now()->toDateString(),
                'update_by' => null,
                'update_date' => null,
            ],
            [
                'uid' => 'CUST005',
                'name' => 'Carol White',
                'phone' => '6677889900',
                'email' => 'carol.white@example.com',
                'address' => '202 Birch Lane, Springfield',
                'create_by' => 'admin',
                'create_date' => Carbon::now()->toDateString(),
                'update_by' => null,
                'update_date' => null,
            ],
        ];

        // Insert demo data
        DB::table('customers')->insert($customers);
    }
}
