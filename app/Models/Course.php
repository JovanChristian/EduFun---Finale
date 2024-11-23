<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Course extends Model
{
    protected $table = "courses";
    protected $guarded = [];

    public function category():BelongsTo{
        return $this->belongsTo(Category::class);
    }

    public function writer(): BelongsTo{
        return $this->belongsTo(Writer::class);
    }
}
