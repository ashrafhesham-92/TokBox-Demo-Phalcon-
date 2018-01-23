<div>
<h3>Rooms: </h3><br>
<ul>
	{% for room in rooms %}
		<li><a target="_blank" href="{{url('tokbox/joinRoom/'~room.session_id~'/'~room.token)}}">
			Room #{{loop.index}}
		</a></li>
	{% endfor %}
</ul>
</div>