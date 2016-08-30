.class public Lcom/lge/app/FragmentAO;
.super Ljava/lang/Object;
.source "FragmentAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/app/FragmentAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    :try_start_0
    invoke-static {}, Lcom/lge/app/FragmentAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/app/FragmentAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_app_FragmentAO$1$a8261380proceed(Landroid/app/Fragment;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/res/Resources;
    .registers 4
    .param p0, "this"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/app/FragmentAO;

    invoke-direct {v0}, Lcom/lge/app/FragmentAO;-><init>()V

    sput-object v0, Lcom/lge/app/FragmentAO;->ajc$perSingletonInstance:Lcom/lge/app/FragmentAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/app/FragmentAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/app/FragmentAO;->ajc$perSingletonInstance:Lcom/lge/app/FragmentAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_app_FragmentAO"

    sget-object v2, Lcom/lge/app/FragmentAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/app/FragmentAO;->ajc$perSingletonInstance:Lcom/lge/app/FragmentAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/app/FragmentAO;->ajc$perSingletonInstance:Lcom/lge/app/FragmentAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_app_FragmentAO$1$a8261380(Landroid/app/Fragment;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/res/Resources;
    .registers 5
    .param p1, "obj"    # Landroid/app/Fragment;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(public Resources Fragment.getResources()))"
    .end annotation

    .prologue
    .line 16
    instance-of v1, p1, Landroid/app/LGFragment;

    if-eqz v1, :cond_17

    move-object v1, p1

    .line 17
    check-cast v1, Landroid/app/LGFragment;

    invoke-virtual {v1}, Landroid/app/LGFragment;->getPackageContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_12

    invoke-static {p1, p2}, Lcom/lge/app/FragmentAO;->ajc$around$com_lge_app_FragmentAO$1$a8261380proceed(Landroid/app/Fragment;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/res/Resources;

    move-result-object v1

    .line 24
    .end local v0    # "context":Landroid/content/Context;
    :goto_11
    return-object v1

    .line 18
    .restart local v0    # "context":Landroid/content/Context;
    :cond_12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_11

    .line 20
    .end local v0    # "context":Landroid/content/Context;
    :cond_17
    instance-of v1, p1, Landroid/preference/LGPreferenceFragment;

    if-eqz v1, :cond_2e

    move-object v1, p1

    .line 21
    check-cast v1, Landroid/preference/LGPreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/LGPreferenceFragment;->getPackageContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    .restart local v0    # "context":Landroid/content/Context;
    if-nez v0, :cond_29

    invoke-static {p1, p2}, Lcom/lge/app/FragmentAO;->ajc$around$com_lge_app_FragmentAO$1$a8261380proceed(Landroid/app/Fragment;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_11

    :cond_29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_11

    .line 24
    .end local v0    # "context":Landroid/content/Context;
    :cond_2e
    invoke-static {p1, p2}, Lcom/lge/app/FragmentAO;->ajc$around$com_lge_app_FragmentAO$1$a8261380proceed(Landroid/app/Fragment;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_11
.end method
