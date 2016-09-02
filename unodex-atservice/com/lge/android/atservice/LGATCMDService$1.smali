.class Lcom/lge/android/atservice/LGATCMDService$1;
.super Lcom/lge/android/atservice/client/ILGATCMDService$Stub;
.source "LGATCMDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/LGATCMDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/LGATCMDService;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/LGATCMDService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/LGATCMDService;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/android/atservice/LGATCMDService$1;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {p0}, Lcom/lge/android/atservice/client/ILGATCMDService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "req"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "ret":Landroid/os/Bundle;
    sget-object v2, Lcom/lge/android/atservice/LGATCMDService;->mLock:Lcom/lge/android/atservice/LGATCMDService$TheLock;

    monitor-enter v2

    .line 55
    :try_start_4
    iget-object v1, p0, Lcom/lge/android/atservice/LGATCMDService$1;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-static {v1}, Lcom/lge/android/atservice/LGATCMDService;->-get2(Lcom/lge/android/atservice/LGATCMDService;)Lcom/lge/android/atservice/LGATCMDServiceRequest;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 56
    const-string/jumbo v1, "Request from remote!!"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/lge/android/atservice/LGATCMDService$1;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-static {v1}, Lcom/lge/android/atservice/LGATCMDService;->-get2(Lcom/lge/android/atservice/LGATCMDService;)Lcom/lge/android/atservice/LGATCMDServiceRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/android/atservice/LGATCMDServiceRequest;->request(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1e

    move-result-object v0

    .end local v0    # "ret":Landroid/os/Bundle;
    :cond_1c
    monitor-exit v2

    .line 61
    return-object v0

    .line 53
    .restart local v0    # "ret":Landroid/os/Bundle;
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method
