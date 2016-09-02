.class Lcom/lge/android/atservice/LGATCMDService$4;
.super Ljava/lang/Thread;
.source "LGATCMDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/atservice/LGATCMDService;->sendResponse(Ljava/lang/String;)V
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
    .line 156
    iput-object p1, p0, Lcom/lge/android/atservice/LGATCMDService$4;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 158
    const-string/jumbo v0, "Send Response"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService$4;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-static {v0}, Lcom/lge/android/atservice/LGATCMDService;->-get1(Lcom/lge/android/atservice/LGATCMDService;)Lcom/lge/android/atservice/NativeDaemonConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/android/atservice/LGATCMDService$4;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-static {v1}, Lcom/lge/android/atservice/LGATCMDService;->-get4(Lcom/lge/android/atservice/LGATCMDService;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 157
    return-void
.end method
