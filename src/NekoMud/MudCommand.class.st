Class {
	#name : #MudCommand,
	#superclass : #Object,
	#instVars : [
		'name',
		'context',
		'block'
	],
	#category : #NekoMud
}

{ #category : #accessing }
MudCommand >> block [

	^ block
]

{ #category : #accessing }
MudCommand >> block: anObject [

	block := anObject
]

{ #category : #accessing }
MudCommand >> execute: ctx [
	^ self block value: ctx.
]

{ #category : #accessing }
MudCommand >> name [

	^ name
]

{ #category : #accessing }
MudCommand >> name: anObject [

	name := anObject
]
