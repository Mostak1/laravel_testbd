<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Institute extends Model
{
    use HasFactory;
    use SoftDeletes; 
    protected $dates = ['deleted_at'];
    
    protected $fillable = [
        'board_id', 'district_id','thana_id', 'name',
    ];
}
