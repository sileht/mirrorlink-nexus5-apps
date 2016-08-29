.class public Lcom/lge/mirrorlink/vnc/lib/VNCServerGetter;
.super Ljava/lang/Object;
.source "VNCServerGetter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_VNCServerGetter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 10
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    move-result-object v0

    .line 11
    .local v0, "vncHost":Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    if-nez v0, :cond_11

    .line 12
    const-string/jumbo v3, "MirrorLink_VNCServerGetter"

    const-string/jumbo v4, "vncHost is null !"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-object v5

    .line 15
    :cond_11
    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v2

    .line 16
    .local v2, "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    if-nez v2, :cond_21

    .line 17
    const-string/jumbo v3, "MirrorLink_VNCServerGetter"

    const-string/jumbo v4, "vncSession is null !"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-object v5

    .line 20
    :cond_21
    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v1

    .line 21
    .local v1, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    return-object v1
.end method
