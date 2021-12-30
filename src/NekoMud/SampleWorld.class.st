Class {
	#name : #SampleWorld,
	#superclass : #NekoMudWorld,
	#category : #NekoMud
}

{ #category : #initialization }
SampleWorld >> initialize [ 
	| player room item cmd |
	super initialize .
	name := 'An Example World'.
	
	player := NekoMudPlayer new.
	player name: 'rsayers'.
	player description: 'std human'.
	
	room := NekoMudRoom new.
	room name: 'The Construct'.
	room description: 'You are standing in a pure white void.'.
	player location: room.
	
	item := NekoMudItem new.
	item name: 'A MarioKart64 Cartridge'.
	item description: 'It''s in pretty decent shape, fancy a ride on rainbow road?'.
	
	self addPlayer: player.
	self addThing: item.
	self addRoom: room.
	
	self move: player to: room.
	self move: item to: room.
	
	cmd := NekoMudCommand new.
	cmd name: 'look'.
	cmd block: [ :ctx | Transcript show: (ctx argument name); cr; show: (ctx argument description); cr. ].
	
	self docmd: cmd withPlayer: player withArg: room.
	self docmd: cmd withPlayer: player withArg: item.
	self docmd: cmd withPlayer: player withArg: player.
	
	
	
	
	
	
	
	
	
	
	
	
	
]
