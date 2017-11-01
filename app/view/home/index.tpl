
{% extends "home/layout.tpl" %}

{% block header %}
<h1>xx列表</h1>
{% endblock %}

{% block search %}
<h2>搜索项</h2>
                <li>
                    <input class="input1" style="width: 240px;" type="text" value="{{city}}" />
                </li>
                <li>
                <input class="input1" style="width: 240px;" type="text" value="{{name}}" />
                </li>
<li>
<input class="input1" style="width: 240px;" type="text" value="{{time}}" />
                </li>
                <li>
<input class="input1" style="width: 240px;" type="text" value="{{time}}" />
                </li>
                <li>
                    <button type="button" onclick="getList();" id="login_submit" class="btn blue" style="width: 260px;">静态文件</button>
                </li>
                <li>
                    <button type="button" onclick="getList1();" id="login_submit" class="btn blue" style="width: 260px;">ajax新路由</button>
                </li>
                <li>
                    <button type="button" onclick="getList2();" id="login_submit" class="btn blue" style="width: 260px;">ajax源路由</button>
                </li>
{% endblock %}
