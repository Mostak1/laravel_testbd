<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Detail extends Model
{
    use HasFactory;
    use SoftDeletes; // use the trait
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'topic_id', 'question', 'answer'
    ];
    public function topic()
    {
    return $this->belongsTo(Topic::class);
   
    }
}
