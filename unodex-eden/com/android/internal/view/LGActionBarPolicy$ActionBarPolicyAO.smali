.class public Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;
.super Ljava/lang/Object;
.source "LGActionBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/LGActionBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBarPolicyAO"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_internal_view_LGActionBarPolicy$ActionBarPolicyAO$1$c4d1659dproceed(Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 4
    .param p0, "this"    # Lcom/android/internal/view/LGActionBarPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    invoke-direct {v0}, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;-><init>()V

    sput-object v0, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->ajc$perSingletonInstance:Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    return-void
.end method

.method public static ajc$postInterConstructor$com_android_internal_view_LGActionBarPolicy$ActionBarPolicyAO$com_android_internal_view_LGActionBarPolicy(Lcom/android/internal/view/LGActionBarPolicy;Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 122
    return-void
.end method

.method public static final ajc$preInterConstructor$com_android_internal_view_LGActionBarPolicy$ActionBarPolicyAO$com_android_internal_view_LGActionBarPolicy(Landroid/content/Context;I)[Ljava/lang/Object;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # I

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static aspectOf()Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->ajc$perSingletonInstance:Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_internal_view_LGActionBarPolicy$ActionBarPolicyAO"

    sget-object v2, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->ajc$perSingletonInstance:Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->ajc$perSingletonInstance:Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_internal_view_LGActionBarPolicy$ActionBarPolicyAO$1$c4d1659d(Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 4
    .param p1, "obj"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private Context LGActionBarPolicy.mContext))"
    .end annotation

    .prologue
    .line 117
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->ajc$get$mContext(Lcom/android/internal/view/ActionBarPolicy;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
