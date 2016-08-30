.class Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;
.super Ljava/lang/Thread;
.source "DockWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/dockservice/DockWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientWatcherThread"
.end annotation


# instance fields
.field private stopWatching:Z

.field final synthetic this$0:Lcom/lge/dockservice/DockWindowService;


# direct methods
.method private constructor <init>(Lcom/lge/dockservice/DockWindowService;)V
    .registers 3

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->stopWatching:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;)V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;-><init>(Lcom/lge/dockservice/DockWindowService;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized requestStop()V
    .registers 2

    .prologue
    .line 188
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->stopWatching:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 189
    monitor-exit p0

    return-void

    .line 188
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 24

    .prologue
    .line 99
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->stopWatching:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 185
    return-void

    .line 101
    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v10, "runningAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->this$0:Lcom/lge/dockservice/DockWindowService;

    move-object/from16 v18, v0

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 104
    .local v2, "am":Landroid/app/ActivityManager;
    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 110
    .local v9, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v16

    .line 112
    .local v16, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v9, :cond_2e

    if-nez v16, :cond_38

    .line 113
    :cond_2e
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Cannot get  RunningAppProcessInfo or RunningTaskInfo."

    invoke-static/range {v18 .. v19}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_38
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_85

    .line 122
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_46
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_95

    .line 135
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v7, "orphanList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->this$0:Lcom/lge/dockservice/DockWindowService;

    move-object/from16 v18, v0

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static/range {v18 .. v18}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v17

    .line 140
    .local v17, "tempDockViewList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_63
    :goto_63
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_c6

    .line 152
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-eqz v18, :cond_79

    .line 155
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_73
    :goto_73
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_eb

    .line 180
    :cond_79
    const-wide/16 v18, 0x5dc

    :try_start_7b
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_0

    .line 181
    :catch_7f
    move-exception v4

    .line 182
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 117
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "orphanList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "tempDockViewList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    :cond_85
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 118
    .local v8, "pid":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 122
    .end local v8    # "pid":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_95
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 123
    .local v15, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_bc

    .line 125
    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 130
    :cond_bc
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Exception : taskInfo.topActivity == null"

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 140
    .end local v15    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v7    # "orphanList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "tempDockViewList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    :cond_c6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 141
    .local v3, "clientName":Ljava/lang/String;
    const/4 v5, 0x1

    .line 142
    .local v5, "i_am_orphan":Z
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_d1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_dd

    .line 148
    :goto_d7
    if-eqz v5, :cond_63

    .line 149
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 142
    :cond_dd
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 143
    .local v13, "taskActivityName":Ljava/lang/String;
    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_d1

    .line 144
    const/4 v5, 0x0

    .line 145
    goto :goto_d7

    .line 155
    .end local v3    # "clientName":Ljava/lang/String;
    .end local v5    # "i_am_orphan":Z
    .end local v13    # "taskActivityName":Ljava/lang/String;
    :cond_eb
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 156
    .local v6, "orphanClientName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->this$0:Lcom/lge/dockservice/DockWindowService;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static/range {v19 .. v19}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 157
    .local v12, "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    if-eqz v12, :cond_73

    .line 158
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "ClientWatcher found that "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 160
    const-string v21, " is lost in running process list.. "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 161
    const-string v21, "remove it from dock view list accordingly."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 158
    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v14, 0x0

    .line 164
    .local v14, "taskCount":I
    const/16 v19, 0x64

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .line 165
    .local v11, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v11, :cond_13e

    .line 166
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_138
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_143

    .line 174
    :cond_13e
    invoke-virtual {v12}, Lcom/lge/dockservice/DockWindowService$DockView;->killdock()V

    goto/16 :goto_73

    .line 166
    :cond_143
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 167
    .restart local v15    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "#"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": taskInfo.baseActivity = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 168
    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 167
    invoke-static/range {v20 .. v21}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "#"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": taskInfo.topActivity = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 170
    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 169
    invoke-static/range {v20 .. v21}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_138
.end method
