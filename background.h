
//{{BLOCK(background)

//======================================================================
//
//	background, 1024x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1041 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 33312 + 8192 = 42016
//
//	Time-stamp: 2020-04-22, 20:27:12
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BACKGROUND_H
#define GRIT_BACKGROUND_H

#define backgroundTilesLen 33312
extern const unsigned short backgroundTiles[16656];

#define backgroundMapLen 8192
extern const unsigned short backgroundMap[4096];

#define backgroundPalLen 512
extern const unsigned short backgroundPal[256];

#endif // GRIT_BACKGROUND_H

//}}BLOCK(background)
