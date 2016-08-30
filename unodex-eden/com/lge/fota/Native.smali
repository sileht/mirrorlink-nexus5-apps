.class Lcom/lge/fota/Native;
.super Ljava/lang/Object;
.source "Native.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Native.java"

.field private static m_FotaInterface:Lcom/lge/fota/DmcFotaNativeInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "fotajni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native ClearUsd()I
.end method

.method static native DoAutotest(II)I
.end method

.method static native DoUpdate(II)I
.end method

.method static native DumpImage(II)I
.end method

.method static native GetResult(I)I
.end method

.method static native GetUsd(II)I
.end method

.method static native PrepareUpdate(Ljava/lang/String;)I
.end method

.method static Progress(I)I
    .registers 2
    .param p0, "iProgress"    # I

    .prologue
    .line 58
    sget-object v0, Lcom/lge/fota/Native;->m_FotaInterface:Lcom/lge/fota/DmcFotaNativeInterface;

    if-eqz v0, :cond_9

    .line 60
    sget-object v0, Lcom/lge/fota/Native;->m_FotaInterface:Lcom/lge/fota/DmcFotaNativeInterface;

    invoke-interface {v0, p0}, Lcom/lge/fota/DmcFotaNativeInterface;->Progress(I)V

    .line 63
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method static RemoveCallback()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/fota/Native;->m_FotaInterface:Lcom/lge/fota/DmcFotaNativeInterface;

    .line 54
    return-void
.end method

.method static SetCallback(Lcom/lge/fota/DmcFotaNativeInterface;)V
    .registers 1
    .param p0, "FotaInterface"    # Lcom/lge/fota/DmcFotaNativeInterface;

    .prologue
    .line 48
    sput-object p0, Lcom/lge/fota/Native;->m_FotaInterface:Lcom/lge/fota/DmcFotaNativeInterface;

    .line 49
    return-void
.end method

.method static native UpdateAgentV()Ljava/lang/String;
.end method

.method static native ValidatePackage()I
.end method
