<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Question_image extends Model
{
    use HasFactory;
    use SoftDeletes; // use the trait
    protected $dates = ['deleted_at'];
    protected $fillable=[
        'question_id', 'name',
    ];
    public function question(){
        return $this->belongsTo(Question::class);
    }
}
