<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Leaderboard extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'user_id','topic_id', 'quizset_id', 'given_ans', 'submitted_at', 'marks',
    ];
    public function topic()
    {
        // assuming you have a state_id in your customers table
        return $this->belongsTo(Topic::class);
    }
    public function user()
    {
        // assuming you have a state_id in your customers table
        return $this->belongsTo(User::class);
    }
    public function quizset()
    {
        // assuming you have a state_id in your customers table
        return $this->belongsTo(Quizset::class);
    }
}
