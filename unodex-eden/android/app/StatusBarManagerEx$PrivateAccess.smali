.class public Landroid/app/StatusBarManagerEx$PrivateAccess;
.super Ljava/lang/Object;
.source "StatusBarManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatusBarManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateAccess"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/app/StatusBarManagerEx$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_app_StatusBarManagerEx$PrivateAccess$1$b79f8610proceed(Landroid/app/StatusBarManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 4
    .param p0, "this"    # Landroid/app/StatusBarManagerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ajc$around$android_app_StatusBarManagerEx$PrivateAccess$2$b95177deproceed(Landroid/app/StatusBarManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/IBinder;
    .registers 4
    .param p0, "this"    # Landroid/app/StatusBarManagerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_app_StatusBarManagerEx$PrivateAccess$android_app_StatusBarManagerEx$mContext(Landroid/app/StatusBarManagerEx;)Landroid/content/Context;
    .registers 2

    invoke-static {p0}, Landroid/app/StatusBarManagerEx;->ajc$get$mContext(Landroid/app/StatusBarManagerEx;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_app_StatusBarManagerEx$PrivateAccess$android_app_StatusBarManagerEx$mToken(Landroid/app/StatusBarManagerEx;)Landroid/os/IBinder;
    .registers 2

    invoke-static {p0}, Landroid/app/StatusBarManagerEx;->ajc$get$mToken(Landroid/app/StatusBarManagerEx;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$android_app_StatusBarManagerEx$PrivateAccess$android_app_StatusBarManagerEx$mContext(Landroid/app/StatusBarManagerEx;)V
    .registers 1

    .prologue
    .line 77
    return-void
.end method

.method public static ajc$interFieldInit$android_app_StatusBarManagerEx$PrivateAccess$android_app_StatusBarManagerEx$mToken(Landroid/app/StatusBarManagerEx;)V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_app_StatusBarManagerEx$PrivateAccess$android_app_StatusBarManagerEx$mContext(Landroid/app/StatusBarManagerEx;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/StatusBarManagerEx;->ajc$set$mContext(Landroid/app/StatusBarManagerEx;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_app_StatusBarManagerEx$PrivateAccess$android_app_StatusBarManagerEx$mToken(Landroid/app/StatusBarManagerEx;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/StatusBarManagerEx;->ajc$set$mToken(Landroid/app/StatusBarManagerEx;Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/app/StatusBarManagerEx$PrivateAccess;

    invoke-direct {v0}, Landroid/app/StatusBarManagerEx$PrivateAccess;-><init>()V

    sput-object v0, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/app/StatusBarManagerEx$PrivateAccess;

    return-void
.end method

.method public static aspectOf()Landroid/app/StatusBarManagerEx$PrivateAccess;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/app/StatusBarManagerEx$PrivateAccess;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_app_StatusBarManagerEx$PrivateAccess"

    sget-object v2, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/app/StatusBarManagerEx$PrivateAccess;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/app/StatusBarManagerEx$PrivateAccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_app_StatusBarManagerEx$PrivateAccess$1$b79f8610(Landroid/app/StatusBarManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 4
    .param p1, "obj"    # Landroid/app/StatusBarManagerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private Context StatusBarManagerEx.mContext))"
    .end annotation

    .prologue
    .line 81
    invoke-static {p1}, Landroid/app/StatusBarManager;->ajc$get$mContext(Landroid/app/StatusBarManager;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_app_StatusBarManagerEx$PrivateAccess$2$b95177de(Landroid/app/StatusBarManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/IBinder;
    .registers 4
    .param p1, "obj"    # Landroid/app/StatusBarManagerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private IBinder StatusBarManagerEx.mToken))"
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Landroid/app/StatusBarManager;->ajc$get$mToken(Landroid/app/StatusBarManager;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
