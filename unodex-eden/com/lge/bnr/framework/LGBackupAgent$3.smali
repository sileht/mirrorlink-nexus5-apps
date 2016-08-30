.class Lcom/lge/bnr/framework/LGBackupAgent$3;
.super Ljava/lang/Thread;
.source "LGBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/framework/LGBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bnr/framework/LGBackupAgent;


# direct methods
.method constructor <init>(Lcom/lge/bnr/framework/LGBackupAgent;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    .line 193
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->runTask()V
    invoke-static {v0}, Lcom/lge/bnr/framework/LGBackupAgent;->access$7(Lcom/lge/bnr/framework/LGBackupAgent;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 199
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->endTask()V
    invoke-static {v0}, Lcom/lge/bnr/framework/LGBackupAgent;->access$6(Lcom/lge/bnr/framework/LGBackupAgent;)V

    .line 201
    return-void

    .line 198
    :catchall_b
    move-exception v0

    .line 199
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->endTask()V
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$6(Lcom/lge/bnr/framework/LGBackupAgent;)V

    .line 200
    throw v0
.end method
