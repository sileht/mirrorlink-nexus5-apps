.class public Lcom/lge/cic/engine/face/NativeLoader;
.super Ljava/lang/Object;
.source "NativeLoader.java"


# static fields
.field static INSTANCE:Lcom/lge/cic/engine/face/NativeLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const-string v0, "FaceDetectionEngine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/lge/cic/engine/face/NativeLoader;

    invoke-direct {v0}, Lcom/lge/cic/engine/face/NativeLoader;-><init>()V

    sput-object v0, Lcom/lge/cic/engine/face/NativeLoader;->INSTANCE:Lcom/lge/cic/engine/face/NativeLoader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/cic/engine/face/NativeLoader;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/lge/cic/engine/face/NativeLoader;->INSTANCE:Lcom/lge/cic/engine/face/NativeLoader;

    return-object v0
.end method
