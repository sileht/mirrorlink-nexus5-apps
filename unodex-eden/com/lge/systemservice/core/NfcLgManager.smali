.class public Lcom/lge/systemservice/core/NfcLgManager;
.super Ljava/lang/Object;
.source "NfcLgManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "nfcLgService"

.field private static final TAG:Ljava/lang/String; = "NfcLgManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/INfcLgManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/NfcLgManager;Lcom/lge/systemservice/core/INfcLgManager;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/INfcLgManager;
    .registers 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v0, :cond_23

    .line 27
    const-string v0, "nfcLgService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/INfcLgManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 28
    iget-object v0, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v0, :cond_23

    .line 30
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/INfcLgManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/NfcLgManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/NfcLgManager$1;-><init>(Lcom/lge/systemservice/core/NfcLgManager;)V

    .line 33
    const/4 v2, 0x0

    .line 30
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 37
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    return-object v0

    .line 34
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    goto :goto_23
.end method


# virtual methods
.method public createNfcFactoryObj()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v2, :cond_b

    .line 117
    invoke-direct {p0}, Lcom/lge/systemservice/core/NfcLgManager;->getService()Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 121
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v2, :cond_15

    .line 122
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/INfcLgManager;->createNfcFactoryObj()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16

    move-result v1

    .line 131
    :cond_15
    :goto_15
    return v1

    .line 125
    :catch_16
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15
.end method

.method public handleNfcTest(I[B)Ljava/lang/String;
    .registers 8
    .param p1, "command"    # I
    .param p2, "retData"    # [B

    .prologue
    .line 84
    const-string v1, "Fail"

    .line 87
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v2, :cond_c

    .line 88
    invoke-direct {p0}, Lcom/lge/systemservice/core/NfcLgManager;->getService()Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 92
    :cond_c
    :try_start_c
    const-string v2, "NfcLgManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NfcLgManager handleNfcTest::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v2, :cond_49

    .line 94
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INfcLgManager;->handleNfcFactory(I[B)Ljava/lang/String;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_48} :catch_4a

    move-result-object v1

    .line 103
    .end local v1    # "result":Ljava/lang/String;
    :cond_49
    :goto_49
    return-object v1

    .line 97
    .restart local v1    # "result":Ljava/lang/String;
    :catch_4a
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_49
.end method

.method public sendNfcTestCommand(I[B)Z
    .registers 6
    .param p1, "command"    # I
    .param p2, "response"    # [B

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 57
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v2, :cond_b

    .line 58
    invoke-direct {p0}, Lcom/lge/systemservice/core/NfcLgManager;->getService()Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 61
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v2, :cond_15

    .line 62
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INfcLgManager;->sendNfcTestCommand(I[B)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16

    move-result v1

    .line 71
    .end local v1    # "result":Z
    :cond_15
    :goto_15
    return v1

    .line 65
    .restart local v1    # "result":Z
    :catch_16
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15
.end method
