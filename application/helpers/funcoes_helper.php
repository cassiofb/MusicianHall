<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('formata_preco'))
{
	function formata_preco($valor)
	{
		$negativo = false;
		$preco = "";
		$valor = intval(trim($valor));
		if ($valor < 0) {
			$negativo = true;
			$valor = abs($valor);
		}
		$valor = strrev($valor);
		while (strlen($valor) < 3) {
			$valor .= "0";
		}
		for ($i = 0; $i < strlen($valor); $i++) {
			if ($i == 2) {
				$preco .= ",";
			}
			if (($i <> 2) AND (($i+1)%3 == 0)) {
				$preco .= ".";
			}
			$preco .= substr($valor, $i , 1);
		}
		$preco = strrev($preco);
		return ($negativo ? "-" : "") . $preco;
	}
}

if ( ! function_exists('convert_date_to_br_format'))
{
	function convert_date_to_br_format($date)
	{
		return join('/', array_reverse(explode('-', $date)));
	}
}

if ( ! function_exists('convert_date_to_en_format'))
{
	function convert_date_to_en_format($date)
	{
		return join('/', array_reverse(explode('-', $date)));
	}
}
