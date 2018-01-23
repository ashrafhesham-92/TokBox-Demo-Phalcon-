<?php

use OpenTok\OpenTok;
use OpenTok\Session;
use OpenTok\Role;

class TokboxController extends ControllerBase
{
	private $api_key;
	private $api_secret;

	public function initialize()
	{
		parent::initialize();
		$this->api_key    = $this->tokbox_config['api_key'];
		$this->api_secret = $this->tokbox_config['api_secret'];
	}

    public function createSessionAction()
    {
    	// 
    }

    public function generateSessionAction()
    {
    	$opentok = new OpenTok($this->api_key, $this->api_secret);

    	$session    = $opentok->createSession();
    	$session_id = $session->getSessionId();

    	$token = $session->generateToken([
    			'role'       => Role::MODERATOR,
    			'expireTime' => time()+(7 * 24 * 60 * 60), // in one week
    			'data'       => 'name=testUser'
    		]);

    	$room = new \Rooms;

    	if(!$room->createRoom($session_id, $token))
    	{
    		return $this->response->redirect($this->url->get('tokbox/createSession'));
    	}

    	return $this->response->redirect($this->url->get('tokbox/rooms'));
    }

    public function joinRoomAction($session_id, $token)
    {
    	$this->view->session_id = $session_id;
    	$this->view->token      = $token;
    	$this->view->api_key    = $this->api_key;
    }

    public function roomsAction()
    {
    	$rooms = \Rooms::find();

    	$this->view->rooms = $rooms;
    }

}

