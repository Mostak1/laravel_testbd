<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'name',
        'price',
        'image',
        'description',
        'active',

    ];
    public function enrolls()
    {
    return $this->hasMany(Enroll::class);
    }
    public function Subcategories()
    {
    return $this->hasMany('App\Models\Subcategory', 'category_id');
    }
   
    public function blogs()
    {
    return $this->hasMany('App\Models\Blog');
    }
    
    public function quizsets()
    {
    return $this->hasMany('App\Models\Quizset');
    }
    public function quizzes()
    {
    return $this->hasMany('App\Models\Quiz'); 
    }
    public function topics()
    {
    return $this->hasMany('App\Models\Topic');
    }
}
