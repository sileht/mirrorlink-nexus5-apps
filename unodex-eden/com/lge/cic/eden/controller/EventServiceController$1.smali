.class Lcom/lge/cic/eden/controller/EventServiceController$1;
.super Ljava/lang/Object;
.source "EventServiceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/controller/EventServiceController;->analyzeAsync(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/controller/EventServiceController;

.field private final synthetic val$requestId:J


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/controller/EventServiceController;J)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    iput-wide p2, p0, Lcom/lge/cic/eden/controller/EventServiceController$1;->val$requestId:J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/controller/EventServiceController$1;)Lcom/lge/cic/eden/controller/EventServiceController;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$0(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    const-class v3, Lcom/lge/cic/eden/db/type/TaskInfo;

    sget-object v4, Lcom/lge/cic/eden/db/table/TaskInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TASK_ID = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->val$requestId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 63
    .local v15, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/TaskInfo;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4f

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$1(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "taskInfos size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 120
    :goto_4e
    return-void

    .line 68
    :cond_4f
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/cic/eden/db/type/TaskInfo;

    .line 69
    .local v9, "currentTask":Lcom/lge/cic/eden/db/type/TaskInfo;
    iget v2, v9, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_69

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$1(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    const-string v3, "Task has already completed."

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4e

    .line 74
    :cond_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$1(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    const-string v3, "EventServiceController worker - start event generator"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$2(Lcom/lge/cic/eden/controller/EventServiceController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 76
    .local v11, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "AnalysisWakeLock"

    invoke-virtual {v11, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    .line 79
    .local v16, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-eqz v16, :cond_92

    .line 80
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 82
    :cond_92
    new-instance v10, Lcom/lge/cic/eden/generator/EventGenerator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$2(Lcom/lge/cic/eden/controller/EventServiceController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/lge/cic/eden/generator/EventGenerator;-><init>(Landroid/content/Context;)V

    .line 84
    .local v10, "eventGenerator":Lcom/lge/cic/eden/generator/EventGenerator;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 86
    .local v12, "startTime":J
    const-string v2, "EdenTimer"

    const-string v3, "Clustering Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v2, Lcom/lge/cic/eden/controller/EventServiceController$1$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lge/cic/eden/controller/EventServiceController$1$1;-><init>(Lcom/lge/cic/eden/controller/EventServiceController$1;)V

    invoke-virtual {v10, v2}, Lcom/lge/cic/eden/generator/EventGenerator;->process(Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;)Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    move-result-object v14

    .line 98
    .local v14, "status":Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    invoke-virtual {v10}, Lcom/lge/cic/eden/generator/EventGenerator;->destroy()V

    .line 99
    const-string v2, "EdenTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Clustering End - spent time : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v16, :cond_dc

    .line 102
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 104
    :cond_dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$1(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    const-string v3, "EventServiceController worker - finish event generator"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$1(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  status = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 107
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->COMPLETE:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    if-ne v14, v2, :cond_12f

    .line 108
    const/4 v2, 0x3

    iput v2, v9, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$0(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 118
    :cond_115
    :goto_115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->service:Landroid/app/Service;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$3(Lcom/lge/cic/eden/controller/EventServiceController;)Landroid/app/Service;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Service;->stopSelf()V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$1(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    const-string v3, "EventServiceController worker - finish"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 111
    :cond_12f
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->SHUTDOWN:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    if-eq v14, v2, :cond_115

    .line 113
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->FAILED_GEOCODING:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    if-ne v14, v2, :cond_115

    .line 114
    const/4 v2, 0x4

    iput v2, v9, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v2}, Lcom/lge/cic/eden/controller/EventServiceController;->access$0(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    goto :goto_115
.end method
