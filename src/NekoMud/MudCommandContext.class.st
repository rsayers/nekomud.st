Class {
	#name : #MudCommandContext,
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
MudCommandContext >> argument [

	^ argument
]

{ #category : #accessing }
MudCommandContext >> argument: anObject [

	argument := anObject
]

{ #category : #accessing }
MudCommandContext >> player [

	^ player
]

{ #category : #accessing }
MudCommandContext >> player: anObject [

	player := anObject
]

{ #category : #accessing }
MudCommandContext >> raw_command [

	^ raw_command
]

{ #category : #accessing }
MudCommandContext >> raw_command: anObject [

	raw_command := anObject
]

{ #category : #accessing }
MudCommandContext >> room [

	^ room
]

{ #category : #accessing }
MudCommandContext >> room: anObject [

	room := anObject
]
