---
layout: post
title: "Firmament Setup Script"
description: ""
category: Tools
tags: [firmament, news, haxelib]
---
{% include JB/setup %}

If you install Firmament using Haxelib, you have access to Firmament's command line tool. This tool will generate a simple project to get you on your feet with using Firmament.

Once you have the haxelib package installed, run the following to generate a working Firmament project:
	
	cd [place you  want project directory to go]
	haxelib run firmament setup [ProjectName]

Then, to test your newly created project, run:

	cd [ProjectName]
	nme test ProjectName.nmml flash

And you should be in business!
