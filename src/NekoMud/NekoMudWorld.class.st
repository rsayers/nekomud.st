Class {
	#name : #NekoMudWorld,
	#superclass : #Object,
	#instVars : [
		'name',
		'things',
		'commands'
	],
	#category : #NekoMud
}

{ #category : #adding }
NekoMudWorld >> addPlayer: aPlayer [
	self addThing: aPlayer.
]

{ #category : #adding }
NekoMudWorld >> addRoom: aRoom [
	self addThing: aRoom.
]

{ #category : #adding }
NekoMudWorld >> addThing: aThing [
	things add: aThing.
]

{ #category : #adding }
NekoMudWorld >> docmd: cmd withPlayer: player withArg: arg [
	| ctx |
	ctx := NekoMudCommandContext new.
	ctx player: player.
	ctx room: player location.
	ctx argument: arg.
	Transcript show: 'CMD: look ', (arg name); cr.
	^ cmd execute: ctx.
		
	
]

{ #category : #adding }
NekoMudWorld >> docmd: cmd withPlayer: player withArgs: args [
	| ctx |
	ctx := NekoMudCommandContext new.
	ctx player: player.
	ctx room: player location.
	ctx argument: (args at: 1).
	^ cmd execute: ctx.
		
	
]

{ #category : #initialization }
NekoMudWorld >> initialize [ 
	things:=OrderedCollection new.
]

{ #category : #adding }
NekoMudWorld >> move: aThing to: aRoom [
	aThing location: aRoom
]

{ #category : #adding }
NekoMudWorld >> takePortal: anExit with: aPlayer [
	self move: aPlayer to: (anExit target).
]
