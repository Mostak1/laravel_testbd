<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Enroll extends Model
{
    use HasFactory;
    use SoftDeletes; // use the trait
    protected $dates = ['deleted_at'];
    // status(default pending)
    protected $fillable = [
        'category_id','user_id','tj_methode','tj_id','status','expair_time' 
    ];
    public function category()
    {
    return $this->belongsTo(Category::class);
    }
    public function user()
    {
    return $this->belongsTo(User::class);
    }
}
