#include "myLib.h"
#include "title.h"
#include "lose.h"
#include "win.h"
#include "pause.h"
#include "spritesheet.h"
#include "game.h"
#include "background.h"
#include "instructions.h"
#include "battlemusic.h"
#include "victorymusic.h"
#include "swordsound.h"
#include "startsound.h"
#include "runsound.h"
#include "openingmusic.h"
#include "jumpsound.h"
#include "defeatmusic.h"
#include "damagesound.h"
#include "bossdeathsound.h"
#include "blocksound.h"
#include "battlemusic2.h"

/*==================================== PROJECT PROGRESS COMMENT ========================================

HOW TO PLAY: Using left and right on the D-Pad you can control whether your player goes left or right. 
You can attack the enemy by holding the B button and jump using the A button. You can block by pressing 
and/or holding the right bumper button. You will only block when the sword is in front of you, and 
you will only attack once you have held B anc completed the swing. You can jump simply by pressing.
When you lose all your health you lose or if you defeat the enemy, you win! When the enemy is attacking, 
if you are not blocking and are in range of the enemy, you will take damage. The enemy can use one attack
based on a random generator. To use Cloud's Secret Ability (Cheat Mechanic) press L WHEN YOU ARE FACING 
AN ENEMY (otherwise it won't activate). The secret ability will make Cloud faster (slightly faster attack 
animations) and you will move faster and deal double damage!

COMPLETED: So far, the base architecture of the states and the screens has been implemented. Along with 
this, the movement and actions of the player have been programmed as well as the code involved with the
movement of the wide XL background. This includes jump, moving left and right, melee attack, and block.
The boss character has also been created along with the random generator and methods for the moves the 
boss will be able to use. Health variables along with the appropriate code needed to change them during 
the fight has also been implmemented. The enemy and player health bars at the top have been implemented
as well. They will change if you land attacks or attacks on you land! The state screens have been mostly
completed except for possible minor changes and the sound and sound effects have been added. The cheat 
has also been implemented.

TODO: None! 

BUGS: Fixed

=======================================================================================================*/

// Prototypes
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

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random seed
int seed;

// Shadow OAM
OBJ_ATTR shadowOAM[128];

// hOFF & vOFF
int hOff = 0;
int vOff = 0;

// Sound
SOUND soundA;
SOUND soundB;

// Pause Variable for Sound
int pauseVar = 0;

// States
enum {START, GAME, INSTRUCTIONS, PAUSE, WIN, LOSE};
int state;

int main() {

    initialize();

    while(1) {
        // Update Buttons
        oldButtons = buttons;
        buttons = BUTTONS;
        // Screen States
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

// Initialize the game 
void initialize() {
    // Reg Display Ctrl
    REG_BG0CNT = BG_CHARBLOCK (0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    setupSounds();
	setupInterrupts();
    goToStart();
}

// Start background and change to start State
void goToStart() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    // Reset Pause Variable
    pauseVar = 0;
    
    // Title Screen
    DMANow(3, titlePal, PALETTE, 256);
    DMANow(3, titleTiles, &CHARBLOCK[0], titleTilesLen);
    DMANow(3, titleMap, &SCREENBLOCK[28], titleMapLen);

    // Play Music
    playSoundA((const signed char*) openingmusic, OPENINGMUSICLEN, 1);

    state = START;
}

// Start state
void start() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        // Play Music
        playSoundB((const signed char*) startsound, STARTSOUNDLEN, 0);
        goToInstructions();
    }
}

// Instructions background and change to instructions state
void goToInstructions() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    // Instructions Background
    DMANow(3, instructionsPal, PALETTE, 256);
    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen);
    DMANow(3, instructionsMap, &SCREENBLOCK[28], instructionsMapLen);
    state = INSTRUCTIONS;
}

// Instructions State
void instructions() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        // Play Music
        playSoundB((const signed char*) startsound, STARTSOUNDLEN, 0);
        srand(seed);
        initGame();
        goToGame();
    }
}

// Initiliaze background and load in sprite sheet and change to game state. 
void goToGame() {
    hideSprites();
    waitForVBlank();

    // Background
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK (0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_WIDE;
    DMANow(3, backgroundPal, PALETTE, 256);
    DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
    DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);

    // Sprite Sheet
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    // Play Music
    if (pauseVar == 0) {
        playSoundA((const signed char*) battlemusic, BATTLEMUSICLEN, 1);
    }

    state = GAME;
}

// Game State with win and lose conditions
void game() {
    updateGame();
    drawGame();
    waitForVBlank();
    // Change Song if you Activate Cheat

    if (enemyHealth <= 0) {
        playSoundA((const signed char*) victorymusic, VICTORYMUSICLEN, 1);
        REG_BG0CNT = BG_CHARBLOCK (0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
        REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
        REG_BG0HOFF = 0;
        REG_BG0VOFF = 0;
        goToWin();
    }

    if (playerHealth <= 0) {
        playSoundA((const signed char*) defeatmusic, DEFEATMUSICLEN, 1);
        REG_BG0CNT = BG_CHARBLOCK (0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
        REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
        REG_BG0HOFF = 0;
        REG_BG0VOFF = 0;
        goToLose();
    }

    // Change to Pause State
    if (BUTTON_PRESSED(BUTTON_START)) {
        REG_BG0CNT = BG_CHARBLOCK (0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
        REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
        REG_BG0HOFF = 0;
        REG_BG0VOFF = 0;
        goToPause();
    }
}

// Load win screen
void goToWin() {
    hideSprites();
    waitForVBlank();

    // Win Background
    DMANow(3, shadowOAM, OAM, 128 * 4);
    DMANow(3, winPal, PALETTE, 256);
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen);
    state = WIN;
}

// Win screen controls
void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();

    }
}

// Load lose screen
void goToLose() {
    hideSprites();
    waitForVBlank();

    // Lose Background
    DMANow(3, shadowOAM, OAM, 128 * 4);
    DMANow(3, losePal, PALETTE, 256);

    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen);
    DMANow(3, loseMap, &SCREENBLOCK[28], loseMapLen);
    state = LOSE;
}

// Lose Screen controls
void lose() {
    // Reset End Condition Variables
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

// Load pause screen
void goToPause() {
    pauseSound();
    hideSprites();
    waitForVBlank();

    // Play Music
    playSoundB((const signed char*) startsound, STARTSOUNDLEN, 0);

    DMANow(3, shadowOAM, OAM, 128 * 4);
    DMANow(3, pausePal, PALETTE, 256);
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen);
    state = PAUSE;
}

// Load pause screen controls 
void pause() {
     waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {

        unpauseSound();
        // Play Music
        playSoundB((const signed char*) startsound, STARTSOUNDLEN, 0);

        pauseVar = 1;
        goToGame();
    }
}
