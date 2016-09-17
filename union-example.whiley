function indexOf (int[] list, int value) -> int | null:
    int i = 0
    while (i < |list|):
        if (list[i] == value):
            return i
        i = i + 1
    return null
