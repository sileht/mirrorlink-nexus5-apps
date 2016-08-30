.class public Lcom/lge/wifi/impl/wifiSap/WifiQsapNative;
.super Ljava/lang/Object;
.source "WifiQsapNative.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native QsapCloseNetlink()V
.end method

.method protected static native QsapOpenNetlink()Z
.end method

.method protected static native QsapSendCommand(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected static native QsapWaitForEvent()Ljava/lang/String;
.end method
