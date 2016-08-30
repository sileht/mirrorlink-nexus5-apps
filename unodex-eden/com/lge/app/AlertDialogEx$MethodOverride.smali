.class public Lcom/lge/app/AlertDialogEx$MethodOverride;
.super Ljava/lang/Object;
.source "AlertDialogEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/AlertDialogEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodOverride"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/app/AlertDialogEx$MethodOverride;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 582
    :try_start_0
    invoke-static {}, Lcom/lge/app/AlertDialogEx$MethodOverride;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/app/AlertDialogEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_app_AlertDialogEx$MethodOverride$1$c57297c9proceed(Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog;
    .registers 4
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 586
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/app/AlertDialogEx$MethodOverride;

    invoke-direct {v0}, Lcom/lge/app/AlertDialogEx$MethodOverride;-><init>()V

    sput-object v0, Lcom/lge/app/AlertDialogEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/app/AlertDialogEx$MethodOverride;

    return-void
.end method

.method public static aspectOf()Lcom/lge/app/AlertDialogEx$MethodOverride;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/app/AlertDialogEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/app/AlertDialogEx$MethodOverride;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_app_AlertDialogEx$MethodOverride"

    sget-object v2, Lcom/lge/app/AlertDialogEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/app/AlertDialogEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/app/AlertDialogEx$MethodOverride;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/app/AlertDialogEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/app/AlertDialogEx$MethodOverride;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_app_AlertDialogEx$MethodOverride$1$c57297c9(Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,ajc$aroundClosure"
        value = "(call(AlertDialog.new(..)) && (this(AlertDialogEx.BuilderEx) && args(context, ..)))"
    .end annotation

    .prologue
    .line 587
    new-instance v0, Lcom/lge/app/AlertDialogEx;

    invoke-direct {v0, p1}, Lcom/lge/app/AlertDialogEx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
