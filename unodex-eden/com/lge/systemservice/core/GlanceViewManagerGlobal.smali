.class public Lcom/lge/systemservice/core/GlanceViewManagerGlobal;
.super Ljava/lang/Object;
.source "GlanceViewManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;,
        Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;


# instance fields
.field private mCallback:Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;

.field private mContext:Landroid/content/Context;

.field private mGlanceViewManager:Lcom/lge/systemservice/core/IGlanceViewManager;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lge/systemservice/core/IGlanceViewManager;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glanceViewManager"    # Lcom/lge/systemservice/core/IGlanceViewManager;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mLock:Ljava/lang/Object;

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mListeners:Ljava/util/ArrayList;

    .line 41
    :try_start_11
    iput-object p1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mGlanceViewManager:Lcom/lge/systemservice/core/IGlanceViewManager;

    .line 43
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mGlanceViewManager:Lcom/lge/systemservice/core/IGlanceViewManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/IGlanceViewManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$1;

    invoke-direct {v3, p0}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$1;-><init>(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;)V

    .line 50
    const/4 v4, 0x0

    .line 43
    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 52
    sget-boolean v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z

    if-eqz v2, :cond_a8

    .line 53
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_a8

    .line 54
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 55
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_a8

    .line 56
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mContext: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mContext.processName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Binder.getCallingPid(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Binder.getCallingUid(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Process.myPid(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_a8} :catch_df

    .line 66
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_a8
    :try_start_a8
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.lge.glanceview"

    const-string v6, "com.lge.glanceview.GlanceViewService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_bf} :catch_d6
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_bf} :catch_df

    .line 75
    :goto_bf
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GlanceViewManagerGlobal created, mGlanceViewManager: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mGlanceViewManager:Lcom/lge/systemservice/core/IGlanceViewManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 67
    :catch_d6
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_d7
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start GlanceViewService"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_de} :catch_df

    goto :goto_bf

    .line 70
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_df
    move-exception v0

    .line 71
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    const-string v3, "Failed to connect to GlanceViewManagerService"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mGlanceViewManager:Lcom/lge/systemservice/core/IGlanceViewManager;

    goto :goto_bf
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;II)V
    .registers 3

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->handleVisibilityChanged(II)V

    return-void
.end method

.method static synthetic access$3(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;Lcom/lge/systemui/GlanceViewStatusBar;)V
    .registers 2

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->handleUpdateStatusBar(Lcom/lge/systemui/GlanceViewStatusBar;)V

    return-void
.end method

.method static synthetic access$4(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;Lcom/lge/systemservice/core/IGlanceViewManager;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mGlanceViewManager:Lcom/lge/systemservice/core/IGlanceViewManager;

    return-void
.end method

.method static synthetic access$5(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;)V
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->sInstance:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    return-void
.end method

.method private findGlanceViewListenerLocked(Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;)I
    .registers 5
    .param p1, "listener"    # Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;

    .prologue
    .line 149
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 150
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-lt v0, v1, :cond_b

    .line 156
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_a
    return v0

    .line 151
    .restart local v0    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;

    iget-object v2, v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->mListener:Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;

    if-eq v2, p1, :cond_a

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/systemservice/core/GlanceViewManagerGlobal;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-class v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    monitor-enter v2

    .line 80
    :try_start_3
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->sInstance:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    if-nez v1, :cond_1a

    .line 81
    const-string v1, "glanceview"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1a

    .line 83
    new-instance v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    invoke-static {v0}, Lcom/lge/systemservice/core/IGlanceViewManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IGlanceViewManager;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;-><init>(Landroid/content/Context;Lcom/lge/systemservice/core/IGlanceViewManager;)V

    sput-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->sInstance:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    .line 87
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_1a
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->sInstance:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    if-nez v1, :cond_25

    .line 88
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    const-string v3, "GlanceViewManagerGlobal.getInstance() is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_25
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->sInstance:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    monitor-exit v2

    return-object v1

    .line 79
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private handleUpdateStatusBar(Lcom/lge/systemui/GlanceViewStatusBar;)V
    .registers 7
    .param p1, "statusBar"    # Lcom/lge/systemui/GlanceViewStatusBar;

    .prologue
    .line 201
    sget-boolean v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z

    if-eqz v2, :cond_1e

    .line 202
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleUpdateStatusBar("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1e
    iget-object v3, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 206
    :try_start_21
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 207
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    if-lt v0, v1, :cond_2c

    .line 205
    monitor-exit v3

    .line 211
    return-void

    .line 208
    :cond_2c
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;

    invoke-virtual {v2, p1}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->updateStatusBar(Lcom/lge/systemui/GlanceViewStatusBar;)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 205
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method private handleVisibilityChanged(II)V
    .registers 8
    .param p1, "visibility"    # I
    .param p2, "mode"    # I

    .prologue
    .line 188
    sget-boolean v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z

    if-eqz v2, :cond_28

    .line 189
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleVisibilityChanged("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_28
    iget-object v3, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 193
    :try_start_2b
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 194
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    if-lt v0, v1, :cond_36

    .line 192
    monitor-exit v3

    .line 198
    return-void

    .line 195
    :cond_36
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;

    invoke-virtual {v2, p1, p2}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->setVisibility(II)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 192
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :catchall_44
    move-exception v2

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_44

    throw v2
.end method

.method private registerCallbackIfNeededLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 114
    sget-boolean v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 115
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    const-string v2, "registerCallbackIfNeededLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_c
    iget-object v1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mCallback:Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;

    if-nez v1, :cond_1e

    .line 119
    new-instance v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;

    invoke-direct {v1, p0, v3}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;-><init>(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;)V

    iput-object v1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mCallback:Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;

    .line 121
    :try_start_17
    iget-object v1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mGlanceViewManager:Lcom/lge/systemservice/core/IGlanceViewManager;

    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mCallback:Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;

    invoke-interface {v1, v2}, Lcom/lge/systemservice/core/IGlanceViewManager;->registerCallback(Lcom/lge/systemservice/core/IGlanceViewManagerCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 127
    :cond_1e
    :goto_1e
    return-void

    .line 122
    :catch_1f
    move-exception v0

    .line 123
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register callback with GlanceViewManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    iput-object v3, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mCallback:Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;

    goto :goto_1e
.end method


# virtual methods
.method public registerGlanceViewListener(Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;Landroid/os/Handler;)V
    .registers 8
    .param p1, "listener"    # Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 96
    if-nez p1, :cond_a

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_a
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_d
    sget-boolean v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z

    if-eqz v1, :cond_35

    .line 102
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerGlanceViewListener("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_35
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->findGlanceViewListenerLocked(Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;)I

    move-result v0

    .line 106
    .local v0, "index":I
    if-gez v0, :cond_48

    .line 107
    iget-object v1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;

    invoke-direct {v3, p1, p2}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;-><init>(Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-direct {p0}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 100
    :cond_48
    monitor-exit v2

    .line 111
    return-void

    .line 100
    .end local v0    # "index":I
    :catchall_4a
    move-exception v1

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public setVisibility(II)V
    .registers 8
    .param p1, "visibility"    # I
    .param p2, "mode"    # I

    .prologue
    .line 160
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 161
    :try_start_3
    sget-boolean v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z

    if-eqz v1, :cond_2b

    .line 162
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setVisibility("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_58

    .line 166
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mGlanceViewManager:Lcom/lge/systemservice/core/IGlanceViewManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IGlanceViewManager;->setVisibility(II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_32
    .catchall {:try_start_2b .. :try_end_30} :catchall_58

    .line 160
    :goto_30
    :try_start_30
    monitor-exit v2

    .line 171
    return-void

    .line 167
    :catch_32
    move-exception v0

    .line 168
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to setVisibility("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 160
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_58
    move-exception v1

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_30 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public unregisterGlanceViewListener(Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;

    .prologue
    .line 130
    if-nez p1, :cond_a

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_a
    iget-object v3, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 135
    :try_start_d
    sget-boolean v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z

    if-eqz v2, :cond_2b

    .line 136
    sget-object v2, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unregisterGlanceViewListener("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2b
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->findGlanceViewListenerLocked(Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;)I

    move-result v1

    .line 140
    .local v1, "index":I
    if-ltz v1, :cond_41

    .line 141
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;

    .line 142
    .local v0, "d":Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;
    invoke-virtual {v0}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->clearEvents()V

    .line 143
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 134
    .end local v0    # "d":Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;
    :cond_41
    monitor-exit v3

    .line 146
    return-void

    .line 134
    .end local v1    # "index":I
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_d .. :try_end_45} :catchall_43

    throw v2
.end method

.method public updateStatusBar(Lcom/lge/systemui/GlanceViewStatusBar;)V
    .registers 7
    .param p1, "statusBar"    # Lcom/lge/systemui/GlanceViewStatusBar;

    .prologue
    .line 174
    iget-object v2, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 175
    :try_start_3
    sget-boolean v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z

    if-eqz v1, :cond_21

    .line 176
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateStatusBar("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_44

    .line 180
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->mGlanceViewManager:Lcom/lge/systemservice/core/IGlanceViewManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IGlanceViewManager;->updateStatusBar(Lcom/lge/systemui/GlanceViewStatusBar;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_28
    .catchall {:try_start_21 .. :try_end_26} :catchall_44

    .line 174
    :goto_26
    :try_start_26
    monitor-exit v2

    .line 185
    return-void

    .line 181
    :catch_28
    move-exception v0

    .line 182
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to updateStatusBar("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 174
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_44

    throw v1
.end method
