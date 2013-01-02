---
layout: post
title: "Version 2 Released!"
description: "Firmament 2.0 has been released!
category: News
tags: [firmament, news]
---
{% include JB/setup %}

Firmament 2.0 has finally been released! 
Version 2.0 brings many large changes to the APIs, making the engine more flixbile, but also more easy to use at the same time.

* Entity Component Dependency Injection System - The entity system has been completely overhauled with an extremely powerful component sysyem to allow you to customize the behavior of entities by attaching simple component objects to them. 
* Tilesheet Animation System - Create animations to your hearts content without sacrificing performance with the flexible new built-in animation system.
* Entity Tweening
* Fully updated map editor
* Lots of generic components for working with and responding to events
* Parallaxing - Can now create great scrolling effects with parallaxing
* Scenes - Define entire scenes (cameras, maps, etc) in JSON config files.
* Tilesheet render priorities - specify which tilesheet entities should display above others,etc.
* Entity query system - Query all worlds for entities of a certain type, and/or in a certain location, etc.
* NoPhysics - A new world and physics component type for entities that may move or rotate, but don't have any collision detection. This should be used for entities that don't need collisions so we can skip a lot of the weight from the physics engine.
* Fully functional wireframe renderer
* Box2d Joints - Connect multiple entities together using joints!
* Fully functional [Texture Mapper](http://www.codeandweb.com/texturepacker) plugin for automatic generation of tilesheet .json files
* Full [API documentation](http://martamius.github.com/Firmament.hx/docs/)

And many many more changes and bug fixes! Check out the [github page](https://github.com/martamius/Firmament.hx/commits/master) for details on all the changes.

[Download](http://martamius.github.com/Firmament.hx/downloads.html) Firmament Version 2 today and start making some great games!