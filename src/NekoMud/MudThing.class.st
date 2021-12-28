"
I am the base class for any object in the world. I could be a player, room, weapon, etc.
"
Class {
	#name : #MudThing,
	#superclass : #Object,
	#instVars : [
		'name',
		'description',
		'stats',
		'items',
		'location'
	],
	#category : #NekoMud
}

{ #category : #accessing }
MudThing >> description [

	^ description
]

{ #category : #accessing }
MudThing >> description: anObject [

	description := anObject
]

{ #category : #initialization }
MudThing >> initialize [
	stats := MudStats new.
	items := OrderedCollection new.
]

{ #category : #accessing }
MudThing >> items [

	^ items
]

{ #category : #accessing }
MudThing >> items: anObject [

	items := anObject
]

{ #category : #accessing }
MudThing >> location [

	^ location
]

{ #category : #accessing }
MudThing >> location: aMudRoom [

	location := aMudRoom
]

{ #category : #accessing }
MudThing >> name [

	^ name
]

{ #category : #accessing }
MudThing >> name: anObject [

	name := anObject
]

{ #category : #accessing }
MudThing >> stats [

	^ stats
]

{ #category : #accessing }
MudThing >> stats: anObject [

	stats := anObject
]
