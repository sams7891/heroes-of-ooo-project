package com.globalfun.adventuretime.free;

/* JADX INFO: loaded from: classes.dex */
public class Animator {
    public boolean complete;
    public int frame;
    public int frameDelay;
    public int frameHit;
    public int frameIndex;
    public int frameRate;
    public byte[] frames;
    public int loops;
    public int numFrames;
    public int targetLoops;

    public void reset(int numFrames) {
        reset(numFrames, 1);
    }

    public void reset(byte[] frames) {
        reset(frames, 1);
    }

    public void reset(int numFrames, int frameRate) {
        this.frames = null;
        this.numFrames = numFrames;
        start(frameRate, 0);
    }

    public void reset(byte[] frames, int frameRate) {
        this.frames = frames;
        this.numFrames = frames == null ? 0 : frames.length;
        start(frameRate, 0);
    }

    public void start(int frameRate, int numLoops) {
        this.frameRate = frameRate;
        this.frame = this.frames != null ? this.frames[0] : (byte) 0;
        this.frameHit = -1;
        this.frameIndex = 0;
        this.frameDelay = frameRate;
        setLoops(numLoops);
    }

    public int getFrameCount() {
        return this.targetLoops * this.numFrames * this.frameRate;
    }

    public void setLoops(int l) {
        this.loops = 0;
        this.targetLoops = l;
        this.complete = this.numFrames == 0;
    }

    public void animate() {
        this.frameHit = -1;
        if (!this.complete) {
            int prev = this.frame;
            if (this.frameDelay > 0) {
                this.frameDelay--;
            }
            if (this.frameDelay <= 0) {
                this.frameIndex++;
                if (this.frameIndex == this.numFrames) {
                    this.loops++;
                    if (this.loops < this.targetLoops || this.targetLoops == 0) {
                        this.frameIndex = 0;
                    } else {
                        this.frameIndex--;
                        this.complete = true;
                    }
                }
                this.frameDelay += this.frameRate;
                if (this.frames == null) {
                    this.frame = this.frameIndex;
                } else {
                    this.frame = this.frames[this.frameIndex];
                }
                if (this.frame != prev) {
                    this.frameHit = this.frame;
                }
            }
        }
    }
}
