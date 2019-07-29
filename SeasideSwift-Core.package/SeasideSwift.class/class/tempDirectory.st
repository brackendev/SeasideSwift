private
tempDirectory
| dir |
dir := (FileSystem disk workingDirectory / 'SeasideSwift-tmp').
dir createDirectory.
	^ dir