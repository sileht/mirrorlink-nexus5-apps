.class public Lcom/lge/mirrorlink/vnc/TmVNCServer;
.super Ljava/lang/Object;
.source "TmVNCServer.java"

# interfaces
.implements Lcom/lge/mirrorlink/common/FunctionServer;


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_VNC"

.field private static sVNCServer:Lcom/lge/mirrorlink/vnc/TmVNCServer;


# instance fields
.field private isVNCStarted:Z

.field private mContext:Landroid/content/Context;

.field private vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->sVNCServer:Lcom/lge/mirrorlink/vnc/TmVNCServer;

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->isVNCStarted:Z

    .line 85
    if-nez p1, :cond_11

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_11
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public static declared-synchronized getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/vnc/TmVNCServer;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/lge/mirrorlink/vnc/TmVNCServer;

    monitor-enter v1

    .line 68
    :try_start_3
    sget-object v0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->sVNCServer:Lcom/lge/mirrorlink/vnc/TmVNCServer;

    if-nez v0, :cond_e

    .line 70
    new-instance v0, Lcom/lge/mirrorlink/vnc/TmVNCServer;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/vnc/TmVNCServer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->sVNCServer:Lcom/lge/mirrorlink/vnc/TmVNCServer;

    .line 74
    :cond_e
    sget-object v0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->sVNCServer:Lcom/lge/mirrorlink/vnc/TmVNCServer;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBindedPort()I
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    if-eqz v0, :cond_b

    .line 202
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getListeningPort()I

    move-result v0

    return v0

    .line 205
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isDriveMode()Z
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v0

    if-nez v0, :cond_e

    .line 290
    :cond_c
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_e
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 292
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getDriveMode()Z

    move-result v0

    return v0
.end method

.method public isNightMode()Z
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v0

    if-nez v0, :cond_e

    .line 309
    :cond_c
    const/4 v0, 0x0

    return v0

    .line 308
    :cond_e
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 311
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getNightMode()Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->isListening()Z

    move-result v0

    return v0
.end method

.method public isVNCConnected()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    if-nez v0, :cond_6

    .line 164
    return v1

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v0

    if-nez v0, :cond_f

    .line 167
    return v1

    .line 169
    :cond_f
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->isAlive()Z

    move-result v0

    return v0
.end method

.method public startServer()I
    .registers 5

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->isVNCStarted:Z

    if-eqz v1, :cond_14

    .line 228
    const-string/jumbo v1, "MirrorLink_VNC"

    const-string/jumbo v2, "MirrorLink_VNC.handleStart: already started VNC host."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getListeningPort()I

    move-result v1

    return v1

    .line 231
    :cond_14
    const-string/jumbo v1, "MirrorLink_VNC"

    const-string/jumbo v2, "MirrorLink_VNC.handleStart: start VNC host."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v1, Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->mContext:Landroid/content/Context;

    sget v3, Lcom/lge/mirrorlink/common/LaunchedComponent;->MIRRORLINK_VNC_DEFAULT_PORT:I

    invoke-direct {v1, v2, v3}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    .line 233
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->startListen()V

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->isVNCStarted:Z

    .line 236
    invoke-static {}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getInstance()Lcom/lge/mirrorlink/common/LaunchedComponent;

    move-result-object v0

    .line 237
    .local v0, "TmComURLs":Lcom/lge/mirrorlink/common/LaunchedComponent;
    const-string/jumbo v1, "TerminalMode:VNC-Server"

    const-string/jumbo v2, "VNC"

    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getListeningPort()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mirrorlink/common/LaunchedComponent;->putCompInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getListeningPort()I

    move-result v1

    return v1
.end method

.method public stopServer()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 261
    const-string/jumbo v2, "MirrorLink_VNC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MirrorLink_VNC.handleStart: stop VNC host. (vncHost = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 262
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    if-nez v1, :cond_42

    const-string/jumbo v1, "null"

    .line 261
    :goto_17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    const-string/jumbo v3, ")"

    .line 261
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    if-eqz v1, :cond_34

    .line 265
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->stopListen()V

    .line 266
    iput-object v4, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->vncHost:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    .line 268
    :cond_34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/TmVNCServer;->isVNCStarted:Z

    .line 270
    invoke-static {}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getInstance()Lcom/lge/mirrorlink/common/LaunchedComponent;

    move-result-object v0

    .line 271
    .local v0, "TmComURLs":Lcom/lge/mirrorlink/common/LaunchedComponent;
    const-string/jumbo v1, "TerminalMode:VNC-Server"

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->removeCompInfo(Ljava/lang/String;)V

    .line 245
    return-void

    .line 262
    .end local v0    # "TmComURLs":Lcom/lge/mirrorlink/common/LaunchedComponent;
    :cond_42
    const-string/jumbo v1, "not null"

    goto :goto_17
.end method
