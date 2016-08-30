.class public Lcom/lge/loader/interaction/InteractionManagerCreator;
.super Lcom/lge/loader/InstanceCreator;
.source "InteractionManagerCreator.java"


# static fields
.field private static INTERACTION_MANAGER_CLASS:Ljava/lang/String;

.field private static INTERACTION_SERVICE_LIB:Ljava/lang/String;

.field private static cloader:Ljava/lang/ClassLoader;

.field private static mClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    const-string v0, "/system/framework/com.lge.zdi.interaction.jar"

    .line 15
    sput-object v0, Lcom/lge/loader/interaction/InteractionManagerCreator;->INTERACTION_SERVICE_LIB:Ljava/lang/String;

    .line 18
    const-string v0, "com.lge.zdi.interaction.InteractionManager"

    .line 17
    sput-object v0, Lcom/lge/loader/interaction/InteractionManagerCreator;->INTERACTION_MANAGER_CLASS:Ljava/lang/String;

    .line 21
    new-instance v0, Ldalvik/system/PathClassLoader;

    sget-object v1, Lcom/lge/loader/interaction/InteractionManagerCreator;->INTERACTION_SERVICE_LIB:Ljava/lang/String;

    .line 22
    const-class v2, Lcom/lge/loader/interaction/InteractionManagerCreator;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 21
    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/lge/loader/interaction/InteractionManagerCreator;->cloader:Ljava/lang/ClassLoader;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/loader/InstanceCreator;-><init>()V

    .line 27
    :try_start_3
    sget-object v0, Lcom/lge/loader/interaction/InteractionManagerCreator;->INTERACTION_MANAGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    sget-object v2, Lcom/lge/loader/interaction/InteractionManagerCreator;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lge/loader/interaction/InteractionManagerCreator;->mClass:Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_e} :catch_f

    .line 31
    :goto_e
    return-void

    .line 29
    :catch_f
    move-exception v0

    const-string v0, "InteractionManagerCreator"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/loader/interaction/InteractionManagerCreator;->INTERACTION_MANAGER_CLASS:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " don\'t exist in library"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 36
    :try_start_0
    sget-object v1, Lcom/lge/loader/interaction/InteractionManagerCreator;->mClass:Ljava/lang/Class;

    if-eqz v1, :cond_f

    .line 37
    sget-object v1, Lcom/lge/loader/interaction/InteractionManagerCreator;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_16

    move-result-object v1

    .line 46
    :goto_a
    return-object v1

    .line 39
    :catch_b
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 46
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_f
    :goto_f
    const/4 v1, 0x0

    goto :goto_a

    .line 41
    :catch_11
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_f

    .line 43
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_16
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_f
.end method
