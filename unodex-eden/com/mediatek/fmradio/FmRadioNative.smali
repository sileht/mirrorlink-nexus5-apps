.class public Lcom/mediatek/fmradio/FmRadioNative;
.super Ljava/lang/Object;
.source "FmRadioNative.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "fmjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native activeAf()S
.end method

.method public static native activeTA()S
.end method

.method public static native autoScan()[S
.end method

.method public static native closeDev()Z
.end method

.method public static native deactiveTA()S
.end method

.method public static native emcmd([S)[S
.end method

.method public static native emsetth(II)Z
.end method

.method public static native getAFList()[S
.end method

.method public static native getFmStatus(I)Z
.end method

.method public static native getHardwareVersion()[I
.end method

.method public static native getLrText()[B
.end method

.method public static native getPI()S
.end method

.method public static native getPTY()B
.end method

.method public static native getPs()[B
.end method

.method public static native getchipid()I
.end method

.method public static native isFMPoweredUp()I
.end method

.method public static native isRdsSupport()I
.end method

.method public static native openDev()Z
.end method

.method public static native powerDown(I)Z
.end method

.method public static native powerUp(F)Z
.end method

.method public static native readCapArray()S
.end method

.method public static native readRds()S
.end method

.method public static native readRdsBler()S
.end method

.method public static native readRssi()I
.end method

.method public static native scannew(III)[S
.end method

.method public static native seek(FZ)F
.end method

.method public static native seeknew(IIIIII)I
.end method

.method public static native setFMViaBTController(Z)Z
.end method

.method public static native setFmStatus(IZ)Z
.end method

.method public static native setMute(Z)I
.end method

.method public static native setRds(Z)I
.end method

.method public static native setStereoMono(Z)Z
.end method

.method public static native stereoMono()Z
.end method

.method public static native stopScan()Z
.end method

.method public static native switchAntenna(I)I
.end method

.method public static native tune(F)Z
.end method

.method public static native tunenew(IIII)Z
.end method
