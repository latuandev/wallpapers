<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    // 1 hình ảnh chỉ có 1 thể loại
    public function wallpapers() {
        return $this->belongsToMany(Wallpapers::class);
    }
}
