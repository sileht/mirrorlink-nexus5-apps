.class public Lcom/lge/media/RingtoneManagerEx$PrivateAccess;
.super Ljava/lang/Object;
.source "RingtoneManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/RingtoneManagerEx;
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

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 328
    :try_start_0
    invoke-static {}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_RingtoneManagerEx$PrivateAccess$1$e6ac1f76proceed(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Lcom/lge/media/RingtoneManagerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_media_RingtoneManagerEx$PrivateAccess$2$a66504bproceed(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/database/Cursor;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/RingtoneManagerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_RingtoneManagerEx$PrivateAccess$3$14386b18proceed(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/database/Cursor;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/RingtoneManagerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 345
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$mType(Lcom/lge/media/RingtoneManagerEx;)I
    .registers 2

    invoke-static {p0}, Lcom/lge/media/RingtoneManagerEx;->ajc$get$mType(Lcom/lge/media/RingtoneManagerEx;)I

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$mType(Lcom/lge/media/RingtoneManagerEx;)V
    .registers 1

    .prologue
    .line 330
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$mType(Lcom/lge/media/RingtoneManagerEx;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/media/RingtoneManagerEx;->ajc$set$mType(Lcom/lge/media/RingtoneManagerEx;I)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$getInternalRingtones(Lcom/lge/media/RingtoneManagerEx;)Landroid/database/Cursor;
    .registers 4
    .param p0, "ajc$this_"    # Lcom/lge/media/RingtoneManagerEx;

    .prologue
    .line 331
    invoke-static {}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->aspectOf()Lcom/lge/media/RingtoneManagerEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Lcom/lge/media/RingtoneManagerEx$PrivateAccess$AjcClosure1;

    invoke-direct {v2, v1}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess$AjcClosure1;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$around$com_lge_media_RingtoneManagerEx$PrivateAccess$2$a66504b(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$getMediaRingtones(Lcom/lge/media/RingtoneManagerEx;)Landroid/database/Cursor;
    .registers 4
    .param p0, "ajc$this_"    # Lcom/lge/media/RingtoneManagerEx;

    .prologue
    .line 332
    invoke-static {}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->aspectOf()Lcom/lge/media/RingtoneManagerEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Lcom/lge/media/RingtoneManagerEx$PrivateAccess$AjcClosure3;

    invoke-direct {v2, v1}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess$AjcClosure3;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$around$com_lge_media_RingtoneManagerEx$PrivateAccess$3$14386b18(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$getInternalRingtones(Lcom/lge/media/RingtoneManagerEx;)Landroid/database/Cursor;
    .registers 2
    .param p0, "ajc$this_"    # Lcom/lge/media/RingtoneManagerEx;

    .prologue
    invoke-virtual {p0}, Lcom/lge/media/RingtoneManagerEx;->ajc$interMethodDispatch2$com_lge_media_RingtoneManagerEx$getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$getMediaRingtones(Lcom/lge/media/RingtoneManagerEx;)Landroid/database/Cursor;
    .registers 2
    .param p0, "ajc$this_"    # Lcom/lge/media/RingtoneManagerEx;

    .prologue
    invoke-virtual {p0}, Lcom/lge/media/RingtoneManagerEx;->ajc$interMethodDispatch2$com_lge_media_RingtoneManagerEx$getMediaRingtones()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;

    invoke-direct {v0}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;-><init>()V

    sput-object v0, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$PrivateAccess;

    return-void
.end method

.method public static aspectOf()Lcom/lge/media/RingtoneManagerEx$PrivateAccess;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$PrivateAccess;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_media_RingtoneManagerEx$PrivateAccess"

    sget-object v2, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$PrivateAccess;

    return-object v0
.end method

.method static final getInternalRingtones_aroundBody0(Lcom/lge/media/RingtoneManagerEx;)Landroid/database/Cursor;
    .registers 2
    .param p0, "ajc$this_"    # Lcom/lge/media/RingtoneManagerEx;

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method static final getMediaRingtones_aroundBody2(Lcom/lge/media/RingtoneManagerEx;)Landroid/database/Cursor;
    .registers 2
    .param p0, "ajc$this_"    # Lcom/lge/media/RingtoneManagerEx;

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$PrivateAccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_media_RingtoneManagerEx$PrivateAccess$1$e6ac1f76(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/RingtoneManagerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private int RingtoneManagerEx.mType))"
    .end annotation

    .prologue
    .line 336
    invoke-static {p1}, Landroid/media/RingtoneManager;->ajc$get$mType(Landroid/media/RingtoneManager;)I

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_media_RingtoneManagerEx$PrivateAccess$2$a66504b(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/database/Cursor;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/RingtoneManagerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && execution(private Cursor RingtoneManagerEx.getInternalRingtones()))"
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/media/RingtoneManager;->ajc$privMethod$com_lge_media_RingtoneManagerEx$PrivateAccess$android_media_RingtoneManager$getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_RingtoneManagerEx$PrivateAccess$3$14386b18(Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/database/Cursor;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/RingtoneManagerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && execution(private Cursor RingtoneManagerEx.getMediaRingtones()))"
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/media/RingtoneManager;->ajc$privMethod$com_lge_media_RingtoneManagerEx$PrivateAccess$android_media_RingtoneManager$getMediaRingtones()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
