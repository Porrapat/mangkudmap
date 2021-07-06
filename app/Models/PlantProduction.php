<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlantProduction extends Model
{
    protected $table = 'plant_production';
    public $timestamps = false;

    use HasFactory;
}
