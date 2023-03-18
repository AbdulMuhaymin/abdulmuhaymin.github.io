---
layout: page
title: Blog
permalink: /blog/
---
<h4> Posts </h4>

<div class="posts"> 
<ul>
  {% for post in site.categories.blogs %}
     <li> 	
		<pre> 
			{{ post.date | date_to_string }} 
		</pre> 
		» 
		<a href="{{ site.baseurl }}{{ post.url }}"> 
			{{ post.title }} 
		</a> 
	</li>
  {% endfor %}
</ul> </div>


<h4> Projects </h4>
<ul>
	<li> <a href="https://abdulmuhaymin.github.io/ttv"> Homogeneous Transit Timing Variation Analyses for Ten Exoplanets </a> </li>

	<li> <a href="https://abdulmuhaymin.github.io/ETZ"> Earth's Solar Transit Zone Exoplanets </a> </li>

	<li> <a href="https://cpc.pythonanywhere.com/"> Preparation of a Comprehensive Circumbinary Planet Catalog Interface (alpha phase) </a> </li>
	
	<li> <i> Ongoing Project:</i> Investigation of 1D carbon chain nanowires using density functional theory </li>
</ul>


