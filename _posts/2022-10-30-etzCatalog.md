---
layout: post
published: true
categories: blogs
title: Earth's Transit Zone Exoplanet Catalog 
---
Hello This is a post.

<ul>
{% for planet in site.data.etz %}
  <li>{{ planet.pl_name }}-{{ planet.pl_bmasse }}</li>
{% endfor %}
</ul>