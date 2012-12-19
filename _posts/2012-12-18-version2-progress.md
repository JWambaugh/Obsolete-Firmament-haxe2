---
layout: post
title: "Version 2 Progress"
description: "Firmament 2.0 development update"
category: News
tags: [firmament, news]
---
{% include JB/setup %}

Firmament 2.0 is getting very close to a release! I just wanted to do a quick post to let everyone know what has been going on. In a nutshell, the following features have been added to the engine since my last update

* Tilesheet tiles can now have text labels
* Lots of generic components for working with and responding to events
* Entities can now contain multiple components with the same type
* Parallaxing - Can now create great scrolling effects with parallaxing
* Scenes - Define entire scenese (cameras, maps, etc) in JSON config files.
* Tilesheet render priorities - specify which tilesheet entities should display above others,etc.
* Entity query system - Query all worlds for entities of a certain type, and/or in a certain location, etc.
* NoPhysics - A new world and physics component type for entities that may move or rotate, but don't have any collision detection. This should be used for entities that don't need collisions so we can skip a lot of the weight from the physics engine.
* Fully functional wireframe renderer
* Box2d Joints - Connect multiple entities together using joints!

And many many more changes and bug fixes! Check out the [github page](https://github.com/martamius/Firmament.hx/commits/master) for details on all the changes.