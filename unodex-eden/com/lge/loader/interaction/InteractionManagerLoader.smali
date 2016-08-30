.class public Lcom/lge/loader/interaction/InteractionManagerLoader;
.super Ljava/lang/Object;
.source "InteractionManagerLoader.java"


# static fields
.field private static MANAGER_INSTANCE:Lcom/lge/loader/interaction/IInteractionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/loader/interaction/InteractionManagerLoader;->MANAGER_INSTANCE:Lcom/lge/loader/interaction/IInteractionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceManager()Lcom/lge/loader/interaction/IInteractionManager;
    .registers 3

    .prologue
    .line 34
    sget-object v1, Lcom/lge/loader/interaction/InteractionManagerLoader;->MANAGER_INSTANCE:Lcom/lge/loader/interaction/IInteractionManager;

    if-nez v1, :cond_14

    .line 35
    sget-object v1, Lcom/lge/loader/RuntimeLibraryLoader;->ZDI_INTERACTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/loader/RuntimeLibraryLoader;->getCreator(Ljava/lang/String;)Lcom/lge/loader/InstanceCreator;

    move-result-object v0

    .line 36
    .local v0, "creator":Lcom/lge/loader/InstanceCreator;
    if-eqz v0, :cond_14

    .line 37
    invoke-virtual {v0}, Lcom/lge/loader/InstanceCreator;->getDefaultInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/interaction/IInteractionManager;

    sput-object v1, Lcom/lge/loader/interaction/InteractionManagerLoader;->MANAGER_INSTANCE:Lcom/lge/loader/interaction/IInteractionManager;

    .line 41
    :cond_14
    sget-object v1, Lcom/lge/loader/interaction/InteractionManagerLoader;->MANAGER_INSTANCE:Lcom/lge/loader/interaction/IInteractionManager;

    if-nez v1, :cond_1a

    .line 42
    const/4 v1, 0x0

    .line 46
    :goto_19
    return-object v1

    .line 45
    :cond_1a
    sget-object v2, Lcom/lge/loader/interaction/InteractionManagerLoader;->MANAGER_INSTANCE:Lcom/lge/loader/interaction/IInteractionManager;

    monitor-enter v2

    .line 46
    :try_start_1d
    sget-object v1, Lcom/lge/loader/interaction/InteractionManagerLoader;->MANAGER_INSTANCE:Lcom/lge/loader/interaction/IInteractionManager;

    monitor-exit v2

    goto :goto_19

    .line 45
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static launchService(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {}, Lcom/lge/loader/interaction/InteractionManagerLoader;->getServiceManager()Lcom/lge/loader/interaction/IInteractionManager;

    move-result-object v0

    .line 19
    .local v0, "manager":Lcom/lge/loader/interaction/IInteractionManager;
    if-eqz v0, :cond_9

    .line 20
    invoke-interface {v0, p0}, Lcom/lge/loader/interaction/IInteractionManager;->launchService(Landroid/content/Context;)Z

    .line 22
    :cond_9
    return-void
.end method

.method public static serviceSystemReady()V
    .registers 2

    .prologue
    .line 25
    invoke-static {}, Lcom/lge/loader/interaction/InteractionManagerLoader;->getServiceManager()Lcom/lge/loader/interaction/IInteractionManager;

    move-result-object v0

    .line 26
    .local v0, "manager":Lcom/lge/loader/interaction/IInteractionManager;
    if-eqz v0, :cond_b

    .line 27
    monitor-enter v0

    .line 28
    :try_start_7
    invoke-interface {v0}, Lcom/lge/loader/interaction/IInteractionManager;->serviceSystemReady()Z

    .line 27
    monitor-exit v0

    .line 31
    :cond_b
    return-void

    .line 27
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method
