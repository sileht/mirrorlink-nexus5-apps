.class public Lcom/lge/wifi/impl/PPPOEExtNative;
.super Ljava/lang/Object;
.source "PPPOEExtNative.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getPppoeErrorCode()I
.end method

.method public static native startPppoe(Ljava/lang/String;)Z
.end method

.method public static native stopPppoe()Z
.end method
