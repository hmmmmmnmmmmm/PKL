<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
 
class DebugController extends Controller{
 
	public function index($nama){
		if($nama == "Tes"){
			return abort(403,'Anda tidak punya akses karena anda Tes');
		}elseif($nama == "tess"){
			return "Halo, ".$nama;
		}else{
			return abort(404);
		}
	}
 
}