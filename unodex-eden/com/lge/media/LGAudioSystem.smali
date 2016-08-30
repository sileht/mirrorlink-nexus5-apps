.class public Lcom/lge/media/LGAudioSystem;
.super Ljava/lang/Object;
.source "LGAudioSystem.java"


# static fields
.field public static final DEVICE_IN_ALL:I = -0x3ef00001

.field public static final DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final HEADSET_TYPE_ADVANCED:I = 0x2

.field public static final HEADSET_TYPE_AUX:I = 0x3

.field public static final HEADSET_TYPE_NONE:I = 0x0

.field public static final HEADSET_TYPE_NORMAL:I = 0x1

.field public static final NUM_STREAM_TYPES:I = 0xa

.field public static final STREAM_INCALL_MUSIC:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getTwinHeadsetOn()Z
.end method

.method public static native getTwinHeadsetPopupOn()Z
.end method

.method public static native setDSDPDualAudioControl(I)I
.end method

.method public static native setMABLControl(II)I
.end method

.method public static native setMABLEnable(I)I
.end method

.method public static native setMusicShareDualPath(Z)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setRecordHookingEnabled(III)Ljava/io/FileDescriptor;
.end method

.method public static native setRingerMode(I)I
.end method

.method public static native setTwinHeadsetOn(Z)I
.end method

.method public static native setTwinHeadsetPopupOn(Z)I
.end method
