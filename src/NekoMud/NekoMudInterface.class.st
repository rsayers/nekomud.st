Class {
	#name : #NekoMudInterface,
	#superclass : #Object,
	#instVars : [
		'input_queue',
		'output_queue'
	],
	#category : #NekoMud
}

{ #category : #'as yet unclassified' }
NekoMudInterface >> getinput [ 
	^ self input_queue removeFirst.
]

{ #category : #'as yet unclassified' }
NekoMudInterface >> initialize [ 
	input_queue := OrderedCollection new.
	output_queue := OrderedCollection new.
]

{ #category : #accessing }
NekoMudInterface >> input_queue [

	^ input_queue
]

{ #category : #accessing }
NekoMudInterface >> input_queue: anObject [

	input_queue := anObject
]

{ #category : #accessing }
NekoMudInterface >> output_queue [

	^ output_queue
]

{ #category : #accessing }
NekoMudInterface >> output_queue: anObject [

	output_queue := anObject
]
