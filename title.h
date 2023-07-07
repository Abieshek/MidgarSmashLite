
//{{BLOCK(title)

//======================================================================
//
//	title, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 406 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 12992 + 2048 = 15552
//
//	Time-stamp: 2020-04-27, 01:15:37
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLE_H
#define GRIT_TITLE_H

#define titleTilesLen 12992
extern const unsigned short titleTiles[6496];

#define titleMapLen 2048
extern const unsigned short titleMap[1024];

#define titlePalLen 512
extern const unsigned short titlePal[256];

#endif // GRIT_TITLE_H

//}}BLOCK(title)
