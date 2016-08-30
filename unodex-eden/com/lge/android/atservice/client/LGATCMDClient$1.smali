.class Lcom/lge/android/atservice/client/LGATCMDClient$1;
.super Ljava/lang/Object;
.source "LGATCMDClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/client/LGATCMDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/client/LGATCMDClient;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/client/LGATCMDClient;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 64
    const-string v0, "LGATCMDClient"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    # getter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$0(Lcom/lge/android/atservice/client/LGATCMDClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_e
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$1(Lcom/lge/android/atservice/client/LGATCMDClient;Z)V

    .line 67
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-static {p2}, Lcom/lge/android/atservice/client/ILGATCMDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/android/atservice/client/ILGATCMDService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$2(Lcom/lge/android/atservice/client/LGATCMDClient;Lcom/lge/android/atservice/client/ILGATCMDService;)V

    .line 65
    monitor-exit v1

    .line 69
    return-void

    .line 65
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 72
    const-string v0, "LGATCMDClient"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    # getter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$0(Lcom/lge/android/atservice/client/LGATCMDClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_e
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$2(Lcom/lge/android/atservice/client/LGATCMDClient;Lcom/lge/android/atservice/client/ILGATCMDService;)V

    .line 75
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$1(Lcom/lge/android/atservice/client/LGATCMDClient;Z)V

    .line 73
    monitor-exit v1

    .line 77
    return-void

    .line 73
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v0
.end method
