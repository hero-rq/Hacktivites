notes = {
    (FLAG, True), 
    ("Hello World", False), 
    ("DreamHack", False), 
    ("carpe diem, quam minimum credula postero", False)
}
@app.route('/search')
def search():
    query = request.args.get('query', None)
    if query == None:
        return render_template("search.html", query=None, result=None)
    for note, private in notes:
        if private == True and request.remote_addr != "127.0.0.1" and request.headers.get("HOST") != "127.0.0.1:8000":
            continue
        if query != "" and query in note:
            return render_template("search.html", query=query, result=note)
    return render_template("search.html", query=query, result=None)


{% extends "base.html" %}
{% block title %}Search{% endblock %}
{% block head %}
  {{ super() }}
{% endblock %}
{% block content %}
<h2>Search</h2><br/>
{% if result %}
  <h3>Searching "{{ query }}" found</h3>
  <iframe srcdoc="<pre>{{ result }}</pre>"></iframe>
{% elif query %}
  <h3> Searching "{{ query }}" not found</h3>
{% else %}
  <form method="GET" class="form-inline">
      <div class="form-group">
          <label class="sr-only" for="query">/</label>
          <div class="input-group">
              <div class="input-group-addon">Query: </div>
              <input type="text" class="form-control" id="query" name="query" placeholder="DreamHack">
          </div>
      </div>
      <button type="submit" class="btn btn-primary">Search</button>
  </form>
{% endif %}
{% endblock %}
