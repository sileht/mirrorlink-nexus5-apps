.class public Lcom/lge/hardware/FmrIntenna;
.super Ljava/lang/Object;
.source "FmrIntenna.java"


# static fields
.field static final FM_INTENNA_JNI_FAILURE:I = -0x1

.field static final FM_INTENNA_JNI_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "FmrIntenna"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    const-string v0, "FmrIntenna"

    const-string v1, "[FMR_INTENNA]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native setIntennaNative(I)I
.end method
