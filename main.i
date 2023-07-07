# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 200 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 211 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 251 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 292 "myLib.h"
typedef void (*ihp)(void);
# 347 "myLib.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "main.c" 2
# 1 "title.h" 1
# 22 "title.h"
extern const unsigned short titleTiles[6496];


extern const unsigned short titleMap[1024];


extern const unsigned short titlePal[256];
# 3 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[3936];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 4 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[8224];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 5 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[4032];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 6 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 7 "main.c" 2
# 1 "game.h" 1

void initGame();
void updateGame();
void drawGame();


void initEnemy();


typedef struct {
    int row;
    int col;
    int width;
    int height;
    int aniState;
    int prevAniState;
    int curFrame;
    int screenCol;
    int screenRow;
    int block;
    int attack;
    int aniCounter;
    int idle;
    int direction;
} PLAYER;


typedef struct {
    int row;
    int col;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int screenRow;
    int screenCol;
    int idle;
    int location;
} ENEMY;


typedef struct {
    int width;
    int height;
    int aniState;
    int curFrame;
    int screenRow;
    int screenCol;
} ENEMYHEALTH;


typedef struct {
    int width;
    int height;
    int aniState;
    int curFrame;
    int screenRow;
    int screenCol;
} PLAYERHEALTH;





extern int playerHealth;
extern int enemyHealth;


extern int speed;

extern ENEMY enemy;
extern PLAYER player;

extern ENEMYHEALTH enemyHealthBar[10];
extern PLAYERHEALTH playerHealthBar[10];


enum {HURT1, HURT2, HURT3, HURT4, GUARD1, GUARD2, GUARD3, GUARD4};
enum {GUARD5, GUARD6, GUARD7, JUMP1, JUMP2, JUMP3, JUMP4, JUMP5};
enum {ATTACK1, ATTACK2, ATTACK3, ATTACK4, ATTACK5, ATTACK6, RUN1, RUN2};
enum {RUN3, RUN4, RUN5, RUN6, RUN7, RUN8, RUN9, RUN10};
enum {RUN11, RUN12, STAND1, STAND2, STAND3, STAND4, STAND5, STAND6};
enum {STAND7, STAND8, STAND9, STAND10, HEALTH, HANDHURT1, HANDHURT2, HANDPUNCH1};
enum {HANDPUNCH3, HANDPUNCH2, HANDGRAB6, HANDGRAB5, HANDGRAB4, HANDGRAB3, HANDGRAB2, HANDGRAB1};
enum {HAND8, HAND7, HAND6, HAND5, HAND4, HAND3, HAND2, HAND1};
# 8 "main.c" 2
# 1 "background.h" 1
# 22 "background.h"
extern const unsigned short backgroundTiles[16656];


extern const unsigned short backgroundMap[4096];


extern const unsigned short backgroundPal[256];
# 9 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[6880];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 10 "main.c" 2
# 1 "battlemusic.h" 1
# 20 "battlemusic.h"
extern const unsigned char battlemusic[1427904];
# 11 "main.c" 2
# 1 "victorymusic.h" 1
# 20 "victorymusic.h"
extern const unsigned char victorymusic[596736];
# 12 "main.c" 2
# 1 "swordsound.h" 1
# 20 "swordsound.h"
extern const unsigned char swordsound[9428];
# 13 "main.c" 2
# 1 "startsound.h" 1
# 20 "startsound.h"
extern const unsigned char startsound[11747];
# 14 "main.c" 2
# 1 "runsound.h" 1
# 20 "runsound.h"
extern const unsigned char runsound[24705];
# 15 "main.c" 2
# 1 "openingmusic.h" 1
# 20 "openingmusic.h"
extern const unsigned char openingmusic[1346400];
# 16 "main.c" 2
# 1 "jumpsound.h" 1
# 20 "jumpsound.h"
extern const unsigned char jumpsound[8470];
# 17 "main.c" 2
# 1 "defeatmusic.h" 1
# 20 "defeatmusic.h"
extern const unsigned char defeatmusic[4843584];
# 18 "main.c" 2
# 1 "damagesound.h" 1
# 20 "damagesound.h"
extern const unsigned char damagesound[6132];
# 19 "main.c" 2
# 1 "bossdeathsound.h" 1
# 20 "bossdeathsound.h"
extern const unsigned char bossdeathsound[49824];
# 20 "main.c" 2
# 1 "blocksound.h" 1
# 20 "blocksound.h"
extern const unsigned char blocksound[2829];
# 21 "main.c" 2
# 1 "battlemusic2.h" 1
# 20 "battlemusic2.h"
extern const unsigned char battlemusic2[3289248];
# 22 "main.c" 2
# 52 "main.c"
void initialize();
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void lose();
void goToLose();
void instructions();
void goToInstructions();


unsigned short buttons;
unsigned short oldButtons;


int seed;


OBJ_ATTR shadowOAM[128];


int hOff = 0;
int vOff = 0;


SOUND soundA;
SOUND soundB;


int pauseVar = 0;


enum {START, GAME, INSTRUCTIONS, PAUSE, WIN, LOSE};
int state;

int main() {

    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch(state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
 }
}


void initialize() {

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (3<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    setupSounds();
 setupInterrupts();
    goToStart();
}


void goToStart() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);


    pauseVar = 0;


    DMANow(3, titlePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, titleTiles, &((charblock *)0x6000000)[0], 12992);
    DMANow(3, titleMap, &((screenblock *)0x6000000)[28], 2048);


    playSoundA((const signed char*) openingmusic, 1346400, 1);

    state = START;
}


void start() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

        playSoundB((const signed char*) startsound, 11747, 0);
        goToInstructions();
    }
}


void goToInstructions() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);


    DMANow(3, instructionsPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, instructionsTiles, &((charblock *)0x6000000)[0], 13760);
    DMANow(3, instructionsMap, &((screenblock *)0x6000000)[28], 2048);
    state = INSTRUCTIONS;
}


void instructions() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

        playSoundB((const signed char*) startsound, 11747, 0);
        srand(seed);
        initGame();
        goToGame();
    }
}


void goToGame() {
    hideSprites();
    waitForVBlank();


    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (1<<14);
    DMANow(3, backgroundPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, backgroundTiles, &((charblock *)0x6000000)[0], 33312 / 2);
    DMANow(3, backgroundMap, &((screenblock *)0x6000000)[28], 8192 / 2);


    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 256);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);


    if (pauseVar == 0) {
        playSoundA((const signed char*) battlemusic, 1427904, 1);
    }

    state = GAME;
}


void game() {
    updateGame();
    drawGame();
    waitForVBlank();


    if (enemyHealth <= 0) {
        playSoundA((const signed char*) victorymusic, 596736, 1);
        (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (3<<14);
        (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000012) = 0;
        goToWin();
    }

    if (playerHealth <= 0) {
        playSoundA((const signed char*) defeatmusic, 4843584, 1);
        (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (3<<14);
        (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000012) = 0;
        goToLose();
    }


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (3<<14);
        (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000012) = 0;
        goToPause();
    }
}


void goToWin() {
    hideSprites();
    waitForVBlank();


    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    DMANow(3, winPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, winTiles, &((charblock *)0x6000000)[0], 16448);
    DMANow(3, winMap, &((screenblock *)0x6000000)[28], 2048);
    state = WIN;
}


void win() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();

    }
}


void goToLose() {
    hideSprites();
    waitForVBlank();


    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    DMANow(3, losePal, ((unsigned short *)0x5000000), 256);

    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 7872);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[28], 2048);
    state = LOSE;
}


void lose() {

    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}


void goToPause() {
    pauseSound();
    hideSprites();
    waitForVBlank();


    playSoundB((const signed char*) startsound, 11747, 0);

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    DMANow(3, pausePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[0], 8064);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[28], 2048);
    state = PAUSE;
}


void pause() {
     waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

        unpauseSound();

        playSoundB((const signed char*) startsound, 11747, 0);

        pauseVar = 1;
        goToGame();
    }
}
