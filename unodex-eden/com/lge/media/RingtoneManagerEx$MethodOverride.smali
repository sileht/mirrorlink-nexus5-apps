.class public Lcom/lge/media/RingtoneManagerEx$MethodOverride;
.super Ljava/lang/Object;
.source "RingtoneManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/RingtoneManagerEx;
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

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$MethodOverride;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 349
    :try_start_0
    invoke-static {}, Lcom/lge/media/RingtoneManagerEx$MethodOverride;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/media/RingtoneManagerEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_RingtoneManagerEx$MethodOverride$1$673c9d14proceed(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)[Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/RingtoneManagerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_RingtoneManagerEx$MethodOverride$2$bf3caf09proceed(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)[Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/RingtoneManagerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_RingtoneManagerEx$MethodOverride$3$4b336493proceed(Landroid/content/Context;ZLorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/Ringtone;
    .registers 6
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 364
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Ringtone;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_RingtoneManagerEx$MethodOverride$com_lge_media_RingtoneManagerEx$INTERNAL_COLUMNS()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/RingtoneManagerEx;->INTERNAL_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_RingtoneManagerEx$MethodOverride$com_lge_media_RingtoneManagerEx$MEDIA_COLUMNS()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/RingtoneManagerEx;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_RingtoneManagerEx$MethodOverride$com_lge_media_RingtoneManagerEx$INTERNAL_COLUMNS([Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/media/RingtoneManagerEx;->INTERNAL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_RingtoneManagerEx$MethodOverride$com_lge_media_RingtoneManagerEx$MEDIA_COLUMNS([Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/media/RingtoneManagerEx;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/media/RingtoneManagerEx$MethodOverride;

    invoke-direct {v0}, Lcom/lge/media/RingtoneManagerEx$MethodOverride;-><init>()V

    sput-object v0, Lcom/lge/media/RingtoneManagerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$MethodOverride;

    return-void
.end method

.method public static aspectOf()Lcom/lge/media/RingtoneManagerEx$MethodOverride;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/RingtoneManagerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$MethodOverride;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_media_RingtoneManagerEx$MethodOverride"

    sget-object v2, Lcom/lge/media/RingtoneManagerEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/media/RingtoneManagerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$MethodOverride;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/RingtoneManagerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$MethodOverride;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_media_RingtoneManagerEx$MethodOverride$4$ea2c9c7f(Lcom/lge/media/RingtoneManagerEx;I)V
    .registers 5
    .param p1, "obj"    # Lcom/lge/media/RingtoneManagerEx;
    .param p2, "type"    # I
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,type"
        value = "(target(obj) && (args(type) && execution(private void RingtoneManager.setFilterColumnsList(int))))"
    .end annotation

    .prologue
    .line 372
    invoke-static {p1}, Landroid/media/RingtoneManager;->ajc$get$mFilterColumns(Landroid/media/RingtoneManager;)Ljava/util/List;

    move-result-object v0

    .line 373
    .local v0, "columns":Ljava/util/List;
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_d

    .line 374
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_d
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_16

    .line 377
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_16
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1f

    .line 380
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_1f
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_28

    .line 383
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_28
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_31

    .line 386
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_31
    and-int/lit16 v1, p2, 0x100

    if-eqz v1, :cond_3a

    .line 389
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_3a
    and-int/lit16 v1, p2, 0x200

    if-eqz v1, :cond_43

    .line 392
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_43
    return-void
.end method

.method public ajc$around$com_lge_media_RingtoneManagerEx$MethodOverride$1$673c9d14(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)[Ljava/lang/String;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/RingtoneManagerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && get(private static final String RingtoneManager.INTERNAL_COLUMNS))"
    .end annotation

    .prologue
    .line 353
    invoke-static {}, Lcom/lge/media/RingtoneManagerEx$MethodOverride;->ajc$inlineAccessFieldGet$com_lge_media_RingtoneManagerEx$MethodOverride$com_lge_media_RingtoneManagerEx$INTERNAL_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_RingtoneManagerEx$MethodOverride$2$bf3caf09(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)[Ljava/lang/String;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/RingtoneManagerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && get(private static final String RingtoneManager.MEDIA_COLUMNS))"
    .end annotation

    .prologue
    .line 358
    invoke-static {}, Lcom/lge/media/RingtoneManagerEx$MethodOverride;->ajc$inlineAccessFieldGet$com_lge_media_RingtoneManagerEx$MethodOverride$com_lge_media_RingtoneManagerEx$MEDIA_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_RingtoneManagerEx$MethodOverride$3$4b336493(Landroid/content/Context;ZLorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/Ringtone;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,allowRemote,ajc$aroundClosure"
        value = "(withincode(* RingtoneManager.getRingtone(..)) && (call(Ringtone.new(..)) && args(context, allowRemote)))"
    .end annotation

    .prologue
    .line 365
    new-instance v0, Landroid/media/RingtoneEx;

    invoke-direct {v0, p1, p2}, Landroid/media/RingtoneEx;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method
