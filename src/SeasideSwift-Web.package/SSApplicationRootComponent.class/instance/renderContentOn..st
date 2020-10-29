rendering
renderContentOn: html
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
