<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Topic extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $dates = ['deleted_at'];
   
    protected $fillable = [
        'name',
        'description',
        'subcategory_id',
        'category_id',
        'active',
    ];
    public function answers()
    {
    return $this->hasMany(Answer::class);
    }
    public function leaderboards()
    {
    return $this->hasMany(Leaderboard::class);
    }
    public function blogs()
    {
    return $this->hasMany('App\Models\Blog');
    }
    public function category()
    {
    return $this->belongsTo('App\Models\Category');
   
    }
    public function subcategory()
    {
    return $this->belongsTo('App\Models\Subcategory');
    }
    public function quizzes()
    {
    return $this->hasMany('App\Models\Quiz');
    }
}
