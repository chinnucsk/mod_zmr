
{% with m.rsc[id] as r %}
<div class="item-wrapper">
<h3 class="above-item clearfix">
<span class="title">{_ ZMR Repository _}</span>
</h3>

<div class="item">
<fieldset class="admin-form">

<div class="form-item clearfix">
<label for="zmr_repository_path">{_ Repository path _}</label>
<input id="zmr_repository_path" type="text" name="zmr_repository_path" value="{{ r.zmr_repository_path }}" style="width: 80%" />
</div>


</fieldset>
</div>

</div>
{% endwith %}