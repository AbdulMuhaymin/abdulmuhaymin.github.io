layout: page
title:
permalink: /blog/
---

<div class="posts"> <ul>

  {% for post in site.categories.blogs %}
  
      <li>{{ post.date | date_to_string }} >> <a href="{{ site.baseurl }}{{ post.url }}"> {{ post.title }} </a> </li>
	  
  {% endfor %}

</ul> </div>