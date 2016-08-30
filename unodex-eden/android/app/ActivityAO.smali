.class public Landroid/app/ActivityAO;
.super Ljava/lang/Object;
.source "ActivityAO.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
    value = "perthis(pcOnPostResume(android.app.Activity))"
.end annotation


# instance fields
.field private viewAgent:Lcom/lge/app/atsagent/IViewAgent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityAO;->viewAgent:Lcom/lge/app/atsagent/IViewAgent;

    .line 9
    return-void
.end method

.method public static synthetic declared-synchronized ajc$perObjectBind(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    const-class v2, Landroid/app/ActivityAO;

    monitor-enter v2

    :try_start_3
    instance-of v1, p0, Landroid/app/ActivityAO$ajcMightHaveAspect;

    if-eqz v1, :cond_1b

    move-object v0, p0

    check-cast v0, Landroid/app/ActivityAO$ajcMightHaveAspect;

    move-object v1, v0

    invoke-interface {v1}, Landroid/app/ActivityAO$ajcMightHaveAspect;->ajc$android_app_ActivityAO$perObjectGet()Landroid/app/ActivityAO;

    move-result-object v1

    if-nez v1, :cond_1b

    check-cast p0, Landroid/app/ActivityAO$ajcMightHaveAspect;

    new-instance v1, Landroid/app/ActivityAO;

    invoke-direct {v1}, Landroid/app/ActivityAO;-><init>()V

    invoke-interface {p0, v1}, Landroid/app/ActivityAO$ajcMightHaveAspect;->ajc$android_app_ActivityAO$perObjectSet(Landroid/app/ActivityAO;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit v2

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static aspectOf(Ljava/lang/Object;)Landroid/app/ActivityAO;
    .registers 2

    .prologue
    .line 1
    instance-of v0, p0, Landroid/app/ActivityAO$ajcMightHaveAspect;

    if-eqz v0, :cond_c

    check-cast p0, Landroid/app/ActivityAO$ajcMightHaveAspect;

    invoke-interface {p0}, Landroid/app/ActivityAO$ajcMightHaveAspect;->ajc$android_app_ActivityAO$perObjectGet()Landroid/app/ActivityAO;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_c
    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-direct {v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>()V

    throw v0

    :cond_12
    return-object v0
.end method

.method public static hasAspect(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 1
    instance-of v0, p0, Landroid/app/ActivityAO$ajcMightHaveAspect;

    if-eqz v0, :cond_e

    check-cast p0, Landroid/app/ActivityAO$ajcMightHaveAspect;

    invoke-interface {p0}, Landroid/app/ActivityAO$ajcMightHaveAspect;->ajc$android_app_ActivityAO$perObjectGet()Landroid/app/ActivityAO;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public ajc$after$android_app_ActivityAO$3$b226fad1(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "activity"
        value = "pcOnPostResume(activity)"
    .end annotation

    .prologue
    .line 41
    :try_start_0
    sget-boolean v1, Lcom/lge/app/atsagent/AtsViewAgent;->IS_ETA2_ACTIVATED:Z

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/app/ActivityAO;->viewAgent:Lcom/lge/app/atsagent/IViewAgent;

    if-nez v1, :cond_3b

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v1, v2}, Lcom/lge/app/atsagent/AtsViewAgent;->createViewAgent(Landroid/view/View;Ljava/lang/String;)Lcom/lge/app/atsagent/IViewAgent;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityAO;->viewAgent:Lcom/lge/app/atsagent/IViewAgent;

    .line 45
    :cond_3b
    iget-object v1, p0, Landroid/app/ActivityAO;->viewAgent:Lcom/lge/app/atsagent/IViewAgent;

    if-eqz v1, :cond_44

    .line 46
    iget-object v1, p0, Landroid/app/ActivityAO;->viewAgent:Lcom/lge/app/atsagent/IViewAgent;

    invoke-interface {v1}, Lcom/lge/app/atsagent/IViewAgent;->onShow()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    .line 52
    :cond_44
    :goto_44
    return-void

    .line 48
    :catch_45
    move-exception v0

    .line 49
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ViewAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ViewAgent.onShow Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44
.end method

.method public ajc$before$android_app_ActivityAO$1$4aa46e3a(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "activity"
        value = "pcOnDestroy(activity)"
    .end annotation

    .prologue
    .line 18
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityAO;->viewAgent:Lcom/lge/app/atsagent/IViewAgent;

    if-eqz v1, :cond_9

    .line 19
    iget-object v1, p0, Landroid/app/ActivityAO;->viewAgent:Lcom/lge/app/atsagent/IViewAgent;

    invoke-interface {v1}, Lcom/lge/app/atsagent/IViewAgent;->onHide()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 26
    :cond_9
    :goto_9
    return-void

    .line 21
    :catch_a
    move-exception v0

    .line 22
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ViewAgent"

    .line 23
    const-string v2, "Activity onDestroy exception: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public ajc$before$android_app_ActivityAO$2$e63e8cb6(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "activity"
        value = "pcOnPause(activity)"
    .end annotation

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityAO;->viewAgent:Lcom/lge/app/atsagent/IViewAgent;

    if-eqz v1, :cond_9

    .line 31
    iget-object v1, p0, Landroid/app/ActivityAO;->viewAgent:Lcom/lge/app/atsagent/IViewAgent;

    invoke-interface {v1}, Lcom/lge/app/atsagent/IViewAgent;->onHide()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 37
    :cond_9
    :goto_9
    return-void

    .line 33
    :catch_a
    move-exception v0

    .line 34
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ViewAgent"

    const-string v2, "Activity pause exception: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method synthetic ajc$pointcut$$pcOnDestroy$12b(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "activity"
        value = "(target(activity) && (within(android.app.Activity) && execution(* android.app.Activity.onDestroy(..))))"
    .end annotation

    .prologue
    .line 12
    return-void
.end method

.method synthetic ajc$pointcut$$pcOnPause$1a9(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "activity"
        value = "(target(activity) && (within(android.app.Activity) && execution(* android.app.Activity.onPause(..))))"
    .end annotation

    .prologue
    .line 13
    return-void
.end method

.method synthetic ajc$pointcut$$pcOnPostResume$223(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "activity"
        value = "(target(activity) && (within(android.app.Activity) && execution(* android.app.Activity.onPostResume(..))))"
    .end annotation

    .prologue
    .line 14
    return-void
.end method
