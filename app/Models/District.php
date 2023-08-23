<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class District extends Model
{
    use HasFactory;
    use SoftDeletes; // use the trait
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'board_id', 'name', 'bn_name', 'lat', 'lon', 'url'
    ];
    public function questions(){
        return $this->hasMany(Question::class);
    }
    public function board()
    {
        return $this->belongsTo(Board::class);
    }
    public function thanas()
    {
        return $this->hasMany(Thana::class);
    }
    public function institutes()
    {
        return $this->hasMany(Institute::class);
    }
}
