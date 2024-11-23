<?php

namespace Database\Seeders;

use App\Models\Writer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $name = [
            'Raka Putra Wicaksono',
            'Bia Mecca Annisa',
            'Abi Firmansyah'
        ];

        $profession = [
            'Spesialis Interactive Multimedia',
            'Spesialis Data Science',
            'Spesialis Network Security'
        ];

        $extension = [
            '.jpg',
            '.jpg',
            '.png'
        ];

        $i = 0;
        foreach ($name as $name) {
            Writer::create([
                'name' => $name,
                'profession' => $profession[$i],
                'image' => $name.$extension[$i]
            ]);
            $i++;
        }
    }
}
