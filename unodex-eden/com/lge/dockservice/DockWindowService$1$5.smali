.class Lcom/lge/dockservice/DockWindowService$1$5;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$1;->initDockWindow(Ljava/lang/String;Landroid/os/IBinder;Landroid/graphics/Bitmap;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$1;

.field private final synthetic val$fromHandleTouch:Z

.field private final synthetic val$icon:Landroid/graphics/Bitmap;

.field private final synthetic val$initPointX:I

.field private final synthetic val$initPointY:I

.field private final synthetic val$initToShow:Z

.field private final synthetic val$packageName:Ljava/lang/String;

.field private final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$1;Landroid/os/IBinder;Ljava/lang/String;Landroid/graphics/Bitmap;IIZZ)V
    .registers 9

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$icon:Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointX:I

    iput p6, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointY:I

    iput-boolean p7, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initToShow:Z

    iput-boolean p8, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$fromHandleTouch:Z

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 383
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    # getter for: Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$1;->access$0(Lcom/lge/dockservice/DockWindowService$1;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v1

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    monitor-enter v9

    .line 385
    :try_start_b
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$token:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/lge/dockservice/IBaseDockWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/dockservice/IBaseDockWindow;

    move-result-object v2

    .line 386
    .local v2, "dockWindow":Lcom/lge/dockservice/IBaseDockWindow;
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    # getter for: Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$1;->access$0(Lcom/lge/dockservice/DockWindowService$1;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v1

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 387
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " added to DockViewList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_92

    .line 388
    const/4 v0, 0x0

    .line 390
    .local v0, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :try_start_40
    new-instance v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .end local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    # getter for: Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$1;->access$0(Lcom/lge/dockservice/DockWindowService$1;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$icon:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointX:I

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointY:I

    iget-boolean v7, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initToShow:Z

    invoke-direct/range {v0 .. v7}, Lcom/lge/dockservice/DockWindowService$DockView;-><init>(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/IBaseDockWindow;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_55} :catch_72
    .catchall {:try_start_40 .. :try_end_55} :catchall_92

    .line 397
    .restart local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :try_start_55
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    # getter for: Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$1;->access$0(Lcom/lge/dockservice/DockWindowService$1;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v1

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->moveToTop()V

    .line 399
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    # getter for: Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$1;->access$0(Lcom/lge/dockservice/DockWindowService$1;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/dockservice/DockWindowService;->access$5(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)V

    .line 383
    .end local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :goto_70
    monitor-exit v9

    .line 417
    :goto_71
    return-void

    .line 391
    :catch_72
    move-exception v8

    .line 392
    .local v8, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occured : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 395
    monitor-exit v9

    goto :goto_71

    .line 383
    .end local v2    # "dockWindow":Lcom/lge/dockservice/IBaseDockWindow;
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_92
    move-exception v1

    monitor-exit v9
    :try_end_94
    .catchall {:try_start_55 .. :try_end_94} :catchall_92

    throw v1

    .line 403
    .restart local v2    # "dockWindow":Lcom/lge/dockservice/IBaseDockWindow;
    :cond_95
    :try_start_95
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " has already added to DockViewList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_95 .. :try_end_b1} :catchall_92

    .line 405
    :try_start_b1
    iget-boolean v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initToShow:Z

    if-eqz v1, :cond_d6

    .line 406
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    # getter for: Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$1;->access$0(Lcom/lge/dockservice/DockWindowService$1;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v1

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointX:I

    iget v4, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointY:I

    iget-boolean v5, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$fromHandleTouch:Z

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->awake(IIZ)V
    invoke-static {v1, v3, v4, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->access$5(Lcom/lge/dockservice/DockWindowService$DockView;IIZ)V
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_d0} :catch_d1
    .catchall {:try_start_b1 .. :try_end_d0} :catchall_92

    goto :goto_70

    .line 412
    :catch_d1
    move-exception v8

    .line 413
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_d2
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_92

    goto :goto_70

    .line 409
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_d6
    :try_start_d6
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    # getter for: Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$1;->access$0(Lcom/lge/dockservice/DockWindowService$1;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v1

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/dockservice/DockWindowService$DockView;

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->sleep()V
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$6(Lcom/lge/dockservice/DockWindowService$DockView;)V
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_eb} :catch_d1
    .catchall {:try_start_d6 .. :try_end_eb} :catchall_92

    goto :goto_70
.end method
