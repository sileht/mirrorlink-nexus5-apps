.class public Lcom/lge/systemservice/core/LGDisplayManager;
.super Ljava/lang/Object;
.source "LGDisplayManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LGDisplayManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/lge/systemservice/core/ILGDisplayManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    .line 20
    iput-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/LGDisplayManager;Lcom/lge/systemservice/core/ILGDisplayManager;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/ILGDisplayManager;
    .registers 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    if-nez v0, :cond_23

    .line 28
    const-string v0, "lgdisplay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILGDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    .line 29
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    if-eqz v0, :cond_23

    .line 31
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGDisplayManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/LGDisplayManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/LGDisplayManager$1;-><init>(Lcom/lge/systemservice/core/LGDisplayManager;)V

    .line 34
    const/4 v2, 0x0

    .line 31
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 38
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    return-object v0

    .line 35
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    goto :goto_23
.end method


# virtual methods
.method public setColorConvert(IIFF)Z
    .registers 10
    .param p1, "hue"    # I
    .param p2, "intensity"    # I
    .param p3, "sat"    # F
    .param p4, "contrast"    # F

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDisplayManager;->getService()Lcom/lge/systemservice/core/ILGDisplayManager;

    move-result-object v1

    .line 54
    .local v1, "service":Lcom/lge/systemservice/core/ILGDisplayManager;
    if-eqz v1, :cond_15

    .line 56
    :try_start_7
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/systemservice/core/ILGDisplayManager;->setColorConvert(IIFF)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result v2

    .line 63
    :goto_b
    return v2

    .line 57
    :catch_c
    move-exception v0

    .line 58
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "LGDisplayManager"

    const-string v4, "Error while converting color. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 62
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_15
    const-string v3, "LGDisplayManager"

    const-string v4, "Service Connection is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
