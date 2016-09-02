.class Lcom/lge/android/atservice/LGATCMDService$6;
.super Ljava/lang/Thread;
.source "LGATCMDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/atservice/LGATCMDService;->SendRequestToDaemon(Lcom/lge/android/atservice/LGCmdRequest;)Lcom/lge/android/atservice/LGCmdResponse;
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
    .line 234
    iput-object p1, p0, Lcom/lge/android/atservice/LGATCMDService$6;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 237
    iget-object v1, p0, Lcom/lge/android/atservice/LGATCMDService$6;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    iget-object v2, p0, Lcom/lge/android/atservice/LGATCMDService$6;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-static {v2}, Lcom/lge/android/atservice/LGATCMDService;->-get0(Lcom/lge/android/atservice/LGATCMDService;)Lcom/lge/android/atservice/NativeConnectionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/android/atservice/LGATCMDService$6;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-static {v3}, Lcom/lge/android/atservice/LGATCMDService;->-get3(Lcom/lge/android/atservice/LGATCMDService;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/android/atservice/NativeConnectionManager;->doExternalRequestCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/android/atservice/LGATCMDService;->-set0(Lcom/lge/android/atservice/LGATCMDService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ResultList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/android/atservice/LGATCMDService$6;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-static {v2}, Lcom/lge/android/atservice/LGATCMDService;->-get5(Lcom/lge/android/atservice/LGATCMDService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 243
    :try_start_36
    invoke-virtual {p0}, Lcom/lge/android/atservice/LGATCMDService$6;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_48

    .line 244
    iget-object v1, p0, Lcom/lge/android/atservice/LGATCMDService$6;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-static {v1}, Lcom/lge/android/atservice/LGATCMDService;->-get6(Lcom/lge/android/atservice/LGATCMDService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_48} :catch_49

    .line 235
    :cond_48
    :goto_48
    return-void

    .line 246
    :catch_49
    move-exception v0

    .line 247
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to putting result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    goto :goto_48
.end method
