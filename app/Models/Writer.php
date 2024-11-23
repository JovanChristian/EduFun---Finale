<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Writer extends Model
{
    protected $table = 'writers';
    protected $guarded = [];

    public function course():HasMany{
        return $this->hasMany(Course::class);
    }
}
