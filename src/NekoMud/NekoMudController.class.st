Class {
	#name : #NekoMudController,
	#superclass : #Object,
	#instVars : [
		'io',
		'world'
	],
	#category : #NekoMud
}

{ #category : #accessing }
NekoMudController >> getcmd [ 
	|raw_input|
	raw_input := self io getinput.
	
	
]

{ #category : #accessing }
NekoMudController >> io [

	^ io
]

{ #category : #accessing }
NekoMudController >> io: anObject [

	io := anObject
]

{ #category : #accessing }
NekoMudController >> step [
	| cmd |
	cmd := self getcmd.
	
]

{ #category : #accessing }
NekoMudController >> world [

	^ world
]

{ #category : #accessing }
NekoMudController >> world: anObject [

	world := anObject
]
