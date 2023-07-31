<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Quiz extends Model
{
    use HasFactory;
    use SoftDeletes; // use the trait
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'question',
        'type',
        'op1',
        'op2',
        'op3',
        'op4',
        'ans',
        'qimage',
        'user_id',
        'category_id',
        'subcategory_id',
        'topic_id',
    ];
    
    public function user()
    {
    return $this->belongsTo('App\Models\User');
    }
    public function category()
    {
    return $this->belongsTo('App\Models\Category');
    }
    public function subcategory()
    {
    return $this->belongsTo('App\Models\Subcategory');
    }
    public function topic()
    {
    return $this->belongsTo('App\Models\Topic');
    }
}
