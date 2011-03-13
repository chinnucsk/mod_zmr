{% extends "base.tpl" %}

{% block content %}

<h1>{{ m.rsc[id].title }}</h1>

<p class="summary">
    {{ m.rsc[id].summary }}
</p>

<p>
    {{ m.rsc[id].body|show_media }}
</p>

<p>
    <div style="float: left"><a href="{% url categories %}">Categories</a>:</div> {% include "_zmr_mod_category_links.tpl" %}<br />
    SCM system: {{ m.rsc[id].zmr_repo_scm.title  }}<br />
    {% if m.rsc[id].author %}Author: {{ m.rsc[id].author.title }}<br />{% endif %}
    Project website: <a href="{{ m.rsc[id].website|default:m.rsc[id].zmr_repository_url }}">{{ m.rsc[id].website|default:m.rsc[id].zmr_repository_url }}</a>
</p>


<h2>Installation</h2>
Zotonic >= 0.7:
<pre>
zotonic installmodule {{ m.rsc[id].title }}
</pre>

Zotonic <= 0.6:
<pre>
{{ m.rsc[id].zmr_repo_scm.zmr_command }} clone {{ m.rsc[id].zmr_repository_url }} {{ m.rsc[id].title }}
</pre>



{% include "_edit_button.tpl" %}

<section id="comments">{% include "_comments.tpl" id=id %}</section>

{% endblock %}

{% block sidebar %}
{% endblock %}
