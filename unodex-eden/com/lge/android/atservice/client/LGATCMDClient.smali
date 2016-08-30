.class public Lcom/lge/android/atservice/client/LGATCMDClient;
.super Ljava/lang/Object;
.source "LGATCMDClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    }
.end annotation


# static fields
.field public static final MAX_LG_COMMAND_SIZE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "LGATCMDClient"


# instance fields
.field private final LGCMD_GET_FACTORY_VERSION:I

.field private mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

.field private mAction:I

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIn:[B

.field private mLock:Ljava/lang/Object;

.field private mOut:[B

.field private mResult:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0xfab

    iput v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->LGCMD_GET_FACTORY_VERSION:I

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/lge/android/atservice/client/LGATCMDClient$1;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/client/LGATCMDClient$1;-><init>(Lcom/lge/android/atservice/client/LGATCMDClient;)V

    iput-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mConnection:Landroid/content/ServiceConnection;

    .line 81
    iput-object p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mContext:Landroid/content/Context;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/lge/android/atservice/client/LGATCMDClient;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/android/atservice/client/LGATCMDClient;Z)V
    .registers 2

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lge/android/atservice/client/LGATCMDClient;Lcom/lge/android/atservice/client/ILGATCMDService;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    return-void
.end method


# virtual methods
.method public bindService()V
    .registers 6

    .prologue
    .line 86
    iget-object v2, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_3
    iget-boolean v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    if-nez v1, :cond_2a

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.lge.android.atservice"

    .line 90
    const-string v4, "com.lge.android.atservice.LGATCMDService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 93
    const-string v1, "LGATCMDClient"

    const-string v3, "Bind service successfully"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2a
    :goto_2a
    monitor-exit v2

    .line 99
    return-void

    .line 95
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2c
    const-string v1, "LGATCMDClient"

    const-string v3, "Bind service fail!!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public checkmBound()Z
    .registers 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_3
    iget-boolean v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    monitor-exit v1

    return v0

    .line 155
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getFactoryVersion()Ljava/lang/String;
    .registers 7

    .prologue
    .line 143
    const/16 v2, 0x1e

    new-array v0, v2, [B

    .line 145
    .local v0, "data":[B
    const/16 v2, 0xfab

    invoke-virtual {p0, v2, v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v1

    .line 147
    .local v1, "rsp":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    if-nez v1, :cond_f

    .line 148
    const-string v2, ""

    .line 151
    :goto_e
    return-object v2

    :cond_f
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    const/4 v4, 0x0

    iget v5, v1, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->length:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    goto :goto_e
.end method

.method public request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    .registers 11
    .param p1, "action"    # I
    .param p2, "in"    # [B

    .prologue
    const/4 v4, 0x0

    .line 110
    const/4 v3, 0x0

    .line 112
    .local v3, "result":[B
    iget-object v5, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    if-nez v5, :cond_7

    .line 138
    :goto_6
    return-object v4

    .line 116
    :cond_7
    iget-object v5, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 117
    :try_start_a
    iget-boolean v6, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_37

    if-eqz v6, :cond_3f

    .line 119
    :try_start_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "data":Landroid/os/Bundle;
    const-string v6, "action"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v6, "data"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 122
    iget-object v6, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    invoke-interface {v6, v0}, Lcom/lge/android/atservice/client/ILGATCMDService;->request(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 123
    .local v2, "response":Landroid/os/Bundle;
    if-eqz v2, :cond_33

    const-string v6, "result"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_33

    .line 124
    const-string v6, "data"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_32} :catch_3a
    .catchall {:try_start_e .. :try_end_32} :catchall_37

    move-result-object v3

    .line 133
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "response":Landroid/os/Bundle;
    :cond_33
    :goto_33
    if-nez v3, :cond_47

    .line 134
    :try_start_35
    monitor-exit v5

    goto :goto_6

    .line 116
    :catchall_37
    move-exception v4

    monitor-exit v5
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_37

    throw v4

    .line 126
    :catch_3a
    move-exception v1

    .line 127
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_33

    .line 130
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3f
    const-string v6, "LGATCMDClient"

    const-string v7, "request: Service is not bound yet!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 116
    :cond_47
    monitor-exit v5
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_37

    .line 138
    new-instance v4, Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    invoke-direct {v4, p0, v3}, Lcom/lge/android/atservice/client/LGATCMDClient$Response;-><init>(Lcom/lge/android/atservice/client/LGATCMDClient;[B)V

    goto :goto_6
.end method

.method public unbindService()V
    .registers 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_3
    iget-boolean v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    if-eqz v0, :cond_e

    .line 104
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 102
    :cond_e
    monitor-exit v1

    .line 107
    return-void

    .line 102
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method
