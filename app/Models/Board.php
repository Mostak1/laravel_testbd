<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Board extends Model
{
    use SoftDeletes; // use the trait
    use HasFactory;
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'name', 'url'
    ];
    public function questions(){
        return $this->hasMany(Question::class);
    }
    public function districts()
    {
        return $this->hasMany(District::class);
    }
    public function institutes()
    {
        return $this->hasMany(Institute::class);
    }
}
