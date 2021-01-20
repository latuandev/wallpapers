<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Wallpapers extends Model
{
    protected $table = 'wallpapers';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'img_name', 'img_url', 'img_type',
    ];

    // 1 thể loại có thể có nhiều hình ảnh
    public function type() {
        return $this->belongsToMany(Type::class);
    }

}
