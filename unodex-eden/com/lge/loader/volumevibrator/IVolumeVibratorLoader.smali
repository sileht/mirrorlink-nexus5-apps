.class public interface abstract Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;
.super Ljava/lang/Object;
.source "IVolumeVibratorLoader.java"


# static fields
.field public static final VIBRATE_DEFAULT_VOLUME:I = 0x5

.field public static final VIBRATE_MAX_VOLUME:I = 0x7

.field public static final VIBRATE_NONE_VOLUME:I = -0x1

.field public static final VIBRATE_NUM_TYPE:I = 0x3

.field public static final VIBRATE_TYPE_HAPTIC:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RING:I


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getVibrateVolume()I
.end method

.method public abstract getVibrateVolume(I)I
.end method

.method public abstract setVibrateMute(Z)V
.end method

.method public abstract setVibrateVolume(I)V
.end method

.method public abstract setVibrateVolume(II)V
.end method

.method public abstract vibrate(JI)V
.end method

.method public abstract vibrate(JILandroid/media/AudioAttributes;)V
.end method

.method public abstract vibrate([JI[I)V
.end method

.method public abstract vibrate([JI[ILandroid/media/AudioAttributes;)V
.end method
