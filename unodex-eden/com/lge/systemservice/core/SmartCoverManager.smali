.class public Lcom/lge/systemservice/core/SmartCoverManager;
.super Ljava/lang/Object;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;,
        Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;,
        Lcom/lge/systemservice/core/SmartCoverManager$FolderCallback;,
        Lcom/lge/systemservice/core/SmartCoverManager$PenCallback;,
        Lcom/lge/systemservice/core/SmartCoverManager$SubCoverCallback;
    }
.end annotation


# static fields
.field public static final COVER_CLOSED:I = 0x1

.field public static final COVER_EVENT:I = 0x1

.field public static final COVER_HALF_OPENED:I = 0x2

.field public static final COVER_LOWER_CLOSED:I = 0x4

.field public static final COVER_OPENED:I = 0x0

.field public static final COVER_TYPE_CIRCLE:I = 0x3

.field public static final COVER_TYPE_COVER:I = 0x0

.field public static final COVER_TYPE_DISNEY:I = 0x6

.field public static final COVER_TYPE_HALF_LOLLIPOP:I = 0x7

.field public static final COVER_TYPE_LOLLIPOP:I = 0x2

.field public static final COVER_TYPE_NONE:I = 0x5

.field public static final COVER_TYPE_SLIDE:I = 0x4

.field public static final COVER_TYPE_TRANSLUCENCE:I = 0x8

.field public static final COVER_TYPE_VIEW:I = 0x1

.field public static final COVER_UPPER_CLOSED:I = 0x3

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.smartcover"

.field public static final FOLDER_CLOSED:I = 0x1

.field public static final FOLDER_EVENT:I = 0x4

.field public static final FOLDER_OPENED:I = 0x0

.field public static final PEN_DETACHED:I = 0x0

.field public static final PEN_DOCKED:I = 0x1

.field public static final PEN_EVENT:I = 0x2

.field public static final SUBCOVER_EVENT:I = 0x3

.field public static final SUBCOVER_TYPE_NONE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

.field private mService:Lcom/lge/systemservice/core/ISmartCoverManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/lge/systemservice/core/SmartCoverManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;-><init>(Lcom/lge/systemservice/core/SmartCoverManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/SmartCoverManager;)Lcom/lge/systemservice/core/ISmartCoverManager;
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final getService()Lcom/lge/systemservice/core/ISmartCoverManager;
    .registers 5

    .prologue
    .line 66
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_30

    .line 67
    :cond_10
    const-string v1, "smartcover"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    .line 68
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    if-eqz v1, :cond_30

    .line 70
    :try_start_24
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_30} :catch_33

    .line 76
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    return-object v1

    .line 71
    :catch_33
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method


# virtual methods
.method public enforceUpdateSmartCoverOpen()V
    .registers 5

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v1

    .line 96
    .local v1, "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    if-eqz v1, :cond_1c

    .line 98
    :try_start_6
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    const-string v3, "enforceUpdateSmartCoverOpen()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-interface {v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->enforceUpdateSmartCoverOpen()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    .line 106
    :goto_10
    return-void

    .line 100
    :catch_11
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t enforceUpdateSmartCoverOpen()!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getCoverState()I
    .registers 5

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v1

    .line 110
    .local v1, "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    if-eqz v1, :cond_15

    .line 112
    :try_start_6
    invoke-interface {v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->getCoverState()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v2

    .line 118
    :goto_a
    return v2

    .line 113
    :catch_b
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get cover type!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getCoverType()I
    .registers 5

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v1

    .line 123
    .local v1, "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    if-eqz v1, :cond_15

    .line 125
    :try_start_6
    invoke-interface {v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->getCoverType()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v2

    .line 131
    :goto_a
    return v2

    .line 126
    :catch_b
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get cover type!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v2, 0x5

    goto :goto_a
.end method

.method public getSubCoverType()I
    .registers 5

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v1

    .line 136
    .local v1, "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    if-eqz v1, :cond_15

    .line 138
    :try_start_6
    invoke-interface {v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->getSubCoverType()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v2

    .line 144
    :goto_a
    return v2

    .line 139
    :catch_b
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get sub cover type!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z
    .registers 3
    .param p1, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    if-eqz v0, :cond_b

    .line 81
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    # invokes: Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->register(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z
    invoke-static {v0, p1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->access$0(Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v0

    .line 83
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public unRegisterCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;)V
    .registers 3
    .param p1, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    # invokes: Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->unRegister(Lcom/lge/systemservice/core/ISmartCoverCallback;)V
    invoke-static {v0, p1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->access$1(Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;Lcom/lge/systemservice/core/ISmartCoverCallback;)V

    .line 90
    :cond_9
    return-void
.end method
