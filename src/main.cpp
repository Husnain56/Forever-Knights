#include "raylib.h"

int main()
{
    // Initialization
    const int screenWidth = 800;
    const int screenHeight = 450;

    InitWindow(screenWidth, screenHeight, "My First Raylib Game");
    SetTargetFPS(60);

    // Main game loop
    while (!WindowShouldClose())
    {
        // Update
        // (nothing to update for now)

        // Draw
        BeginDrawing();
        ClearBackground(RAYWHITE);

        DrawText("Hello, Raylib!", 320, 200, 20, DARKGRAY);

        EndDrawing();
    }

    // De-Initialization
    CloseWindow();
    return 0;
}
