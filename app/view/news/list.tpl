<ul>
{% for item in list%}
<li><a href="{{'/news/'+item.id}}">{{item.title}}</a></li>
{% endfor %}
</ul>
