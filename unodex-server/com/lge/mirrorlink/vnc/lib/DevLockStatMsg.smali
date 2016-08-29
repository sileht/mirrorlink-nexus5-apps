.class public Lcom/lge/mirrorlink/vnc/lib/DevLockStatMsg;
.super Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;
.source "DevLockStatMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DevLockStatMsg"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;-><init>()V

    return-void
.end method


# virtual methods
.method public send()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 15
    const-string/jumbo v2, "MirrorLink_DevLockStatMsg"

    const-string/jumbo v3, "sendMsg() !"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v2, Lcom/lge/mirrorlink/vnc/lib/VNCServerGetter;

    invoke-direct {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServerGetter;-><init>()V

    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServerGetter;->get()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v1

    .line 18
    .local v1, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    if-nez v1, :cond_1f

    .line 19
    const-string/jumbo v2, "MirrorLink_DevLockStatMsg"

    const-string/jumbo v3, "vncServer is null !"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void

    .line 23
    :cond_1f
    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->updateDeviceLock()Z

    .line 25
    const/4 v2, 0x1

    :try_start_23
    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->writeDeviceStatus(Z)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    .line 14
    :goto_26
    return-void

    .line 26
    :catch_27
    move-exception v0

    .line 27
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "MirrorLink_DevLockStatMsg"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "IOException happens !"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_26
.end method
