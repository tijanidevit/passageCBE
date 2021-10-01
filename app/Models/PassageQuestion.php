<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PassageQuestion extends Model
{
    use HasFactory;

    public function passage(){
        return $this->belongsTo(Passage::class);
    }

    public function options(){
        return $this->hasMany(QuestionOption::class);
    }
}
