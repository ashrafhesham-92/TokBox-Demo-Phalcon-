<?php

use Phalcon\Mvc\Model;

class Rooms extends Model
{
	public $id;
	public $session_id;
	public $token;

	public function getSource()
	{
		return 'rooms';
	}

	public function createRoom($session_id, $token)
	{
		$this->session_id = $session_id;
		$this->token      = $token;

		return $this->save();
	}
}