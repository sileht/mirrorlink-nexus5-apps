.class public Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;
.super Ljava/lang/Object;
.source "DisplayOrientationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DisplayOrientationHandler"


# instance fields
.field private mVncServer:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

.field private mVncSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/vnc/lib/VNCServer;Lcom/lge/mirrorlink/vnc/lib/VNCSession;)V
    .registers 4
    .param p1, "vncServer"    # Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .param p2, "vncSession"    # Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncServer:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    .line 11
    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    .line 14
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncServer:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    .line 15
    iput-object p2, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    .line 13
    return-void
.end method

.method private forceLandscape(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->isPortraitMode(II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 55
    const-string/jumbo v0, "MirrorLink_DisplayOrientationHandler"

    const-string/jumbo v1, "isPortraitMode(): true"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/lge/mirrorlink/misc/LandscapeRotator;

    invoke-direct {v0}, Lcom/lge/mirrorlink/misc/LandscapeRotator;-><init>()V

    invoke-virtual {v0}, Lcom/lge/mirrorlink/misc/LandscapeRotator;->rotate()V

    .line 53
    :cond_17
    return-void
.end method

.method private isPortraitMode(II)Z
    .registers 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 64
    if-ge p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private switchOrientation(II)Z
    .registers 8
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 30
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getCurrentOrientation()I

    move-result v0

    .line 31
    .local v0, "currentOrientation":I
    const/4 v2, 0x0

    .line 33
    .local v2, "retValue":Z
    sget v3, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->ORIENTATION_LANDSCAPE:I

    if-ne v0, v3, :cond_25

    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->isPortraitMode(II)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 34
    const-string/jumbo v3, "MirrorLink_DisplayOrientationHandler"

    const-string/jumbo v4, "switchToPortraitMode() : true"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncServer:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->updateOrientation()Z

    .line 37
    :try_start_1f
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncServer:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->writeDeviceStatus(Z)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_3c

    .line 43
    :cond_25
    :goto_25
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->isPortraitMode(II)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 44
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    sget v4, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->ORIENTATION_PORTRAIT:I

    invoke-virtual {v3, v4}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->setCurrentOrientation(I)V

    .line 45
    const-string/jumbo v3, "MirrorLink_DisplayOrientationHandler"

    const-string/jumbo v4, "isChangePortraitMode() portrait"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_3b
    return v2

    .line 38
    :catch_3c
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "MirrorLink_DisplayOrientationHandler"

    const-string/jumbo v4, "IOException happens !"

    invoke-static {v3, v4, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    .line 47
    .end local v1    # "e":Ljava/io/IOException;
    :cond_47
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    sget v4, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->ORIENTATION_LANDSCAPE:I

    invoke-virtual {v3, v4}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->setCurrentOrientation(I)V

    .line 48
    const-string/jumbo v3, "MirrorLink_DisplayOrientationHandler"

    const-string/jumbo v4, "isChangePortraitMode() landscape"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method


# virtual methods
.method public execute(II)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 19
    const-string/jumbo v0, "MirrorLink_DisplayOrientationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ConfigOrientationSwitch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    iget-boolean v2, v2, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigOrientationSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->mVncSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    iget-boolean v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigOrientationSwitch:Z

    if-eqz v0, :cond_28

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->switchOrientation(II)Z

    .line 18
    :goto_27
    return-void

    .line 24
    :cond_28
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->forceLandscape(II)V

    goto :goto_27
.end method
