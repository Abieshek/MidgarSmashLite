#include <stdlib.h>
#include "game.h"
#include "myLib.h"
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

ENEMYHEALTH enemyHealthBar[ENEMYHEALTHCOUNT];
PLAYERHEALTH playerHealthBar[PLAYERHEALTHCOUNT];

PLAYER player;
ENEMY enemy;

// Sound
SOUND soundA;
SOUND soundB;

// Counters used for Animations
int count;
int count2;
int count3; 
int count4;
int count5;
int count6;
int count7;
int count8;

// Screen Variables
int hOff;
int vOff;
int screenBlock;
int playerhOff;
int enemyhOff;
int playervOff;
int enemyvOff;
int worldWidth;

// Game Timer
int gameTimer;

// Jump Direction
int jumpDirection;

// Attack Direction
int attackDirection;

// Animation Speed (For Cheat)
int animationSpeed;

// Movement Speed (For Cheat)
int speed;

// Damage (For Cheat)
int damage;

// Changed Music Variable
int changedMusic;

// Spawn Enemy
int spawn;
int spawned;

// Enemy Attacks
int enemyAttack1;
int enemyAttack2;

// Animation Arrays
// Enemy Standing
int enemyStandAniStates[8] = {HAND1, HAND2, HAND3, HAND4, HAND5, HAND6, HAND7, HAND8};
int enemyStandCurFrames[8] = {7, 7, 7, 7, 7, 7, 7, 7};
// Enemy Attack 1
int enemyHandPunchAniStates[3] = {HANDPUNCH1, HANDPUNCH2, HANDPUNCH3};
int enemyHandPunchCurFrames[3] = {5, 6, 6};
// Enemy Attack 2 
int enemyHandGrabAniStates[5] = {HANDGRAB1, HANDGRAB2, HANDGRAB3, HANDGRAB4, HANDGRAB5};
int enemyHandGrabCurFrames[5] = {6, 6, 6, 6, 6};
// Enemy Hurt 1 
int enemyHurtAniStates[2] = {HANDHURT1, HANDHURT2};
int enemyHurtCurFrames[2] = {5, 5};
// Player Standing
int playerStandAniStates[10] = {STAND1, STAND2, STAND3, STAND4, STAND5, STAND6, STAND7, STAND8, STAND9, STAND10};
int playerStandCurFrames[10] = {4, 4, 4, 4, 4, 4, 5, 5, 5, 5};
// Player Running
int playerRunningAniStates[10] = {RUN1, RUN4, RUN5, RUN6, RUN7, RUN8, RUN9, RUN10, RUN11, RUN12};
int playerRunningCurFrames[10] = {2, 3, 3, 3, 3, 3, 3, 3, 4, 4};
// Player Attacking
int playerAttackAniStates[6] = {ATTACK1, ATTACK2, ATTACK3, ATTACK4, ATTACK5, ATTACK6};
int playerAttackCurFrames[6] = {2, 2, 2, 2, 2, 2};
// Player Jumping
int playerJumpingAniStates[5] = {JUMP1, JUMP2, JUMP3, JUMP4, JUMP5};
int playerJumpingCurFrames[5] = {1, 1, 1, 1, 1};
// Player Blocking
int playerBlockingAniStates[7] = {GUARD1, GUARD2, GUARD3, GUARD4, GUARD5, GUARD6, GUARD7};
int playerBlockingCurFrames[7] = {0, 0, 0, 0, 1, 1, 1};
// Player Hurt
int playerHurtAniStates[4] = {HURT1, HURT2, HURT3, HURT4};
int playerHurtCurFrames[4] = {0, 0, 0, 0};

// Health values for End Game States
int playerHealth;
int enemyHealth;
int pHealthBarIndex;
int eHealthBarIndex;

// Array of Random Numbers Used to Randomly Determine Enemy Moves
int enemyMove[10];
int enemyMoveNum;

// Initialize game variables
void initGame() {
    // Game Timer
    gameTimer = 0;

    // Default Animation Speed
    animationSpeed = 10;

    // Default Movement Speed
    speed = 1;

    // Default Damage
    damage = 1;

    // Changed Music Variable for Cheat
    changedMusic = 0;

    // Counters used for Animations
    count = 0;
    count2 = 0;
    count3 = 0;
    count4 = 0;
    count5 = 0;
    count6 = 0;
    count7 = 0;
    count8 = 0;

    // Spawn Enemy
    spawn = 0;
    spawned = 0;

    // Health Values
    enemyHealth = 100;
    playerHealth = 100;
    pHealthBarIndex = 9;
    eHealthBarIndex = 9;

    // Background Variables
    hOff = 0;
    vOff = 0;
    screenBlock = 28;
    playerhOff = 0;
    playervOff = 0;
    enemyhOff = 0;
    enemyvOff = 0;
    worldWidth =  1024;

    // Player Variables
    player.width = 32;
    player.height = 32;
    player.col = 40;
    player.row = 120;
    player.curFrame = 4; // Y coordinate
    player.aniState = STAND1; // X Coordinate
    player.screenRow = 0;
    player.screenCol = 0;
    player.block = 0;
    player.attack = 0;
    player.aniCounter = 0;
    player.idle = 1;
    player.direction = 1;

    // Jump Direction
    jumpDirection = 0;

    for (int i = 0; i < PLAYERHEALTHCOUNT; i++) {
        playerHealthBar[i].width = 32;
        playerHealthBar[i].height = 32;
        playerHealthBar[i].aniState = HEALTH;
        playerHealthBar[i].curFrame = 5;
        playerHealthBar[i].screenRow = 3;
        playerHealthBar[i].screenCol = 3 + (i*8);
    }

}

// Initialize Enemy (Only Initializes after you get to the end of the XL Background)
void initEnemy() {

    // Master Hand Variables
    enemy.height = 32;
    enemy.width = 32;
    enemy.col = 940;
    enemy.row = 120;
    enemy.aniCounter = 0;
    enemy.curFrame = 7;
    enemy.aniState = HAND1;
    enemy.screenRow = 0;
    enemy.screenCol = 0;
    enemy.aniCounter = 0;
    enemy.idle = 1;
    enemy.location = 1;
    
    // Enemy Attacks
    enemyAttack1 = 0;
    enemyAttack2 = 0;

    // Enemy Health 
    for (int i = 0; i < ENEMYHEALTHCOUNT; i++) {
        enemyHealthBar[i].width = 32;
        enemyHealthBar[i].height = 32;
        enemyHealthBar[i].aniState = HEALTH;
        enemyHealthBar[i].curFrame = 5;
        enemyHealthBar[i].screenRow = 3;
        enemyHealthBar[i].screenCol = 157 + (i*8);
    }

    // Enemy Moves
    // Generate Random Enemy Moves in Array (2 moves possible)
    enemyMoveNum = 0;
    for (int i = 0; i < 10; i++) {
        enemyMove[i] = rand() % 2;
    }

    spawned = 1;
}


// Update player sprite information
void updateGame() {
    // Timer Update
    gameTimer++; 

    // Animation Counter Updates
    player.aniCounter++;
    enemy.aniCounter++;

    // Initialize Enemy if you travel far enough
    if (player.col >= 900 && spawned == 0) {
        spawn = 1;
        initEnemy();
    }


    // XL Screen Code
    if (hOff > 256 && screenBlock < 31) {
        screenBlock++;
        hOff -= 256;
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_4BPP;
    }

    if (hOff <= 0 && screenBlock > 28) {
        screenBlock--;
        hOff += 256;
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_4BPP;
    }

    // Player and Enemy should be set to default animation when player is not using buttons or interactions are not occuring.
    if (!BUTTON_HELD(BUTTON_RIGHT) && !BUTTON_HELD(BUTTON_LEFT) && !BUTTON_HELD(BUTTON_B) && !BUTTON_HELD(BUTTON_R) && jumpDirection == 0) {
        player.idle = 1;
    } else {
        player.idle = 0;
    }
    if (attackDirection == 0) {
        enemy.idle = 1;
        count8 = 0;
        count7 = 0;
    } else {
        enemy.idle = 0;
    }


    // Bug Fix (Prevent you from being able to press two buttons at once by setting the default to idle whenever you do this!)
    if ((BUTTON_HELD(BUTTON_RIGHT) && BUTTON_HELD(BUTTON_LEFT)) || (BUTTON_HELD(BUTTON_RIGHT) && BUTTON_HELD(BUTTON_R)) || (BUTTON_HELD(BUTTON_RIGHT) && BUTTON_HELD(BUTTON_B))
            || (BUTTON_HELD(BUTTON_LEFT) && BUTTON_HELD(BUTTON_R)) || (BUTTON_HELD(BUTTON_LEFT) && BUTTON_HELD(BUTTON_B)) || (BUTTON_HELD(BUTTON_B) && BUTTON_HELD(BUTTON_R))
            || (BUTTON_HELD(BUTTON_RIGHT) && jumpDirection != 0) || (BUTTON_HELD(BUTTON_LEFT) && jumpDirection != 0))  {
        player.idle = 1;

    }

    // Reset Animation Counters if the the Sprites are idle
    if (player.idle == 1) {
        count3 = 0;
        count4 = 0;
        count5 = 0;
        count6 = 0;
    }

    // Default Animations (Animations when no other actions or interactions are happening)
    if (player.aniCounter == animationSpeed && player.idle == 1) {
        player.aniState = playerStandAniStates[count2];
        player.curFrame = playerStandCurFrames[count2];
        if (count2 == 9) {
            count2 = 0;
        } else {
            count2++;
        }
        player.aniCounter = 0;
    }
    if (enemy.aniCounter == 10 && enemy.idle == 1) {
        enemy.aniState = enemyStandAniStates[count];
        enemy.curFrame = enemyStandCurFrames[count];
        if (count == 7) {
            count = 0;
        } else {
            count++;
        }
        enemy.aniCounter = 0;
    }


    // Enemy Functions (New enemy attack every 1000 frames)
    if (gameTimer % 200 == 0 && attackDirection == 0) {
        // Execute the different moves based on a random generator. 
        /**
        // Attack 1
        if (enemyMove[enemyMoveNum] == 1 && enemy.location == 1) {
            // Move the Hand
            while (enemy.location < 70) {
                attackDirection = 2;
                enemy.location += attackDirection;
                enemy.col -= attackDirection;
            } 
            attackDirection = 0;
        } else {
            enemyAttack1 = 0;
        }
        **/
        // Attack 2
        if (enemyMove[enemyMoveNum] == 0 && enemy.location == 1) {
            // Move the Hand
            enemyAttack2 = 1;
            while (enemy.location < 50) {
                attackDirection = 2;
                enemy.location += attackDirection;
                enemy.col -= attackDirection;
            } 
            attackDirection = 0;
        } else {
            enemyAttack2 = 0;
        }

        // Start at the beginning of the randomly generated enemy move array if you surpose the number of moves in the array
        if (enemyMoveNum >= 10) {
            enemyMoveNum = 0;
        } else {
            enemyMoveNum++;
        }

    }
    // Reset Hand Back to Original Location
    if (enemy.location > 1) {
        attackDirection = -1;
    }

    /**
    // Enemy Attack 1 or 2?
    if (enemy.location > 69) {
        enemyAttack1 = 1;
    } else if (enemy.location > 49) {
        enemyAttack2 = 1;
    }


    // Animation for Attack 1
    if (attackDirection != 0 && enemyAttack1 == 1) { 
        if (enemy.aniCounter == 5 && enemy.idle == 0) {
            enemy.aniState = enemyHandGrabAniStates[count7];
            enemy.curFrame = enemyHandGrabCurFrames[count7];
            if (count7 == 5) {
                count7 = 0;
            } else {
                count7++;
            }
            enemy.aniCounter = 0;
        }
    }
    **/

    // Animation for Attack 2
    if (attackDirection != 0) { 
        if (enemy.aniCounter == 10 && enemy.idle == 0) {
            enemy.aniState = enemyHandPunchAniStates[count8];
            enemy.curFrame = enemyHandPunchCurFrames[count8];
            if (count8 == 2) {
                count8 = 0;
            } else {
                count8++;
            }
            enemy.aniCounter = 0;
        }
    }

    // Reset Hand Back to Original Location
    if (enemy.location == 1) {
        attackDirection = 0;
        enemy.idle = 1;
        enemyAttack1 = 0;
        enemyAttack2 = 0;
    }

    // Update Enemy Col and Location to keep Track of Position
    enemy.location += attackDirection;
    enemy.col -= attackDirection;

    // Controls
    // Move Left
    if (BUTTON_HELD(BUTTON_LEFT) && !BUTTON_HELD(BUTTON_B) && !BUTTON_HELD(BUTTON_R) && jumpDirection == 0) {
        player.direction = 0;
        // Change anistate to walk left animation
        if (jumpDirection == 0) {
            if (player.aniCounter == animationSpeed && player.idle == 0 && jumpDirection == 0) {
                player.aniState = playerRunningAniStates[count3];
                player.curFrame = playerRunningCurFrames[count3];
                if (count3 == 9) {
                    count3 = 0;
                } else {
                    count3++;
                }
                player.aniCounter = 0;
            }
        }

        // Update Col and ScreenCol
        if (player.col > 0 && spawn == 0) {
            player.col-=speed;
        } else if (player.col > 754 && spawn == 1) {
            player.col-=speed;
        }
        if (hOff > 0 && player.screenCol < (SCREENWIDTH / 2) && spawn == 0) {
            hOff--;
            playerhOff--;        
            enemyhOff--;
        }
    }

    // Move Right
    if (BUTTON_HELD(BUTTON_RIGHT) && !BUTTON_HELD(BUTTON_B) && !BUTTON_HELD(BUTTON_R) && jumpDirection == 0) {
        player.direction = 1;
        // Change anistate to walk right animation
        if (jumpDirection == 0) {
            if (player.aniCounter == animationSpeed && player.idle == 0 && jumpDirection == 0) {
                player.aniState = playerRunningAniStates[count3];
                player.curFrame = playerRunningCurFrames[count3];
                if (count3 == 9) {
                    count3 = 0;
                } else {
                    count3++;
                }
                player.aniCounter = 0;
            }
        }

        // Update Col and ScreenCol
        if (player.col + player.width < worldWidth - 31) {
            player.col+=speed;
        }
        if (player.screenCol > (SCREENWIDTH / 2) && playerhOff + player.width - 1 < (worldWidth - SCREENWIDTH - 1)) { 
            hOff++;
            playerhOff++;
            enemyhOff++;
        }
    }
    if (!BUTTON_HELD(BUTTON_RIGHT) && !BUTTON_HELD(BUTTON_LEFT)) {
        count3 = 0;
    }

    // Jump
    if (BUTTON_PRESSED(BUTTON_A) && player.row <= 120 && !BUTTON_HELD(BUTTON_B) && !BUTTON_HELD(BUTTON_R) && !BUTTON_PRESSED(BUTTON_LEFT) && !BUTTON_PRESSED(BUTTON_RIGHT)) {
        // Play Sound Effect
        playSoundB((const signed char*) jumpsound, JUMPSOUNDLEN, 0);

        if (player.row == 120 && player.row > 80) {
            jumpDirection = -2;
        } 
    } else if (player.row > 119) {
        jumpDirection = 0;
        count5 = 0;
    }
    // Jump Animation
    if (jumpDirection != 0) {
        if (player.aniCounter == animationSpeed && player.idle == 0) {
            player.aniState = playerJumpingAniStates[count5];
            player.curFrame = playerJumpingCurFrames[count5];
            if (count5 == 4) {
                count5 = 0;
            } else {
                count5++;
            }
            player.aniCounter = 0;
        }
    }
    // Jump Code Update
    if (player.row < 80) {
        jumpDirection = 1;
    } 

    // Reeset Jump Animation Counter
    if (jumpDirection == 0) {
        count5 = 0;
    }
    player.row += jumpDirection;

    // Melee Attack
    if (BUTTON_HELD(BUTTON_B) && !BUTTON_HELD(BUTTON_R) && !BUTTON_HELD(BUTTON_LEFT) && !BUTTON_HELD(BUTTON_RIGHT) && jumpDirection == 0) {
        if (player.aniCounter == animationSpeed && player.idle == 0) {
            player.aniState = playerAttackAniStates[count4];
            player.curFrame = playerAttackCurFrames[count4];
            if (count4 == 4) {
                player.attack = 1;
            } else {
                player.attack = 0;
            }
            if (count4 == 5) {
                player.idle = 1;
            }  else {
                count4++;
            }
            player.aniCounter = 0;
        }
    } 
    if (!BUTTON_HELD(BUTTON_B)) {
        count4 = 0;
    }

    // Block
    if (BUTTON_HELD(BUTTON_R) && !BUTTON_HELD(BUTTON_B) && !BUTTON_HELD(BUTTON_LEFT) && !BUTTON_HELD(BUTTON_RIGHT) && jumpDirection == 0) {
        if (player.aniCounter == animationSpeed && player.idle == 0) {
            player.aniState = playerBlockingAniStates[count6];
            player.curFrame = playerBlockingCurFrames[count6];
            if (count6 == 6) {
                player.idle = 1;
            } else {
                count6++;
            }
            player.aniCounter = 0;
        }
    } 
    // If you have your sword in front of you, block all dmg
    if (player.aniState == GUARD7 && player.curFrame == 1) {
        player.block = 1;
    } 
    if (player.aniState != GUARD7 && player.curFrame != 1) {
        player.block = 0;
    }
    if (!BUTTON_HELD(BUTTON_R)) {
        count6 = 0;
    }

    // Sound Effects
    if (BUTTON_PRESSED(BUTTON_R)) {
        // Play Sound Effect
        playSoundB((const signed char*) blocksound, BLOCKSOUNDLEN, 0);
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        // Play Sound Effect
        playSoundB((const signed char*) swordsound, SWORDSOUNDLEN, 0);
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        // Play Sound Effect
        playSoundB((const signed char*) runsound, RUNSOUNDLEN, 1);
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        // Play Sound Effect
        playSoundB((const signed char*) runsound, RUNSOUNDLEN, 1);
    } 


    // Interactions
    // Note: If you attack and collide with the enemy than that counts as landing an attack!
    if (collision(player.col, player.row, player.width, player.height, enemy.col, enemy.row, enemy.width + 2, enemy.height + 2) && player.attack == 1) {
        // Play Sound Effect
        playSoundB((const signed char*) damagesound, DAMAGESOUNDLEN, 0);

        // Change Sprite State
        if (player.attack == 1) {
            enemy.aniState = HANDHURT2;
            enemy.curFrame = 5;
        }

        // Change Enemy Health
        if (damage == 2) {
            enemyHealth-=20;
        } else {
            enemyHealth-=10;
        }
        

        // Reset Attack
        player.attack = 0;

        // Modify Health Bar
        enemyHealthBar[eHealthBarIndex].curFrame = 1;
        enemyHealthBar[eHealthBarIndex].aniState = GUARD5;
        if (damage == 2) {
            enemyHealthBar[eHealthBarIndex - 1].curFrame = 1;
            enemyHealthBar[eHealthBarIndex - 1].aniState = GUARD5;
        }
        eHealthBarIndex-= damage;
    
    }
    // If the enemy is attacking and you collide with him when he is attacking you will take dmg!
    if (collision(player.col, player.row, player.width, player.height, enemy.col, enemy.row, enemy.width + 2, enemy.height + 2) && attackDirection != 0 && player.block == 0
            && (enemyAttack1 == 1 || enemyAttack2 == 1)) {
        // Play Sound Effect
        playSoundB((const signed char*) damagesound, DAMAGESOUNDLEN, 0);

        // Change Sprite State
        if ((enemyAttack1 == 1 || enemyAttack2 == 1) && !BUTTON_HELD(BUTTON_RIGHT) && !BUTTON_HELD(BUTTON_LEFT) && !BUTTON_HELD(BUTTON_B) && !BUTTON_HELD(BUTTON_R) && jumpDirection == 0) {
            player.aniState = HURT4;
            player.curFrame = 0;
        }

        // Change Player Health Bar
        playerHealth-=10;

        // Reset Attack
        enemyAttack1 = 0;
        enemyAttack2 = 0;

        // Modify Health Bar
        playerHealthBar[pHealthBarIndex].curFrame = 1;
        playerHealthBar[pHealthBarIndex].aniState = GUARD5;
        pHealthBarIndex--;
    }

    // Cheat Mechanic
    if (BUTTON_PRESSED(BUTTON_L) && spawned == 1 && player.idle == 1 && jumpDirection == 0 && !BUTTON_HELD(BUTTON_LEFT) && !BUTTON_HELD(BUTTON_RIGHT) && !BUTTON_HELD(BUTTON_R) && !BUTTON_HELD(BUTTON_B))  {
        animationSpeed = 8; 
        speed = 2;
        damage = 2;
        player.idle = 1;
        count2 = 0;
        count3 = 0;
        count4 = 0;
        count5 = 0;
        count6 = 0;
        count7 = 0;
        count8 = 0;
        player.aniCounter = 0;
    }
    
    if (speed == 2 && changedMusic == 0) {
        changedMusic = 1;
        playSoundA((const signed char*) battlemusic2, BATTLEMUSIC2LEN, 1);
    }

    // Screen Row and Col Update
    enemy.screenRow = enemy.row - enemyvOff;
    enemy.screenCol = enemy.col - enemyhOff;
    player.screenRow = player.row - playervOff;
    player.screenCol = player.col - playerhOff;
}


// Draw Game Code
void drawGame() {
    // SHADOW OAM Code
    // enemy
    if (spawn == 1) {
        shadowOAM[28].attr0 = (ROWMASK & enemy.screenRow) | ATTR0_SQUARE;
        shadowOAM[28].attr1 = (COLMASK & enemy.screenCol) | ATTR1_MEDIUM;
        shadowOAM[28].attr2 = ATTR2_TILEID(enemy.aniState * enemy.width/8, enemy.curFrame * enemy.height/8);
    }

    // player 
    shadowOAM[21].attr0 = (ROWMASK & player.screenRow) | ATTR0_SQUARE;
    if (player.direction == 1) {
        shadowOAM[21].attr1 = (COLMASK & player.screenCol) | ATTR1_MEDIUM;
    } else {
        shadowOAM[21].attr1 = player.screenCol | ATTR1_MEDIUM | ATTR1_HFLIP;
    }
    shadowOAM[21].attr2 = ATTR2_TILEID(player.aniState * player.width/8, player.curFrame * player.height/8);

    // Health Bars
    for (int i = 0; i < PLAYERHEALTHCOUNT; i++) {
        shadowOAM[0 + i].attr0 = playerHealthBar[i].screenRow | ATTR0_SQUARE;
        shadowOAM[0 + i].attr1 = playerHealthBar[i].screenCol | ATTR1_TINY;
        shadowOAM[0 + i].attr2 = ATTR2_TILEID(playerHealthBar[i].aniState * playerHealthBar[i].width/8, playerHealthBar[i].curFrame * playerHealthBar[i].height/8);
    }

    if (spawn == 1) {
        for (int i = 0; i < ENEMYHEALTHCOUNT; i++) {
            shadowOAM[10 + i].attr0 = enemyHealthBar[i].screenRow | ATTR0_SQUARE;
            shadowOAM[10 + i].attr1 = enemyHealthBar[i].screenCol | ATTR1_TINY;
            shadowOAM[10 + i].attr2 = ATTR2_TILEID(enemyHealthBar[i].aniState * enemyHealthBar[i].width/8, enemyHealthBar[i].curFrame * enemyHealthBar[i].height/8);
        }
    }

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128);
}


