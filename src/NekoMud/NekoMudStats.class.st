Class {
	#name : #NekoMudStats,
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
NekoMudStats >> + anotherStat [
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
NekoMudStats >> cha [

	^ cha
]

{ #category : #accessing }
NekoMudStats >> cha: anObject [

	cha := anObject
]

{ #category : #accessing }
NekoMudStats >> con [

	^ con
]

{ #category : #accessing }
NekoMudStats >> con: anObject [

	con := anObject
]

{ #category : #accessing }
NekoMudStats >> dex [

	^ dex
]

{ #category : #accessing }
NekoMudStats >> dex: anObject [

	dex := anObject
]

{ #category : #accessing }
NekoMudStats >> hp [

	^ hp
]

{ #category : #accessing }
NekoMudStats >> hp: anObject [

	hp := anObject
]

{ #category : #accessing }
NekoMudStats >> initialize [ 
	hp := 0.
	str := 0. 
	dex := 0. 
	wiz := 0. 
	int := 0. 
	con := 0. 
	cha := 0.
]

{ #category : #accessing }
NekoMudStats >> int [

	^ int
]

{ #category : #accessing }
NekoMudStats >> int: anObject [

	int := anObject
]

{ #category : #accessing }
NekoMudStats >> str [

	^ str
]

{ #category : #accessing }
NekoMudStats >> str: anObject [

	str := anObject
]

{ #category : #accessing }
NekoMudStats >> wiz [

	^ wiz
]

{ #category : #accessing }
NekoMudStats >> wiz: anObject [

	wiz := anObject
]
