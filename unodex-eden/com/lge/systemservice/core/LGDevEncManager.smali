.class public Lcom/lge/systemservice/core/LGDevEncManager;
.super Ljava/lang/Object;
.source "LGDevEncManager.java"


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.devencryption"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/ILGDevEncManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/lge/systemservice/core/LGDevEncManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/LGDevEncManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/LGDevEncManager;Lcom/lge/systemservice/core/ILGDevEncManager;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    return-void
.end method

.method public static getDevEncSupportStatus(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_data_encrypt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private final getService()Lcom/lge/systemservice/core/ILGDevEncManager;
    .registers 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-nez v0, :cond_23

    .line 28
    const-string v0, "lgdevencryption"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILGDevEncManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGDevEncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    .line 29
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-eqz v0, :cond_23

    .line 31
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGDevEncManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/LGDevEncManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/LGDevEncManager$1;-><init>(Lcom/lge/systemservice/core/LGDevEncManager;)V

    .line 34
    const/4 v2, 0x0

    .line 31
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 38
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    return-object v0

    .line 35
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    goto :goto_23
.end method


# virtual methods
.method public activatePhonelock(ILjava/lang/String;)I
    .registers 6
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-nez v1, :cond_a

    .line 157
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDevEncManager;->getService()Lcom/lge/systemservice/core/ILGDevEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    .line 159
    :cond_a
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-eqz v1, :cond_19

    .line 161
    :try_start_e
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/ILGDevEncManager;->activatePhonelock(ILjava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v1

    .line 167
    :goto_14
    return v1

    .line 162
    :catch_15
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 166
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v1, Lcom/lge/systemservice/core/LGDevEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGDevEncManager connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public quicklyencryptStorage(ILjava/lang/String;)I
    .registers 6
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-nez v1, :cond_a

    .line 80
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDevEncManager;->getService()Lcom/lge/systemservice/core/ILGDevEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    .line 82
    :cond_a
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-eqz v1, :cond_19

    .line 84
    :try_start_e
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/ILGDevEncManager;->quicklyencryptStorage(ILjava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v1

    .line 90
    :goto_14
    return v1

    .line 85
    :catch_15
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 89
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v1, Lcom/lge/systemservice/core/LGDevEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGDevEncManager connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public quicklyunencryptStorage(Ljava/lang/String;)I
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-nez v1, :cond_a

    .line 105
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDevEncManager;->getService()Lcom/lge/systemservice/core/ILGDevEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    .line 107
    :cond_a
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-eqz v1, :cond_19

    .line 109
    :try_start_e
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGDevEncManager;->quicklyunencryptStorage(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v1

    .line 115
    :goto_14
    return v1

    .line 110
    :catch_15
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v1, Lcom/lge/systemservice/core/LGDevEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGDevEncManager connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public unencryptStorage(Ljava/lang/String;)I
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-nez v1, :cond_a

    .line 53
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDevEncManager;->getService()Lcom/lge/systemservice/core/ILGDevEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    .line 55
    :cond_a
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-eqz v1, :cond_19

    .line 57
    :try_start_e
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGDevEncManager;->unencryptStorage(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v1

    .line 63
    :goto_14
    return v1

    .line 58
    :catch_15
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v1, Lcom/lge/systemservice/core/LGDevEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGDevEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public unencryptWipeStorage(Ljava/lang/String;)I
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-nez v1, :cond_a

    .line 130
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDevEncManager;->getService()Lcom/lge/systemservice/core/ILGDevEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    .line 132
    :cond_a
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-eqz v1, :cond_19

    .line 134
    :try_start_e
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGDevEncManager;->unencryptWipeStorage(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v1

    .line 140
    :goto_14
    return v1

    .line 135
    :catch_15
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v1, Lcom/lge/systemservice/core/LGDevEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGDevEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, -0x1

    goto :goto_14
.end method
