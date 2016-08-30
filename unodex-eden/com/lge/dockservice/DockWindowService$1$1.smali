.class Lcom/lge/dockservice/DockWindowService$1$1;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$1;->undock(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$1;

.field private final synthetic val$activityName:Ljava/lang/String;

.field private final synthetic val$undockPosX:I

.field private final synthetic val$undockPosY:I


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$1;Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$1$1;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$activityName:Ljava/lang/String;

    iput p3, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$undockPosY:I

    iput p4, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$undockPosX:I

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 225
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$1$1;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    # getter for: Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$1;->access$0(Lcom/lge/dockservice/DockWindowService$1;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v2

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$activityName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 226
    .local v0, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    if-eqz v0, :cond_5f

    .line 228
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$0(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 229
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$0(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2e

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$0(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 231
    :cond_2e
    :try_start_2e
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$0(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_3d

    .line 238
    :cond_35
    :goto_35
    iget v2, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$undockPosY:I

    if-gez v2, :cond_57

    .line 239
    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->undockBySingleTabUp()V

    .line 248
    :goto_3c
    return-void

    .line 232
    :catch_3d
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 242
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_57
    iget v2, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$undockPosX:I

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$undockPosY:I

    invoke-virtual {v0, v2, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->undock(II)V

    goto :goto_3c

    .line 246
    :cond_5f
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DockView for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$activityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method
