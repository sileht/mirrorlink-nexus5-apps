.class Lcom/lge/dockservice/DockWindowService$4;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/dockservice/DockWindowService;

.field private final synthetic val$requester:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$4;->val$requester:Ljava/lang/String;

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 882
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "exit low profile for "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v14}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;
    invoke-static {v12}, Lcom/lge/dockservice/DockWindowService;->access$15(Lcom/lge/dockservice/DockWindowService;)Ljava/util/Set;

    move-result-object v13

    monitor-enter v13

    .line 884
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;
    invoke-static {v12}, Lcom/lge/dockservice/DockWindowService;->access$15(Lcom/lge/dockservice/DockWindowService;)Ljava/util/Set;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService$4;->val$requester:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 885
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    .line 888
    .local v4, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;
    invoke-static {v12}, Lcom/lge/dockservice/DockWindowService;->access$15(Lcom/lge/dockservice/DockWindowService;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_ae

    .line 889
    const-string v12, "activity"

    invoke-virtual {v4, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 890
    .local v2, "am":Landroid/app/ActivityManager;
    if-nez v2, :cond_58

    .line 891
    monitor-exit v13

    .line 942
    .end local v2    # "am":Landroid/app/ActivityManager;
    :goto_57
    return-void

    .line 893
    .restart local v2    # "am":Landroid/app/ActivityManager;
    :cond_58
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 894
    .local v9, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v9, :cond_63

    .line 895
    monitor-exit v13

    goto :goto_57

    .line 883
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v4    # "context":Landroid/content/Context;
    .end local v9    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catchall_60
    move-exception v12

    monitor-exit v13
    :try_end_62
    .catchall {:try_start_2b .. :try_end_62} :catchall_60

    throw v12

    .line 897
    .restart local v2    # "am":Landroid/app/ActivityManager;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v9    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_63
    :try_start_63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 898
    .local v1, "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_cf

    .line 904
    const-string v12, "phone"

    invoke-virtual {v4, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 905
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    .line 906
    .local v3, "callState":I
    if-eqz v3, :cond_85

    .line 907
    const-string v12, "phone"

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_85
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 913
    .local v10, "removeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;
    invoke-static {v12}, Lcom/lge/dockservice/DockWindowService;->access$15(Lcom/lge/dockservice/DockWindowService;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 915
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;
    invoke-static {v12}, Lcom/lge/dockservice/DockWindowService;->access$15(Lcom/lge/dockservice/DockWindowService;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a1
    :goto_a1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_e7

    .line 921
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-static {v12, v10}, Lcom/lge/dockservice/DockWindowService;->access$16(Lcom/lge/dockservice/DockWindowService;Ljava/util/Set;)V

    .line 924
    .end local v1    # "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "callState":I
    .end local v9    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v10    # "removeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_ae
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;
    invoke-static {v12}, Lcom/lge/dockservice/DockWindowService;->access$15(Lcom/lge/dockservice/DockWindowService;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_13d

    .line 925
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    iget-boolean v12, v12, Lcom/lge/dockservice/DockWindowService;->mIsQuickCoverClosed:Z

    if-eqz v12, :cond_113

    .line 926
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v12

    const-string v14, "no low profile requester left.. But Quick cover closed. Do not apply Low Profile."

    invoke-static {v12, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_cd
    monitor-exit v13

    goto :goto_57

    .line 898
    .restart local v1    # "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "am":Landroid/app/ActivityManager;
    .restart local v9    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_cf
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 899
    .local v6, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v15, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v12, 0x0

    :goto_db
    move/from16 v0, v16

    if-ge v12, v0, :cond_6c

    aget-object v8, v15, v12

    .line 900
    .local v8, "pkg":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 899
    add-int/lit8 v12, v12, 0x1

    goto :goto_db

    .line 915
    .end local v6    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8    # "pkg":Ljava/lang/String;
    .restart local v3    # "callState":I
    .restart local v10    # "removeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_e7
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 916
    .local v7, "lpr":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a1

    .line 917
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "package "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " seems to died. removing it from mLowProfileRequests"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 929
    .end local v1    # "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "callState":I
    .end local v7    # "lpr":Ljava/lang/String;
    .end local v9    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v10    # "removeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_113
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v12

    const-string v14, "no low profile requester left.. exit low profile"

    invoke-static {v12, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v12}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_12c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_cd

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 931
    .local v5, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/lge/dockservice/DockWindowService$DockView;->applyLowProfile(Z)V

    goto :goto_12c

    .line 936
    .end local v5    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_13d
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v12

    const-string v14, "we have low profile requester yet.. re-enter low profile"

    invoke-static {v12, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/dockservice/DockWindowService$4;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v12}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_156
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_cd

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 938
    .restart local v5    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/lge/dockservice/DockWindowService$DockView;->applyLowProfile(Z)V
    :try_end_166
    .catchall {:try_start_63 .. :try_end_166} :catchall_60

    goto :goto_156
.end method
