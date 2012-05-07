---
layout: page
title: Firmament Game Engine
tagline: Haxe NME Game Engine
---
{% include JB/setup %}

Firmament is an open-source, 2 dimensional game engine developed for the easy creation of video games. It is currently under heavy development, so its feature list is constantly expanding. Its main features are:

Robust 2D physics engine for realistic 2-dimensional simulations. Make physics-based games like 'Angry Birds' with ease!
* Easy game creation using full-featured API.
* Haxe NME based - runs on virtually any platform - Flash, PC, Mac, iOS, android, HTM5, and more
* Open source - Firmament is licensed under the GPL version 3. Download the engine and use it in your open source project for free.
* To get started with Firmament, download it and check out the manual.

<hr>
##Latest Posts:
{% for post in site.posts limit:5 %}

###[{{ post.title }}]({{ BASE_PATH }}{{ post.url }})
{{ post.date | date_to_string }} 
{{post.content }}
<hr>
{% endfor %}


