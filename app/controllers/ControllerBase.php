<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
	protected $tokbox_config;

	public function initialize()
	{
		$this->tokbox_config = $this->di->getConfig()['tokbox'];
	}

}
