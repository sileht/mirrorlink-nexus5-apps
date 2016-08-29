.class public Lcom/lge/mirrorlink/dap/TmDAPServer;
.super Ljava/lang/Object;
.source "TmDAPServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DAP"

.field private static sDAPServer:Lcom/lge/mirrorlink/dap/TmDAPServer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

.field private mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/dap/TmDAPServer;->sDAPServer:Lcom/lge/mirrorlink/dap/TmDAPServer;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    .line 40
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    .line 57
    if-nez p1, :cond_13

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_13
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public static declared-synchronized getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/dap/TmDAPServer;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/lge/mirrorlink/dap/TmDAPServer;

    monitor-enter v1

    .line 79
    :try_start_3
    sget-object v0, Lcom/lge/mirrorlink/dap/TmDAPServer;->sDAPServer:Lcom/lge/mirrorlink/dap/TmDAPServer;

    if-nez v0, :cond_e

    .line 81
    new-instance v0, Lcom/lge/mirrorlink/dap/TmDAPServer;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/dap/TmDAPServer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/mirrorlink/dap/TmDAPServer;->sDAPServer:Lcom/lge/mirrorlink/dap/TmDAPServer;

    .line 83
    :cond_e
    sget-object v0, Lcom/lge/mirrorlink/dap/TmDAPServer;->sDAPServer:Lcom/lge/mirrorlink/dap/TmDAPServer;
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
    .line 142
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/lib/DAPHost;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 143
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/lib/DAPHost;->getPort()I

    move-result v0

    return v0

    .line 146
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/lib/DAPHost;->isStarted()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public startServer(Ljava/lang/String;)I
    .registers 6
    .param p1, "ipaddr"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    if-nez v1, :cond_d

    .line 182
    new-instance v1, Lcom/lge/mirrorlink/dap/lib/DAPServer;

    iget-object v2, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/mirrorlink/dap/lib/DAPServer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    .line 186
    :cond_d
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/TmDAPServer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 188
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/TmDAPServer;->stopServer()V

    .line 191
    :cond_16
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "MirrorLink_DAP.handleStart: start DAP host."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    .line 197
    .local v0, "port":I
    new-instance v1, Lcom/lge/mirrorlink/dap/lib/DAPHost;

    iget-object v2, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    invoke-direct {v1, v2, v3, v0}, Lcom/lge/mirrorlink/dap/lib/DAPHost;-><init>(Landroid/content/Context;Lcom/lge/mirrorlink/dap/lib/DAPServer;I)V

    iput-object v1, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    .line 198
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/dap/lib/DAPHost;->startServer()V

    .line 199
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/dap/lib/DAPHost;->getPort()I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    if-eqz v1, :cond_3f

    .line 202
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    invoke-virtual {v1, p1}, Lcom/lge/mirrorlink/dap/lib/DAPServer;->setIPAddress(Ljava/lang/String;)V

    .line 205
    :cond_3f
    return v0
.end method

.method public stopServer()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 233
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "MirrorLink_DAP.handleStart: stop DAP host"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    if-eqz v0, :cond_15

    .line 236
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/lib/DAPHost;->stopServer()V

    .line 237
    iput-object v2, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    .line 240
    :cond_15
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    if-eqz v0, :cond_20

    .line 241
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/lib/DAPServer;->stopServer()V

    .line 242
    iput-object v2, p0, Lcom/lge/mirrorlink/dap/TmDAPServer;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    .line 214
    :cond_20
    return-void
.end method
