.class public Lcom/lge/hardware/sensors/SensorUserCal;
.super Ljava/lang/Object;
.source "SensorUserCal.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synchronized native declared-synchronized performUserCal(BB)I
.end method
