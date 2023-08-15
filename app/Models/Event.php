<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'title', 'description', 'event_date', 'event_time', 'location'];



    public function user()
    {
        return $this->belongsTo(User::class);
    }



}
