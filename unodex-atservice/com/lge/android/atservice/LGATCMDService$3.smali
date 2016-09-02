.class Lcom/lge/android/atservice/LGATCMDService$3;
.super Ljava/lang/Thread;
.source "LGATCMDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/atservice/LGATCMDService;->onDaemonConnected()V
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
    .line 123
    iput-object p1, p0, Lcom/lge/android/atservice/LGATCMDService$3;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService$3;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-static {v0}, Lcom/lge/android/atservice/LGATCMDService;->-get1(Lcom/lge/android/atservice/LGATCMDService;)Lcom/lge/android/atservice/NativeDaemonConnector;

    move-result-object v0

    const-string/jumbo v1, "atcommand initialize"

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 124
    return-void
.end method
