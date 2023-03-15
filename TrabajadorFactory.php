<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Trabajador>
 */
class TrabajadorFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'userId'=> $this->faker->name(),
            'nombre'=> rand (1, 10),
            'apellidoPaterno'=> $this->faker->name(),
            'apellidoMaterno'=> $this->faker->name(),



        ];
    }
}
