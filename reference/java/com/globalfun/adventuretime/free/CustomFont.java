package com.globalfun.adventuretime.free;

import java.io.DataInputStream;

/* JADX INFO: loaded from: classes.dex */
public final class CustomFont implements DeviceConfig {
    private static final int ALIGN_REQUIRED = 43;
    public static final int MONOSPACE_CENTER = 2;
    public static final int MONOSPACE_LEFT = 1;
    public static final int MONOSPACE_OFF = 0;
    public static final int MONOSPACE_RIGHT = 3;
    public int cellHeight;
    public int cellWidth;
    public int charSpacing;
    private char[] chars;
    private short hashMask;
    private byte[] height;
    private Image image;
    public int lineSpacing;
    public int monoSpaced = 0;
    public char[] monoSpacedChars = null;
    public int monoSpacedWidth;
    private int numChars;
    private byte[] width;
    public int wordSpacing;
    private short[] x;
    private short[] y;
    private byte[] yOffset;

    public CustomFont(String name) {
        try {
            DataInputStream in = new DataInputStream(Main.midlet.getResourceAsStream(name));
            in.readByte();
            this.charSpacing = in.readByte();
            this.wordSpacing = in.readByte();
            this.lineSpacing = in.readByte();
            this.cellWidth = in.readByte();
            this.cellHeight = in.readByte();
            this.monoSpacedWidth = this.cellWidth;
            this.chars = in.readUTF().toCharArray();
            this.hashMask = in.readShort();
            this.numChars = this.chars.length;
            this.x = new short[this.numChars];
            this.y = new short[this.numChars];
            this.width = new byte[this.numChars];
            this.height = new byte[this.numChars];
            this.yOffset = new byte[this.numChars];
            for (int i = 0; i < this.numChars; i++) {
                this.x[i] = in.readShort();
                this.y[i] = in.readShort();
                this.width[i] = in.readByte();
                this.height[i] = in.readByte();
                this.yOffset[i] = in.readByte();
            }
            int size = in.readShort();
            byte[] img = new byte[size];
            in.readFully(img);
            this.image = Image.createImage(img, 0, img.length);
            in.close();
        } catch (Exception e) {
        }
    }

    public int stringWidth(String s) {
        return charsWidth(s.toCharArray(), 0, s.length());
    }

    public int stringHeight(String s) {
        return charsHeight(s.toCharArray(), 0, s.length());
    }

    public int charsWidth(char[] chars, int offset, int length) {
        int width = 0;
        int i = length;
        while (true) {
            i--;
            if (i >= 0) {
                width += charWidth(chars[offset]);
                if (i != 0) {
                    width += this.charSpacing;
                }
                offset++;
            } else {
                return width;
            }
        }
    }

    public int charsHeight(char[] chars, int offset, int length) {
        int charHeight;
        int height = 0;
        int i = length;
        while (true) {
            i--;
            if (i >= 0) {
                int index = getIndex(chars[offset]);
                if (index >= 0 && (charHeight = this.height[index] + this.yOffset[index]) > height) {
                    height = charHeight;
                }
                offset++;
            } else {
                return height;
            }
        }
    }

    public int charWidth(char c) {
        int i;
        int width = this.wordSpacing;
        if (c != ' ') {
            int index = getIndex(c);
            if (index < 0) {
                i = this.monoSpacedWidth;
            } else {
                i = this.width[index];
            }
            boolean monoSpace = this.monoSpaced != 0;
            if (monoSpace && this.monoSpacedChars != null) {
                monoSpace = false;
                int j = this.monoSpacedChars.length;
                while (true) {
                    j--;
                    if (j < 0) {
                        break;
                    }
                    if (this.monoSpacedChars[j] == c) {
                        monoSpace = true;
                        break;
                    }
                }
            }
            if (monoSpace) {
                int width2 = this.monoSpacedWidth;
                return width2;
            }
            return i;
        }
        return width;
    }

    private int getIndex(int aChar) {
        int index = aChar & this.hashMask;
        int c = this.numChars;
        while (true) {
            if (index >= this.numChars) {
                index = 0;
            }
            if (this.chars[index] != aChar) {
                if (c == 0) {
                    return -1;
                }
                index++;
                c--;
            } else {
                return index;
            }
        }
    }

    public void drawString(Graphics g, String string, int x, int y, int align) {
        drawChars(g, string.toCharArray(), x, y, align);
    }

    public void drawStrings(Graphics g, String[] strings, int x, int y, int align) {
        int i = 0;
        while (i < strings.length) {
            drawChars(g, strings[i].toCharArray(), x, y, align);
            i++;
            y += this.lineSpacing;
        }
    }

    public void drawString(Graphics g, int i, int x, int y, int align) {
        drawChars(g, Integer.toString(i).toCharArray(), x, y, align);
    }

    public void drawSubstring(Graphics g, String str, int offset, int len, int x, int y, int align) {
        char[] chars = str.substring(offset, offset + len).toCharArray();
        drawChars(g, chars, x, y, align);
    }

    public void drawChars(Graphics g, char[] chars, int x, int y, int align) {
        if ((align & 43) > 0) {
            int width = charsWidth(chars, 0, chars.length);
            if ((align & 8) > 0) {
                x -= width;
            } else if ((align & 1) > 0) {
                x -= width / 2;
            }
            if ((align & 32) > 0) {
                y -= this.cellHeight;
            } else if ((align & 2) > 0) {
                y -= this.cellHeight / 2;
            }
        }
        drawChars(g, chars, x, y);
    }

    public void drawChars(Graphics g, char[] chars, int x, int y) {
        for (char c : chars) {
            x = drawChar(g, c, x, y);
        }
    }

    public int drawChar(Graphics g, char c, int x, int y) {
        int x2;
        if (c == ' ') {
            x2 = x + this.wordSpacing;
        } else {
            int index = getIndex(c);
            if (index < 0) {
                x2 = x + this.monoSpacedWidth;
            } else {
                int width = this.width[index];
                boolean monoSpace = this.monoSpaced != 0;
                if (monoSpace && this.monoSpacedChars != null) {
                    monoSpace = false;
                    int j = this.monoSpacedChars.length;
                    while (true) {
                        j--;
                        if (j < 0) {
                            break;
                        }
                        if (this.monoSpacedChars[j] == c) {
                            monoSpace = true;
                            break;
                        }
                    }
                }
                int fHeight = this.height[index];
                short s = this.x[index];
                short s2 = this.y[index];
                int px = x;
                int y2 = y + this.yOffset[index];
                if (monoSpace) {
                    int space = this.monoSpacedWidth - width;
                    switch (this.monoSpaced) {
                        case 2:
                            px += (space + 1) >> 1;
                            break;
                        case 3:
                            px += space;
                            break;
                    }
                }
                g.drawRegion(this.image, s, s2, width, fHeight, 0, px, y2, 20);
                if (monoSpace) {
                    x2 = x + this.monoSpacedWidth;
                } else {
                    x2 = x + width;
                }
            }
        }
        return x2 + this.charSpacing;
    }

    public void setMonoSpacing(char[] chs) {
        int w;
        this.monoSpacedChars = chs;
        if (chs == null) {
            this.monoSpacedWidth = this.cellWidth;
            return;
        }
        this.monoSpacedWidth = 0;
        for (int i = 0; i < this.monoSpacedChars.length; i++) {
            int index = getIndex(chs[i]);
            if (index >= 0 && (w = this.width[index]) > this.monoSpacedWidth) {
                this.monoSpacedWidth = w;
            }
        }
    }

    public int getLinesHeight(int numLines) {
        int height = 0;
        if (numLines > 0) {
            height = this.cellHeight;
        }
        if (numLines > 1) {
            return height + (this.lineSpacing * (numLines - 1));
        }
        return height;
    }
}
