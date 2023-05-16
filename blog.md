---
layout: page
title: Blog
permalink: /blog/
---

<h4 id="projects"> Projects </h4>
<ul>
	<li> <a href="https://abdulmuhaymin.github.io/ttv"> Homogeneous Transit Timing Variation Analyses for Ten Exoplanets </a> </li>

	<li> <a href="https://abdulmuhaymin.github.io/ETZ"> Earth's Solar Transit Zone Exoplanets </a> </li>

	<li> <a href="https://cpc.pythonanywhere.com/"> Preparation of a Comprehensive Circumbinary Planet Catalog Interface (pre-alpha phase) </a> </li>
	
	<li> <i> Ongoing Project:</i> Investigation of 1D carbon chain nanowires using density functional theory </li>
</ul>


<h4 id="posts"> Posts </h4>
<ul>
  {% for post in site.categories.blogs %}
     <li> 	
		<i> {{ post.date | date_to_string }} </i> 
		<b> » </b>  
		<a href="{{ site.baseurl }}{{ post.url }}"> 
			{{ post.title }} 
		</a> 
	</li>
  {% endfor %}
</ul> 

