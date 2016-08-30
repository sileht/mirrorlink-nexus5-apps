.class public Lcom/lge/systemservice/core/FeliCaManager;
.super Ljava/lang/Object;
.source "FeliCaManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "FeliCaService"

.field private static final TAG:Ljava/lang/String; = "FeliCaManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/IFeliCaManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/FeliCaManager;Lcom/lge/systemservice/core/IFeliCaManager;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IFeliCaManager;
    .registers 5

    .prologue
    .line 33
    iget-object v1, p0, Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;

    if-nez v1, :cond_23

    .line 34
    const-string v1, "FeliCaService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;

    .line 36
    iget-object v1, p0, Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;

    if-eqz v1, :cond_23

    .line 38
    :try_start_14
    iget-object v1, p0, Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/IFeliCaManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/FeliCaManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/FeliCaManager$1;-><init>(Lcom/lge/systemservice/core/FeliCaManager;)V

    .line 41
    const/4 v3, 0x0

    .line 38
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 45
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;

    return-object v1

    .line 42
    .restart local v0    # "b":Landroid/os/IBinder;
    :catch_26
    move-exception v1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;

    goto :goto_23
.end method


# virtual methods
.method public cmdEXTIDM([B)Z
    .registers 5
    .param p1, "idm"    # [B

    .prologue
    .line 59
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdEXTIDM is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdEXTIDM([B)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 66
    :goto_f
    return v1

    .line 63
    :catch_10
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdEXTIDM is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 66
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public cmdFreqCalRange([Ljava/lang/String;)Z
    .registers 5
    .param p1, "response"    # [Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalRange is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdFreqCalRange([Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 180
    :goto_f
    return v1

    .line 177
    :catch_10
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalRange is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 180
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public cmdFreqCalRead([Ljava/lang/String;)Z
    .registers 5
    .param p1, "response"    # [Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalRead is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdFreqCalRead([Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 157
    :goto_f
    return v1

    .line 154
    :catch_10
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalRead is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public cmdFreqCalWrite(F)Z
    .registers 5
    .param p1, "freq"    # F

    .prologue
    .line 126
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalWrite is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdFreqCalWrite(F)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 133
    :goto_f
    return v1

    .line 130
    :catch_10
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalWrite is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 133
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public cmdIDM([Ljava/lang/String;)Z
    .registers 5
    .param p1, "response"    # [Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdIDM is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdIDM([Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 88
    :goto_f
    return v1

    .line 85
    :catch_10
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdIDM is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public cmdRFIDCK()I
    .registers 4

    .prologue
    .line 102
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFIDCK is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdRFIDCK()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 109
    :goto_f
    return v1

    .line 106
    :catch_10
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFIDCK is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 109
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public cmdRFRegCalCheck()Z
    .registers 4

    .prologue
    .line 287
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFRegCalCheck is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdRFRegCalCheck()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 295
    :goto_f
    return v1

    .line 291
    :catch_10
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFRegCalCheck is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 295
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public cmdRFRegCalLoad()Z
    .registers 4

    .prologue
    .line 266
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFRegCalLoad is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdRFRegCalLoad()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 274
    :goto_f
    return v1

    .line 270
    :catch_10
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFRegCalLoad is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 274
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public cmdSwitchRange([Ljava/lang/String;)Z
    .registers 5
    .param p1, "response"    # [Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchRange is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdSwitchRange([Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 204
    :goto_f
    return v1

    .line 201
    :catch_10
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchRange is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 204
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public cmdSwitchRead([Ljava/lang/String;)Z
    .registers 5
    .param p1, "response"    # [Ljava/lang/String;

    .prologue
    .line 245
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchRead is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdSwitchRead([Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 252
    :goto_f
    return v1

    .line 249
    :catch_10
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchRead is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 252
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public cmdSwitchWrite(I)Z
    .registers 5
    .param p1, "idx"    # I

    .prologue
    .line 221
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchWrite is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdSwitchWrite(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 228
    :goto_f
    return v1

    .line 225
    :catch_10
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchWrite is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 228
    const/4 v1, 0x0

    goto :goto_f
.end method
