
<table><tr><td>城市</td><td>名字</td><td>时间</td></tr>
{% for item in list%}
<tr><td>{{item.city}}</td><td>{{item.name}}</td><td>{{item.time}}</td>
{% endfor %}
</table>