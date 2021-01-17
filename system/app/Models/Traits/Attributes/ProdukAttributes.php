<?php
namespace App\Models\Traits\Attributes;
use\App\Models\user;

trait ProdukAttributes {
    
	function seller(){
        return $this->belongsTo(User::class, 'id_user');
    }
    
	
}
 