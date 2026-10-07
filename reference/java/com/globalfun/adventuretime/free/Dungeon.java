package com.globalfun.adventuretime.free;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class Dungeon implements DeviceConfig {
    private static final int NUM_DUNGEONS = 4;
    private static final int NUM_LOCATIONS = 5;
    private static final int NUM_SHADOWS = 2;
    public static final int SHADOW_MEDIUM = 0;
    public static final int SHADOW_ROCK = 2;
    public static final int SHADOW_SMALL = 1;
    private static Image imgAbyss;
    private static Image imgObjects;
    private static Image imgRoom;
    private static Image imgShadows;
    private static Image imgTiles;
    private static Image[] imgsShadow;
    private static final int[] COLORS_LOCATIONS = {-3081360, -852092, -9470371, -1655423, -851975};
    private static final int[] COLORS_LOCATIONS_HI = {-3081360, -2163845, -5514641, -2435464, -851975};
    private static int location = -1;

    public static void loadDungeon(GameCanvas parent, int id) throws IOException {
        unload();
        if (Main.HIGH) {
            for (int p = 0; p < 4; p++) {
                if (p != id) {
                    pullImage(parent);
                    pullImage(parent);
                    pullImage(parent);
                    pullImage(parent);
                    pullImage(parent);
                    pullImage(parent);
                } else {
                    imgRoom = pullImage(parent);
                    imgTiles = pullImage(parent);
                    imgShadows = pullImage(parent);
                    imgAbyss = pullImage(parent);
                    imgObjects = pullImage(parent);
                    imgsShadow = new Image[2];
                    imgsShadow[0] = pullImage(parent);
                    imgsShadow[1] = imgsShadow[0];
                    return;
                }
            }
            return;
        }
        int numPalettes = 6;
        if (!Main.midlet.res.HAS_DETAILED_ABYSS) {
            numPalettes = 6 - 1;
        }
        if (!Main.midlet.res.HAS_ROOM_SHADOWS) {
            numPalettes--;
        }
        if (!Main.midlet.res.HAS_ACTOR_SHADOWS) {
            numPalettes--;
        }
        byte[][] palettes = new byte[numPalettes][];
        if (Main.midlet.res.USES_PALETTES) {
            for (int p2 = 1; p2 < 4; p2++) {
                if (p2 != id) {
                    parent.skipResources(numPalettes);
                } else {
                    for (int i = 0; i < numPalettes; i++) {
                        palettes[i] = parent.pullByteArray();
                    }
                }
            }
        }
        int p3 = 0 + 1;
        imgRoom = pullImage(parent, palettes[0]);
        int p4 = p3 + 1;
        imgTiles = pullImage(parent, palettes[p3]);
        if (Main.midlet.res.HAS_ROOM_SHADOWS) {
            imgShadows = pullImage(parent, palettes[p4]);
            p4++;
        }
        if (Main.midlet.res.HAS_DETAILED_ABYSS) {
            imgAbyss = pullImage(parent, palettes[p4]);
            p4++;
        }
        int p5 = p4 + 1;
        imgObjects = pullImage(parent, palettes[p4]);
        if (Main.midlet.res.HAS_ACTOR_SHADOWS) {
            imgsShadow = new Image[2];
            for (int i2 = 0; i2 < 2; i2++) {
                imgsShadow[i2] = pullImage(parent, palettes[p5]);
            }
        }
    }

    public static Image pullImage(GameCanvas parent) throws IOException {
        byte[] data = parent.pullByteArray();
        int len = data.length;
        return Image.createImage(data, 0, len);
    }

    public static void loadOverworld(GameCanvas parent, int location2) throws IOException {
        if (location != location2) {
            unload();
            location = location2;
            if (Main.HIGH) {
                for (int p = 0; p < 5; p++) {
                    if (p != location2) {
                        pullImage(parent);
                        pullImage(parent);
                    } else {
                        imgRoom = pullImage(parent);
                        imgTiles = pullImage(parent);
                        return;
                    }
                }
                return;
            }
            byte[] palette = null;
            if (Main.midlet.res.USES_PALETTES) {
                for (int p2 = 0; p2 < 5; p2++) {
                    if (p2 != location2) {
                        parent.skipResources(1);
                    } else {
                        palette = parent.pullByteArray();
                    }
                }
            }
            imgRoom = pullImage(parent, palette);
            imgTiles = pullImage(parent, null);
        }
    }

    private static Image pullImage(GameCanvas parent, byte[] palette) throws IOException {
        byte[] imgData = parent.pullByteArray();
        if (palette != null) {
            Main.setChunk("PLTE", imgData, palette);
        }
        return Image.createImage(imgData, 0, imgData.length);
    }

    private static void unload() {
        location = -1;
        imgRoom = null;
        imgTiles = null;
        imgShadows = null;
        imgAbyss = null;
        imgObjects = null;
        imgsShadow = null;
        GameCanvas.garbageCollect();
    }

    public static void paintRoom(Graphics g, int x, int y, int id, boolean isOverworld) {
        int dir = 0;
        if (isOverworld) {
            Resources resources = Main.midlet.res;
            if (Resources.OVERWORLD_TILE.length > 0) {
                Resources resources2 = Main.midlet.res;
                dir = Resources.OVERWORLD_TRANSFORM[id];
                Resources resources3 = Main.midlet.res;
                id = Resources.OVERWORLD_TILE[id];
            }
        } else {
            Resources resources4 = Main.midlet.res;
            if (Resources.DUNGEON_TILE.length > 0) {
                Resources resources5 = Main.midlet.res;
                dir = Resources.DUNGEON_TRANSFORM[id];
                Resources resources6 = Main.midlet.res;
                id = Resources.DUNGEON_TILE[id];
            }
        }
        Resources resources7 = Main.midlet.res;
        int fy = id * Resources.GFX_ROOM_SIZE;
        Image image = imgRoom;
        Resources resources8 = Main.midlet.res;
        int i = Resources.GFX_ROOM_SIZE;
        Resources resources9 = Main.midlet.res;
        g.drawRegion(image, 0, fy, i, Resources.GFX_ROOM_SIZE, Sprite.TRANSFORM[dir], x, y, 20);
    }

    public static void paintTile(Graphics g, int x, int y, int id, boolean isOverworld) {
        if (isOverworld) {
            if (id == 0) {
                if (Main.HIGH) {
                    g.setColor(COLORS_LOCATIONS_HI[location]);
                } else {
                    g.setColor(COLORS_LOCATIONS[location]);
                }
                Resources resources = Main.midlet.res;
                int i = Resources.GFX_OBJECT_SIZE;
                Resources resources2 = Main.midlet.res;
                g.fillRect(x, y, i, Resources.GFX_OBJECT_SIZE);
                return;
            }
            Resources resources3 = Main.midlet.res;
            int fy = id * Resources.GFX_OBJECT_SIZE;
            Image image = imgTiles;
            Resources resources4 = Main.midlet.res;
            int i2 = Resources.GFX_OBJECT_SIZE;
            Resources resources5 = Main.midlet.res;
            g.drawRegion(image, 0, fy, i2, Resources.GFX_OBJECT_SIZE, 0, x, y, 20);
            return;
        }
        Resources resources6 = Main.midlet.res;
        int fy2 = id * Resources.GFX_TILE_SIZE;
        Image image2 = imgTiles;
        Resources resources7 = Main.midlet.res;
        int i3 = Resources.GFX_TILE_SIZE;
        Resources resources8 = Main.midlet.res;
        g.drawRegion(image2, 0, fy2, i3, Resources.GFX_TILE_SIZE, 0, x, y, 20);
    }

    public static void paintShadow(Graphics g, int x, int y, int id) {
        Resources resources = Main.midlet.res;
        int fy = id * Resources.GFX_OBJECT_SIZE;
        Image image = imgShadows;
        Resources resources2 = Main.midlet.res;
        int i = Resources.GFX_OBJECT_SIZE;
        Resources resources3 = Main.midlet.res;
        g.drawRegion(image, 0, fy, i, Resources.GFX_OBJECT_SIZE, 0, x, y, 20);
    }

    public static void paintAbyss(Graphics g, int x, int y, int id) {
        Resources resources = Main.midlet.res;
        int fy = id * Resources.GFX_OBJECT_SIZE;
        Image image = imgAbyss;
        Resources resources2 = Main.midlet.res;
        int i = Resources.GFX_OBJECT_SIZE;
        Resources resources3 = Main.midlet.res;
        g.drawRegion(image, 0, fy, i, Resources.GFX_OBJECT_SIZE, 0, x, y, 20);
    }

    public static void paintObject(Graphics g, int x, int y, int id) {
        if (imgObjects != null) {
            Resources resources = Main.midlet.res;
            int x2 = x - (Resources.GFX_OBJECT_SIZE >> 1);
            Resources resources2 = Main.midlet.res;
            int y2 = y - (Resources.GFX_OBJECT_SIZE >> 1);
            Resources resources3 = Main.midlet.res;
            int fy = id * Resources.GFX_OBJECT_SIZE;
            Image image = imgObjects;
            Resources resources4 = Main.midlet.res;
            int i = Resources.GFX_OBJECT_SIZE;
            Resources resources5 = Main.midlet.res;
            g.drawRegion(image, 0, fy, i, Resources.GFX_OBJECT_SIZE, 0, x2, y2, 20);
        }
    }

    public static void paintActorShadow(Graphics g, int x, int y, int id) {
        if (Main.midlet.res.HAS_ACTOR_SHADOWS && imgsShadow != null) {
            g.drawImage(imgsShadow[id], x, y, 3);
        }
    }
}
