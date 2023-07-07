// Game Prototypes
void initGame();
void updateGame();
void drawGame();

// Initilaize Enemy Prototype
void initEnemy();

// SPlayer Sprite
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

// Enemy Sprite
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

// Enemy Health Sprite
typedef struct {
    int width;
    int height;
    int aniState;
    int curFrame;
    int screenRow;
    int screenCol;
} ENEMYHEALTH;

// Player Health Sprite
typedef struct {
    int width;
    int height;
    int aniState;
    int curFrame;
    int screenRow;
    int screenCol;
} PLAYERHEALTH;

#define PLAYERHEALTHCOUNT 10
#define ENEMYHEALTHCOUNT 10

// Health values for End Game States
extern int playerHealth;
extern int enemyHealth;

// Movement Speed (For Cheat)
extern int speed;

extern ENEMY enemy;
extern PLAYER player;

extern ENEMYHEALTH enemyHealthBar[ENEMYHEALTHCOUNT];
extern PLAYERHEALTH playerHealthBar[PLAYERHEALTHCOUNT];

// Sprite Sheet Enums
enum {HURT1, HURT2, HURT3, HURT4, GUARD1, GUARD2, GUARD3, GUARD4}; // 0
enum {GUARD5, GUARD6, GUARD7, JUMP1, JUMP2, JUMP3, JUMP4, JUMP5}; // 1
enum {ATTACK1, ATTACK2, ATTACK3, ATTACK4, ATTACK5, ATTACK6, RUN1, RUN2}; // 2
enum {RUN3, RUN4, RUN5, RUN6, RUN7, RUN8, RUN9, RUN10}; // 3
enum {RUN11, RUN12, STAND1, STAND2, STAND3, STAND4, STAND5, STAND6}; // 4
enum {STAND7, STAND8, STAND9, STAND10, HEALTH, HANDHURT1, HANDHURT2, HANDPUNCH1}; // 5
enum {HANDPUNCH3, HANDPUNCH2, HANDGRAB6, HANDGRAB5, HANDGRAB4, HANDGRAB3, HANDGRAB2, HANDGRAB1}; // 6
enum {HAND8, HAND7, HAND6, HAND5, HAND4, HAND3, HAND2, HAND1}; // 7
