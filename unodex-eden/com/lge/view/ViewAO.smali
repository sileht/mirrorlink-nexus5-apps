.class public Lcom/lge/view/ViewAO;
.super Ljava/lang/Object;
.source "ViewAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/view/ViewAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    :try_start_0
    invoke-static {}, Lcom/lge/view/ViewAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/view/ViewAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_view_ViewAO$1$63962150proceed(Landroid/view/View;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p0, "this"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/view/ViewAO;

    invoke-direct {v0}, Lcom/lge/view/ViewAO;-><init>()V

    sput-object v0, Lcom/lge/view/ViewAO;->ajc$perSingletonInstance:Lcom/lge/view/ViewAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/view/ViewAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/view/ViewAO;->ajc$perSingletonInstance:Lcom/lge/view/ViewAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_view_ViewAO"

    sget-object v2, Lcom/lge/view/ViewAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/view/ViewAO;->ajc$perSingletonInstance:Lcom/lge/view/ViewAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/view/ViewAO;->ajc$perSingletonInstance:Lcom/lge/view/ViewAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_view_ViewAO$1$63962150(Landroid/view/View;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "v,out,ajc$aroundClosure"
        value = "isWindowSplitPC(v, out)"
    .end annotation

    .prologue
    .line 30
    const-string v0, "ViewAO"

    const-string v1, "isWindowSplit called.. by aspectj"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p1, p2}, Lcom/lge/view/SplitWindowViewHelper;->isWindowSplit(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method synthetic ajc$pointcut$$isWindowSplitPC$3a0(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "v,out"
        value = "(execution(public boolean android.view.View.isWindowSplit(android.graphics.Rect)) && (target(v) && args(out)))"
    .end annotation

    .prologue
    .line 28
    return-void
.end method
