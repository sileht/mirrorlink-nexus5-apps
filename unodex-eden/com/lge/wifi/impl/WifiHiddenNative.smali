.class public Lcom/lge/wifi/impl/WifiHiddenNative;
.super Ljava/lang/Object;
.source "WifiHiddenNative.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Channel(II)Z
.end method

.method public static native Channel5G(II)Z
.end method

.method public static native CloseDUT()Z
.end method

.method public static native FRError()I
.end method

.method public static native FRGood()I
.end method

.method public static native FRTotal()I
.end method

.method public static native FrequencyAccuracy(Ljava/lang/String;I)Z
.end method

.method public static native FrequencyAccuracy5G(Ljava/lang/String;I)Z
.end method

.method public static native IsRunning()Z
.end method

.method public static native NoModTxStart()Z
.end method

.method public static native NoModTxStartBCM(I)Z
.end method

.method public static native NoModTxStop()Z
.end method

.method public static native OpenDUT()Z
.end method

.method public static native OtaDisable()Z
.end method

.method public static native OtaEnable()Z
.end method

.method public static native RSSI()I
.end method

.method public static native RxPER(Ljava/lang/String;)I
.end method

.method public static native RxStart()Z
.end method

.method public static native RxStop()Z
.end method

.method public static native Set11nPreamble(I)Z
.end method

.method public static native SetPreamble(I)Z
.end method

.method public static native TXBW_40M(I)Z
.end method

.method public static native TXBW_80M(I)Z
.end method

.method public static native TxBurstFrames(I)Z
.end method

.method public static native TxBurstInterval(I)Z
.end method

.method public static native TxDataRate(Ljava/lang/String;)Z
.end method

.method public static native TxDataRate11ac(IIII)Z
.end method

.method public static native TxDataRate11n(III)Z
.end method

.method public static native TxDataRate11n40M(III)Z
.end method

.method public static native TxDataRate11n5G(III)Z
.end method

.method public static native TxDataRate11n5G40M(III)Z
.end method

.method public static native TxDataRate5G(Ljava/lang/String;)Z
.end method

.method public static native TxDestAddress(Ljava/lang/String;)Z
.end method

.method public static native TxGain(I)Z
.end method

.method public static native TxPER(Ljava/lang/String;)I
.end method

.method public static native TxPayloadLength(I)Z
.end method

.method public static native TxStart()Z
.end method

.method public static native TxStop()Z
.end method
