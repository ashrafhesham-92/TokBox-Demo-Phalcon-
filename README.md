# TokBox-Demo
Demo for TokBox Video chat

# TokBox Demo usage steps:

* The project is developed using Phalcon-PHP framework.
* Clone the project
* In the project's root directory run command ``` $ composer install ``` to install the required packages including the tokbox php SDK
* In the project's root dir you will find file "tokbox.sql" import it to your database.
  * this database contains a simple table called rooms
  * the table contains 3 fields (id, session_id and token)
  * each row represents a room that users can join
  * session_id and token are used to connect to the same room/session
* edit the config file located at ./app/config/config.php to insert your right database credentials (database_name, username and password).
* To use the tokbox php SDK you need the API_KEY and API_SECRET which are saved in the config.php.
* Inside the ./app/controllers you will find TokboxController.php which handles creating sessions, save created session to the rooms table and join the room using the session_id and token.
* The TokboxController.php extends ControllerBase.php which only gets the api_key and api_secret to use them while creating the sessions.
* For any further information of how to customize the application please refer to the following links:
  * [more info about tokens](https://tokbox.com/developer/guides/create-token/)
  * [create simple client side application](https://tokbox.com/developer/tutorials/web/basic-video-chat/)
  * [using the OpenTok PHP SDK](https://tokbox.com/developer/sdks/php/)
  * [sample applications written in different programming languages](https://tokbox.com/developer/samples/)

* To test the demo open your browser and go to:
[http://{domain_name}/tokbox-demoApp/tokbox/createSession]({domain_name}/tokbox-demoApp/tokbox/createSession)
  * then press "Create Session" button
# Thank you~
```sh
$ Ashraf Hesham
$ ashraf.hesham@pentavalue.com
```
