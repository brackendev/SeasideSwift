"
SSApplicationRootComponent is the WAComponent subclass for SeasideSwift.

"
Class {
	#name : #SSApplicationRootComponent,
	#superclass : #WAComponent,
	#instVars : [
		'output',
		'input'
	],
	#category : 'SeasideSwift-Web'
}

{ #category : #testing }
SSApplicationRootComponent class >> canBeRoot [
         ^ true

]

{ #category : #initialization }
SSApplicationRootComponent class >> initialize [
	"self initialize"

	| app |
	app := WAAdmin register: self asApplicationAt: 'SeasideSwift'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: SBSDeploymentLibrary

]

{ #category : #utilities }
SSApplicationRootComponent >> header [
	| oc s |
	oc := OrderedCollection new.
	OSSUnixSubprocess new
		command: 'swift';
		arguments: #('--version');
		redirectStdout;
		runAndWaitOnExitDo: [ :process :outString | oc := outString findTokens: String crlf ].
	oc := oc collect: [ :each | '// ' , each ].
	oc add: '// ' , self hostedVersion.
	s := WriteStream on: String new.
	oc
		do: [ :each | 
			s
				nextPutAll: each;
				nextPutAll: String crlf
			].
	^ s contents
]

{ #category : #utilities }
SSApplicationRootComponent >> hostedVersion [
| seasideVersion |
seasideVersion := GRPlatform current seasideVersion.
	^ SystemVersion current imageVersionString , ', Seaside '
		, seasideVersion major asString , '.'
		, seasideVersion minor asString , '.'
		, seasideVersion revision asString
]

{ #category : #initialization }
SSApplicationRootComponent >> initialize [
	super initialize.
	input := self header , String crlf , 'import Foundation'
		, String crlf , String crlf , 'print("Hello World")'
]

{ #category : #accessing }
SSApplicationRootComponent >> input [
^ input

]

{ #category : #accessing }
SSApplicationRootComponent >> input: aString [
input := aString

]

{ #category : #accessing }
SSApplicationRootComponent >> output [
^ output

]

{ #category : #accessing }
SSApplicationRootComponent >> output: aString [
	output := aString
]

{ #category : #rendering }
SSApplicationRootComponent >> renderContentOn: html [
	html
		container: [ html
				break;
				break.
			html
				jumbotron: [ html image
						url: 'https://avatars1.githubusercontent.com/u/8545049?s=400&v=4';
						height: '64px'.
					html image
						url:
							'https://devimages-cdn.apple.com/assets/elements/icons/swift/swift-64x64_2x.png';
						height: '64px'.
					html break.
					html heading
						level: 2;
						with: 'SeasideSwift'.
					html
						break;
						break;
						form: [ html textArea
								formControl;
								style: 'font-family: monospace; color: #93a1a1; background-color: #002b36';
								rows: 10;
								text: input;
								callback: [ :value | input := value ].
							html break.
							html formButton
								bePrimary;
								style: 'float: right';
								callback: [ self runPressed ];
								value: '►'.
							html
								break;
								break;
								horizontalRule;
								break.
							html textArea
								formControl;
								style: 'font-family: monospace; color: #fff; background-color: #000';
								rows: 5;
								text: output ] ].
			html table
				style: 'width: 100%;';
				with: [ html
						tableRow: [ html tableData
								style: 'width: 50%;';
								with: [ html heading
										level: 6;
										with: [ html anchor
												url: 'https://brackendev.github.io/SeasideSwift/';
												with: 'SeasideSwift at GitHub' ] ].
							html tableData
								style: 'width: 50%;';
								align: 'right';
								with: [ html heading
										level: 6;
										with: 'Copyright (c) 2019-2020 brackendev. All rights reserved.' ] ] ].
			html break ]

]

{ #category : #rendering }
SSApplicationRootComponent >> rendererClass [
	^ SBSHtmlCanvas

]

{ #category : #utilities }
SSApplicationRootComponent >> runPressed [
	output := input runSwift
]

{ #category : #initializing }
SSApplicationRootComponent >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'SeasideSwift'

]
