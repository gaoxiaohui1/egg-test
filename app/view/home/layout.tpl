<script src="https://cdn.bootcss.com/nunjucks/3.0.1/nunjucks.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>

{% block header %}
{% endblock %}

<section class="search">
{% block search %}
<br/>
{% endblock %}
</section>
<section class="data">
{% block data %}
<br/>
{% endblock %}
</section>
<script>
const list=[{ city: '北京', name: '张三', time: '1999-1-1' },
{ city: '北京', name: '张三', time: '1999-1-1' },
{ city: '北京', name: '张三', time: '1999-1-1' },
{ city: '北京', name: '张三', time: '1999-1-1' },
{ city: '北京', name: '张三', time: '1999-1-1' },
{ city: '北京', name: '张三', time: '1999-1-1' },
{ city: '北京', name: '张三', time: '1999-1-1' }]

function getList(){
  var env = new nunjucks.Environment(new nunjucks.WebLoader(''));
    var template = env.getTemplate('public/table.html');
      $('.data').html(nunjucks.render( template, {list} ));
}
function getList1(){
  $.ajax({
                url: "/home/list",
                type: "get",
                async: true,
                success: function (data) {
                   $('.data').html(data);
                },
                error: function (result) {
                   
                }
            });
}
function getList2(){
  $.ajax({
                url: "/",
                type: "get",
                async: true,
                success: function (data) {
                   $('.data').html(data);
                },
                error: function (result) {
                   
                }
            });
}
</script>
<style>
.search {width: 500px;min-height: 80px;background: #fff;padding: 30px 40px;float: left;margin: 60px 0 65px;filter: progid:DXImageTransform.Microsoft.Shadow(color=#333, direction=120, strength=3); /*ie*/-moz-box-shadow: 3px 3px 5px #666; /*firefox*/-webkit-box-shadow: 2px 2px 10px #666; /*safari或chrome*/box-shadow: 2px 2px 10px #666; /*opera或ie9*/);background: rgba(255, 255, 255, 0.9) !important;background: #fff;filter: Alpha(opacity=90); }
    .search h2 { font: 24px/30px 'Microsoft YaHei'; }
    .search li {display: block;margin-top: 15px;position: relative;}
    .search .input, .test .input1 {font: 14px/22px 'Microsoft YaHei';padding: 7px;border: 1px solid #bbb;}.test .input1 { color: #999; }
    .search .input:active, .test .input:hover, .test .input1:active, .test .input1:hover {padding: 7px;border: 1px solid #888;background: #ffffe1;}

    .data {width: 500px;min-height: 80px;background: #fff;padding: 30px 40px;float: left;margin: 60px 0 65px;filter: progid:DXImageTransform.Microsoft.Shadow(color=#333, direction=120, strength=3); /*ie*/-moz-box-shadow: 3px 3px 5px #666; /*firefox*/-webkit-box-shadow: 2px 2px 10px #666; /*safari或chrome*/box-shadow: 2px 2px 10px #666; /*opera或ie9*/);background: rgba(255, 255, 255, 0.9) !important;background: #fff;filter: Alpha(opacity=90); }
    .data h2 { font: 24px/30px 'Microsoft YaHei'; }
    .data li {display: block;margin-top: 15px;position: relative;}
    .data .input, .test .input1 {font: 14px/22px 'Microsoft YaHei';padding: 7px;border: 1px solid #bbb;}.test .input1 { color: #999; }
    .data .input:active, .test .input:hover, .test .input1:active, .test .input1:hover {padding: 7px;border: 1px solid #888;background: #ffffe1;}
    </style>
