NekoMud
=======

NekoMud is an experimental MUD/MUSH codebase for crafting virtual worlds for 0-N Players

QuickStart
----------

A MudWorld object encapsulates a full game world.  Create a sublcass of this to create your world.

The world is filled with instances of MudThing, that is any object shich can exist in this world.  Every thing has a name, description, and location. This location is a pointer
to another MudThing, so an object whose location is an instance of MudPlayer is an item in said players inventory, when location is a MudRoom, that means
it's located in that room.  This is all a matter of labeling.  This also means you can do things like putting rooms in rooms, or rooms in players
inventories.  This could break things or be really neat.

The below example (from a subclass of MudWorld) shows how to create a world, room, player, item, and a command.  Additionally it places
the player and item in the new room, and issues the look command on the room and everything in the room.


```smalltalk
initialize 
	| player room item cmd |
	super initialize .
	name := 'An Example World'.
	
	player := MudPlayer new.
	player name: 'rsayers'.
	player description: 'std human'.
	
	room := MudRoom new.
	room name: 'The Construct'.
	room description: 'You are standing in a pure white void.'.
	player location: room.
	
	item := MudItem new.
	item name: 'A MarioKart64 Cartridge'.
	item description: 'It''s in pretty decent shape, fancy a ride on rainbow road?'.
	
	self addPlayer: player.
	self addThing: item.
	self addRoom: room.
	
	self move: player to: room.
	self move: item to: room.
	
	cmd := MudCommand new.
	cmd name: 'look'.
	cmd block: [ :ctx | Transcript show: (ctx argument name); cr; show: (ctx argument description); cr. ].
	
	self docmd: cmd withPlayer: player withArg: room.
	self docmd: cmd withPlayer: player withArg: item.
	self docmd: cmd withPlayer: player withArg: player.

```
