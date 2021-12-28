Class {
	#name : #MudStats,
	#superclass : #Object,
	#instVars : [
		'hp',
		'str',
		'dex',
		'wiz',
		'int',
		'con',
		'cha'
	],
	#category : #NekoMud
}

{ #category : #accessing }
MudStats >> + anotherStat [
	^ self class new;
	  hp: self hp + anotherStat hp;
	  dex: self dex + anotherStat dex;
	  wiz: self wiz + anotherStat wiz;
	  int: self int + anotherStat int;
	  con: self con + anotherStat con;
	  cha: self cha + anotherStat cha;
	  str: self str + anotherStat str;
	  yourself.

]

{ #category : #accessing }
MudStats >> cha [

	^ cha
]

{ #category : #accessing }
MudStats >> cha: anObject [

	cha := anObject
]

{ #category : #accessing }
MudStats >> con [

	^ con
]

{ #category : #accessing }
MudStats >> con: anObject [

	con := anObject
]

{ #category : #accessing }
MudStats >> dex [

	^ dex
]

{ #category : #accessing }
MudStats >> dex: anObject [

	dex := anObject
]

{ #category : #accessing }
MudStats >> hp [

	^ hp
]

{ #category : #accessing }
MudStats >> hp: anObject [

	hp := anObject
]

{ #category : #accessing }
MudStats >> initialize [ 
	hp := 0.
	str := 0. 
	dex := 0. 
	wiz := 0. 
	int := 0. 
	con := 0. 
	cha := 0.
]

{ #category : #accessing }
MudStats >> int [

	^ int
]

{ #category : #accessing }
MudStats >> int: anObject [

	int := anObject
]

{ #category : #accessing }
MudStats >> str [

	^ str
]

{ #category : #accessing }
MudStats >> str: anObject [

	str := anObject
]

{ #category : #accessing }
MudStats >> wiz [

	^ wiz
]

{ #category : #accessing }
MudStats >> wiz: anObject [

	wiz := anObject
]
