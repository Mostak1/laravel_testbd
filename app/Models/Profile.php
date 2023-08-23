<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Profile extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'user_id', 'fullname', 'institute', 'batch', 'subject', 'designation', 'gender', 'bio', 'phone', 'address', 'yt', 'fb', 'in', 'guardianname', 'guardianemail', 'guardianphone', 'bloodgroup', 'image'
    ];
    public function user(){
        return $this->belongsTo(User::class);
    }
    
}
