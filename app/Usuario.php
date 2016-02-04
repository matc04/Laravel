<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    protected $table = 'usuarios';

    protected $fillable = [
        'snombre', 'sapellido', 'scontrasena', 'scorreo',
    ];

    public function getFullNameAttribute(){

        return $this->snombre .", ".$this->sapellido; 
    }

    public function setScontrasenaAttribute($value){

        if (!empty ($value)){
            $this->attributes['scontrasena'] = bcrypt($value);    
        }
    }
}
