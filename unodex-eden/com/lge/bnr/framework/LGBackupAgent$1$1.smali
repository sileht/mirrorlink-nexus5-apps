.class Lcom/lge/bnr/framework/LGBackupAgent$1$1;
.super Ljava/lang/Object;
.source "LGBackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/bnr/framework/LGBackupAgent$1;->StartBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/bnr/framework/LGBackupAgent$1;


# direct methods
.method constructor <init>(Lcom/lge/bnr/framework/LGBackupAgent$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent$1$1;->this$1:Lcom/lge/bnr/framework/LGBackupAgent$1;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 91
    :try_start_0
    const-string v0, "LGBackupAgent"

    const-string v1, "called StartBackup by remote"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_11

    .line 96
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$1$1;->this$1:Lcom/lge/bnr/framework/LGBackupAgent$1;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent$1;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;
    invoke-static {v0}, Lcom/lge/bnr/framework/LGBackupAgent$1;->access$0(Lcom/lge/bnr/framework/LGBackupAgent$1;)Lcom/lge/bnr/framework/LGBackupAgent;

    move-result-object v0

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->stopBNRService()V
    invoke-static {v0}, Lcom/lge/bnr/framework/LGBackupAgent;->access$0(Lcom/lge/bnr/framework/LGBackupAgent;)V

    .line 98
    return-void

    .line 95
    :catchall_11
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$1$1;->this$1:Lcom/lge/bnr/framework/LGBackupAgent$1;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent$1;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent$1;->access$0(Lcom/lge/bnr/framework/LGBackupAgent$1;)Lcom/lge/bnr/framework/LGBackupAgent;

    move-result-object v1

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->stopBNRService()V
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$0(Lcom/lge/bnr/framework/LGBackupAgent;)V

    .line 97
    throw v0
.end method
