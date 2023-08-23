<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Question extends Model
{
    use HasFactory;
    use SoftDeletes; // use the trait
    protected $dates = ['deleted_at'];
    protected $fillable = [
         'user_id','board_id', 'district_id', 'thana_id', 'institute_id','subcategory_id', 'exam_name', 'year', 'hot',
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function thana()
    {
        return $this->belongsTo(Thana::class);
    }
    public function district()
    {
        return $this->belongsTo(District::class);
    }
    public function board()
    {
        return $this->belongsTo(Board::class);
    }
    public function subcategory()
    {
        return $this->belongsTo(Subcategory::class);
    }
    public function institute()
    {
        return $this->belongsTo(Institute::class);
    }
    public function question_images()
    {
        return $this->hasMany(Question_image::class);
    }
}
