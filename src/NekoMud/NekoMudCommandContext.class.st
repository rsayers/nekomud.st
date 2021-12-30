Class {
	#name : #NekoMudCommandContext,
	#superclass : #Object,
	#instVars : [
		'player',
		'room',
		'argument',
		'raw_command'
	],
	#category : #NekoMud
}

{ #category : #accessing }
NekoMudCommandContext >> argument [

	^ argument
]

{ #category : #accessing }
NekoMudCommandContext >> argument: anObject [

	argument := anObject
]

{ #category : #accessing }
NekoMudCommandContext >> player [

	^ player
]

{ #category : #accessing }
NekoMudCommandContext >> player: anObject [

	player := anObject
]

{ #category : #accessing }
NekoMudCommandContext >> raw_command [

	^ raw_command
]

{ #category : #accessing }
NekoMudCommandContext >> raw_command: anObject [

	raw_command := anObject
]

{ #category : #accessing }
NekoMudCommandContext >> room [

	^ room
]

{ #category : #accessing }
NekoMudCommandContext >> room: anObject [

	room := anObject
]
