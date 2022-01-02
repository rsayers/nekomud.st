"
I am the base class for any object in the world. I could be a player, room, weapon, etc.
"
Class {
	#name : #NekoMudThing,
	#superclass : #Object,
	#instVars : [
		'name',
		'description',
		'stats',
		'items',
		'location',
		'component'
	],
	#category : #NekoMud
}

{ #category : #accessing }
NekoMudThing >> description [

	^ description
]

{ #category : #accessing }
NekoMudThing >> description: anObject [

	description := anObject
]

{ #category : #initialization }
NekoMudThing >> initialize [
	stats := NekoMudStats new.
	items := OrderedCollection new.
	component := NekoMudThingComponent new.
]

{ #category : #accessing }
NekoMudThing >> items [

	^ items
]

{ #category : #accessing }
NekoMudThing >> items: anObject [

	items := anObject
]

{ #category : #accessing }
NekoMudThing >> location [

	^ location
]

{ #category : #accessing }
NekoMudThing >> location: aMudRoom [

	location := aMudRoom
]

{ #category : #accessing }
NekoMudThing >> name [

	^ name
]

{ #category : #accessing }
NekoMudThing >> name: anObject [

	name := anObject
]

{ #category : #rendering }
NekoMudThing >> renderContentOn: html [
	html heading: name.
]

{ #category : #accessing }
NekoMudThing >> stats [

	^ stats
]

{ #category : #accessing }
NekoMudThing >> stats: anObject [

	stats := anObject
]
