Class {
	#name : #MudWorld,
	#superclass : #Object,
	#instVars : [
		'name',
		'things',
		'commands'
	],
	#category : #NekoMud
}

{ #category : #adding }
MudWorld >> addPlayer: aPlayer [
	self addThing: aPlayer.
]

{ #category : #adding }
MudWorld >> addRoom: aRoom [
	self addThing: aRoom.
]

{ #category : #adding }
MudWorld >> addThing: aThing [
	things add: aThing.
]

{ #category : #adding }
MudWorld >> docmd: cmd withPlayer: player withArg: arg [
	| ctx |
	ctx := MudCommandContext new.
	ctx player: player.
	ctx room: player location.
	ctx argument: arg.
	Transcript show: 'CMD: look ', (arg name); cr.
	^ cmd execute: ctx.
		
	
]

{ #category : #adding }
MudWorld >> docmd: cmd withPlayer: player withArgs: args [
	| ctx |
	ctx := MudCommandContext new.
	ctx player: player.
	ctx room: player location.
	ctx argument: (args at: 1).
	^ cmd execute: ctx.
		
	
]

{ #category : #initialization }
MudWorld >> initialize [ 
	things:=OrderedCollection new.
]

{ #category : #adding }
MudWorld >> move: aThing to: aRoom [
	aThing location: aRoom
]

{ #category : #adding }
MudWorld >> takeExit: anExit with: aPlayer [
	self move: aPlayer to: (anExit target).
]
