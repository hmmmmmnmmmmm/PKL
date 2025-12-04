<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
 
 
use App\Mail\tesEmail;
use Illuminate\Support\Facades\Mail;
 
class EmailController extends Controller
{
	public function index(){
 
		Mail::to("fattahdhana595@gmail.com")->send(new tesEmail());
 
		return "Email telah dikirim";
 
	}
 
}