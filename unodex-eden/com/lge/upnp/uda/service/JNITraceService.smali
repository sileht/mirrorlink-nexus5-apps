.class public Lcom/lge/upnp/uda/service/JNITraceService;
.super Ljava/lang/Object;
.source "JNITraceService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native DisableTrace(I)V
.end method

.method public static native EnableTrace(I)V
.end method

.method public static native GetCompileDateTime()Ljava/lang/String;
.end method
