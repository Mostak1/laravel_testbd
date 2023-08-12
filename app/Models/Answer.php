<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Answer extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    use HasFactory;
    protected $fillable = [
        'user_id',
        'topic_id',
        'qset_id',
        'type',
        'marks',
        'tquiz',
    ];

    public function topic()
    {
        return $this->belongsTo(Topic::class);
        // return $this-> belongsTo (User:: class, 'user_id');
    }
    public function user()
    {
        return $this->belongsTo('App\Models\User');
        // return $this-> belongsTo (User:: class, 'user_id');
    }
    public function quizset()
    {
        // return $this->belongsTo('App\Models\Quizset');
        return $this-> belongsTo (Quizset:: class, 'qset_id');
    }

    public function answer()
    {
        return $this->belongsTo('App\Models\Answer');
    }
}
