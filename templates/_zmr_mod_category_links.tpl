{% for cat in m.rsc[id].subject %}
  <div class="clearfix ui-state-default ui-corner-all"><a href="{{ m.rsc[cat].page_url }}"><div class="ui-icon ui-icon-tag" style="float: left"></div>{{ m.rsc[cat].title }}</a></div>
{% endfor %}
