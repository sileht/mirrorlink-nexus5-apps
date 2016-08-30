.class public Landroid/media/TimedTextEx$MethodOverride;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
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

.field public static final synthetic ajc$perSingletonInstance:Landroid/media/TimedTextEx$MethodOverride;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2296
    :try_start_0
    invoke-static {}, Landroid/media/TimedTextEx$MethodOverride;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Landroid/media/TimedTextEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_media_TimedTextEx$MethodOverride$1$882baedproceed(Landroid/media/TimedText;Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p0, "this"    # Landroid/media/TimedText;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2299
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

.method public static synthetic ajc$inlineAccessMethod$android_media_TimedTextEx$MethodOverride$android_media_TimedTextEx$parseParcelEx(Landroid/media/TimedTextEx;Landroid/os/Parcel;)Z
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/media/TimedTextEx;->parseParcelEx(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_TimedTextEx$MethodOverride$android_media_TimedText$mTimedText(Landroid/media/TimedText;)Landroid/media/TimedTextEx;
    .registers 2

    invoke-static {p0}, Landroid/media/TimedText;->ajc$get$mTimedText(Landroid/media/TimedText;)Landroid/media/TimedTextEx;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$android_media_TimedTextEx$MethodOverride$android_media_TimedText$mTimedText(Landroid/media/TimedText;)V
    .registers 1

    .prologue
    .line 2297
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_TimedTextEx$MethodOverride$android_media_TimedText$mTimedText(Landroid/media/TimedText;Landroid/media/TimedTextEx;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/TimedText;->ajc$set$mTimedText(Landroid/media/TimedText;Landroid/media/TimedTextEx;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/media/TimedTextEx$MethodOverride;

    invoke-direct {v0}, Landroid/media/TimedTextEx$MethodOverride;-><init>()V

    sput-object v0, Landroid/media/TimedTextEx$MethodOverride;->ajc$perSingletonInstance:Landroid/media/TimedTextEx$MethodOverride;

    return-void
.end method

.method public static aspectOf()Landroid/media/TimedTextEx$MethodOverride;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/media/TimedTextEx$MethodOverride;->ajc$perSingletonInstance:Landroid/media/TimedTextEx$MethodOverride;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_media_TimedTextEx$MethodOverride"

    sget-object v2, Landroid/media/TimedTextEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/media/TimedTextEx$MethodOverride;->ajc$perSingletonInstance:Landroid/media/TimedTextEx$MethodOverride;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/media/TimedTextEx$MethodOverride;->ajc$perSingletonInstance:Landroid/media/TimedTextEx$MethodOverride;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_media_TimedTextEx$MethodOverride$1$882baed(Landroid/media/TimedText;Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p1, "obj"    # Landroid/media/TimedText;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,parcel,ajc$aroundClosure"
        value = "(this(obj) && (args(parcel) && execution(private boolean TimedText.parseParcel(Parcel))))"
    .end annotation

    .prologue
    .line 2300
    new-instance v1, Landroid/media/TimedTextEx;

    invoke-direct {v1, p2}, Landroid/media/TimedTextEx;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1}, Landroid/media/TimedTextEx$MethodOverride;->ajc$interFieldSetDispatch$android_media_TimedTextEx$MethodOverride$android_media_TimedText$mTimedText(Landroid/media/TimedText;Landroid/media/TimedTextEx;)V

    .line 2301
    invoke-static {p1, p2, p3}, Landroid/media/TimedTextEx$MethodOverride;->ajc$around$android_media_TimedTextEx$MethodOverride$1$882baedproceed(Landroid/media/TimedText;Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    .line 2302
    .local v0, "ret":Z
    if-eqz v0, :cond_f

    .line 2305
    .end local v0    # "ret":Z
    :goto_e
    return v0

    .restart local v0    # "ret":Z
    :cond_f
    invoke-static {p1}, Landroid/media/TimedTextEx$MethodOverride;->ajc$interFieldGetDispatch$android_media_TimedTextEx$MethodOverride$android_media_TimedText$mTimedText(Landroid/media/TimedText;)Landroid/media/TimedTextEx;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/media/TimedTextEx$MethodOverride;->ajc$inlineAccessMethod$android_media_TimedTextEx$MethodOverride$android_media_TimedTextEx$parseParcelEx(Landroid/media/TimedTextEx;Landroid/os/Parcel;)Z

    move-result v0

    goto :goto_e
.end method
