Class {
	#name : #NekoMudCommand,
	#superclass : #Object,
	#instVars : [
		'name',
		'context',
		'block'
	],
	#category : #NekoMud
}

{ #category : #accessing }
NekoMudCommand >> block [

	^ block
]

{ #category : #accessing }
NekoMudCommand >> block: anObject [

	block := anObject
]

{ #category : #accessing }
NekoMudCommand >> execute: ctx [
	^ self block value: ctx.
]

{ #category : #accessing }
NekoMudCommand >> name [

	^ name
]

{ #category : #accessing }
NekoMudCommand >> name: anObject [

	name := anObject
]
