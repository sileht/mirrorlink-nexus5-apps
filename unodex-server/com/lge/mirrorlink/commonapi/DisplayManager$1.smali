.class Lcom/lge/mirrorlink/commonapi/DisplayManager$1;
.super Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/commonapi/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/commonapi/DisplayManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/commonapi/DisplayManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/commonapi/DisplayManager;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/DisplayManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/DisplayManager;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientPixelFormat()Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    move-result-object v2

    .line 71
    .local v2, "vncHost":Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    if-eqz v2, :cond_1b

    .line 72
    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v4

    .line 73
    .local v4, "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    if-eqz v4, :cond_1b

    .line 74
    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v3

    .line 75
    .local v3, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    if-eqz v3, :cond_1b

    .line 76
    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getPixelFormat()Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    move-result-object v1

    .line 77
    .local v1, "pixelformat":Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->getPixelFormatTypes()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "pixelformat":Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    .end local v3    # "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .end local v4    # "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    :cond_1b
    return-object v0
.end method

.method public getDisplayConfiguration()Landroid/os/Bundle;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 37
    const-string/jumbo v5, "MirrorLink_cAPI"

    const-string/jumbo v6, "[START] getDisplayConfiguration"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    move-result-object v2

    .line 39
    .local v2, "vncHost":Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    if-eqz v2, :cond_97

    .line 40
    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v4

    .line 41
    .local v4, "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    if-eqz v4, :cond_97

    .line 42
    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v3

    .line 43
    .local v3, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    if-eqz v3, :cond_97

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "bundle_displaycf":Landroid/os/Bundle;
    const-string/jumbo v5, "APP_PIXEL_WIDTH"

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getSystemDisplayWidth()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string/jumbo v5, "APP_PIXEL_HEIGHT"

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getSystemDisplayHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-string/jumbo v5, "SERVER_PIXEL_WIDTH"

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string/jumbo v5, "SERVER_PIXEL_HEIGHT"

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string/jumbo v5, "SERVER_PAD_ROWS"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string/jumbo v5, "SERVER_PAD_COLUMNS"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string/jumbo v5, "CLIENT_PIXEL_WIDTH"

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getClientWidth()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    const-string/jumbo v5, "CLIENT_PIXEL_HEIGHT"

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getClientHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string/jumbo v5, "MM_WIDTH"

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getClientWidthMM()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string/jumbo v5, "MM_HEIGHT"

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getClientHeightMM()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    const-string/jumbo v5, "DISTANCE"

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getClientDistanceMM()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getPixelFormat()Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    move-result-object v1

    .line 57
    .local v1, "pixelformat":Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    if-eqz v1, :cond_96

    .line 58
    const-string/jumbo v5, "APP_PIXELS_PER_CLIENT_MM"

    iget v6, v1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    :cond_96
    return-object v0

    .line 64
    .end local v0    # "bundle_displaycf":Landroid/os/Bundle;
    .end local v1    # "pixelformat":Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    .end local v3    # "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .end local v4    # "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    :cond_97
    return-object v7
.end method

.method public unregister()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    const-string/jumbo v1, "MirrorLink_cAPI"

    const-string/jumbo v2, "[START] unregister"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 88
    .local v0, "sCommonAPIManager":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_18

    .line 89
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/DisplayManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/DisplayManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/DisplayManager;->-get0(Lcom/lge/mirrorlink/commonapi/DisplayManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->unregisterDisplayManager(Ljava/lang/String;)V

    .line 85
    :cond_18
    return-void
.end method
