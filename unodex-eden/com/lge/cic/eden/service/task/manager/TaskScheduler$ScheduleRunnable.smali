.class Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;
.super Ljava/lang/Object;
.source "TaskScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/service/task/manager/TaskScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScheduleRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 134
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "A worker of the TaskScheduler is started"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 137
    :goto_7
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_e} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_e} :catch_123
    .catchall {:try_start_7 .. :try_end_e} :catchall_1b5

    move-result v2

    if-eqz v2, :cond_21

    .line 264
    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "A worker of the TaskScheduler is finished"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 267
    :goto_20
    return-void

    .line 138
    :cond_21
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$1(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    const-class v3, Lcom/lge/cic/eden/db/type/TaskInfo;

    sget-object v4, Lcom/lge/cic/eden/db/table/TaskInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "TASK_TYPE = 1"

    const/4 v7, 0x0

    const-string v8, "TASK_NAME ASC"

    invoke-virtual/range {v2 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 139
    .local v18, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/TaskInfo;>;"
    if-eqz v18, :cond_3f

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_93

    .line 140
    :cond_3f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There is no task"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_47} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_47} :catch_123
    .catchall {:try_start_21 .. :try_end_47} :catchall_1b5

    .line 249
    .end local v18    # "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/TaskInfo;>;"
    :catch_47
    move-exception v11

    .line 250
    .local v11, "e":Ljava/lang/IllegalStateException;
    :try_start_48
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A worker of the TaskScheduler has no task : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 253
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v15, "serviceIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v2, "com.lge.cic.eden.service"

    const-string v3, "com.lge.cic.eden.service.EdenService"

    invoke-direct {v9, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v9, "component":Landroid/content/ComponentName;
    invoke-virtual {v15, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 256
    const-string v2, "MSG_TYPE"

    const-string v3, "REQUEST_STOP_MANAGING_SERVICE"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$2(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_83
    .catchall {:try_start_48 .. :try_end_83} :catchall_1b5

    .line 264
    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "A worker of the TaskScheduler is finished"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto :goto_20

    .line 144
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    .end local v15    # "serviceIntent":Landroid/content/Intent;
    .restart local v18    # "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/TaskInfo;>;"
    :cond_93
    :try_start_93
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Task Num : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 145
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/db/type/TaskInfo;

    .line 146
    .local v10, "currentTask":Lcom/lge/cic/eden/db/type/TaskInfo;
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Current Task] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v10}, Lcom/lge/cic/eden/db/type/TaskInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_154

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$1(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->deleteTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 152
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current Task is invalid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_121
    .catch Ljava/lang/IllegalStateException; {:try_start_93 .. :try_end_121} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_93 .. :try_end_121} :catch_123
    .catchall {:try_start_93 .. :try_end_121} :catchall_1b5

    goto/16 :goto_7

    .line 259
    .end local v10    # "currentTask":Lcom/lge/cic/eden/db/type/TaskInfo;
    .end local v18    # "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/TaskInfo;>;"
    :catch_123
    move-exception v11

    .line 260
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_124
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A worker of the TaskScheduler is interrupted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_143
    .catchall {:try_start_124 .. :try_end_143} :catchall_1b5

    .line 264
    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "A worker of the TaskScheduler is finished"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 155
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .restart local v10    # "currentTask":Lcom/lge/cic/eden/db/type/TaskInfo;
    .restart local v18    # "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/TaskInfo;>;"
    :cond_154
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    :try_start_157
    invoke-static {v2, v3, v4}, Ljava/lang/Thread;->sleep(JI)V

    .line 171
    iget-object v14, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    .line 172
    .local v14, "prevTaskName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 173
    .local v13, "nDuplicatedCount":I
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_15e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v12, v2, :cond_1c6

    .line 202
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  currentTask\'s status = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 203
    iget v2, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    packed-switch v2, :pswitch_data_350

    .line 243
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This task has abnormal status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 246
    :cond_1ad
    :goto_1ad
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1b3
    .catch Ljava/lang/IllegalStateException; {:try_start_157 .. :try_end_1b3} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_157 .. :try_end_1b3} :catch_123
    .catchall {:try_start_157 .. :try_end_1b3} :catchall_1b5

    goto/16 :goto_7

    .line 263
    .end local v10    # "currentTask":Lcom/lge/cic/eden/db/type/TaskInfo;
    .end local v12    # "i":I
    .end local v13    # "nDuplicatedCount":I
    .end local v14    # "prevTaskName":Ljava/lang/String;
    .end local v18    # "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/TaskInfo;>;"
    :catchall_1b5
    move-exception v2

    .line 264
    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    sget-object v3, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "A worker of the TaskScheduler is finished"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 266
    throw v2

    .line 174
    .restart local v10    # "currentTask":Lcom/lge/cic/eden/db/type/TaskInfo;
    .restart local v12    # "i":I
    .restart local v13    # "nDuplicatedCount":I
    .restart local v14    # "prevTaskName":Ljava/lang/String;
    .restart local v18    # "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/TaskInfo;>;"
    :cond_1c6
    :try_start_1c6
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/db/type/TaskInfo;

    .line 175
    .local v17, "taskInfo":Lcom/lge/cic/eden/db/type/TaskInfo;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21e

    .line 176
    add-int/lit8 v13, v13, 0x1

    .line 182
    :goto_1da
    const/4 v2, 0x1

    if-le v13, v2, :cond_21a

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$1(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->deleteTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 184
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteTask - duplicated task id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,nDuplicatedCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 173
    :cond_21a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_15e

    .line 178
    :cond_21e
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    .line 179
    const/4 v13, 0x0

    goto :goto_1da

    .line 206
    .end local v17    # "taskInfo":Lcom/lge/cic/eden/db/type/TaskInfo;
    :pswitch_224
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This task is ready or has already been started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$2(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v3}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$1(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/lge/cic/eden/service/task/manager/TaskFactory;->makeTask(Lcom/lge/cic/eden/db/type/TaskInfo;Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/service/task/Task;

    move-result-object v16

    .line 209
    .local v16, "task":Lcom/lge/cic/eden/service/task/Task;
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ljava/lang/Thread;->sleep(JI)V

    .line 210
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lcom/lge/cic/eden/service/task/Task;->processing(Lcom/lge/cic/eden/db/type/TaskInfo;)V

    goto/16 :goto_1ad

    .line 215
    .end local v16    # "task":Lcom/lge/cic/eden/service/task/Task;
    :pswitch_273
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This task is completed and removed in TaskInfoTable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$1(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->deleteTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$2(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v3}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$1(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/lge/cic/eden/service/task/manager/TaskFactory;->makeTask(Lcom/lge/cic/eden/db/type/TaskInfo;Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/service/task/Task;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/service/task/Task;->onComplete()V

    goto/16 :goto_1ad

    .line 223
    :pswitch_2c5
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This task is incompleted and removed in TaskInfoTable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$1(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->deleteTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    goto/16 :goto_1ad

    .line 231
    :pswitch_300
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This task is pending and removed in TaskInfoTable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 234
    iget-object v2, v10, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v3, "4-EVENT_CLUSTERING_TASK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ad

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$1(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->deleteTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    # getter for: Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->access$2(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/cic/eden/alarm/EdenRetryHelper;->retryPendingTask(Landroid/content/Context;)V
    :try_end_34e
    .catch Ljava/lang/IllegalStateException; {:try_start_1c6 .. :try_end_34e} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_1c6 .. :try_end_34e} :catch_123
    .catchall {:try_start_1c6 .. :try_end_34e} :catchall_1b5

    goto/16 :goto_1ad

    .line 203
    :pswitch_data_350
    .packed-switch 0x1
        :pswitch_224
        :pswitch_224
        :pswitch_273
        :pswitch_2c5
        :pswitch_300
    .end packed-switch
.end method
