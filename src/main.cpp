#include "raylib.h"

int main()
{
    // Initialization
    const int screenWidth = GetMonitorWidth(0);
    const int screenHeight = GetMonitorHeight(0);

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
