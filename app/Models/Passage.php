<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Passage extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function questions(){
        return $this->hasMany(PassageQuestion::class);
    }
}
