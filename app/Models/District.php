<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class District extends Model
{
    use SoftDeletes; // use the trait
    use HasFactory;
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'board_id', 'name', 'bn_name', 'lat', 'lon', 'url'
    ];
    public function board()
    {
        return $this->belongsTo(Board::class);
    }
    public function thana()
    {
        return $this->hasMany(Thana::class);
    }
}
