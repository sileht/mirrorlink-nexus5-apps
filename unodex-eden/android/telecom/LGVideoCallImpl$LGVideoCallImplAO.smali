.class public Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;
.super Ljava/lang/Object;
.source "LGVideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/LGVideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LGVideoCallImplAO"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 332
    :try_start_0
    invoke-static {}, Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_telecom_LGVideoCallImpl$LGVideoCallImplAO$1$6cbb6650proceed(Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Call;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/telecom/VideoCallImpl;
    .registers 5
    .param p0, "this"    # Lcom/android/internal/telecom/IVideoProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/VideoCallImpl;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;

    invoke-direct {v0}, Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;-><init>()V

    sput-object v0, Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;->ajc$perSingletonInstance:Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;

    return-void
.end method

.method public static aspectOf()Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;->ajc$perSingletonInstance:Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_telecom_LGVideoCallImpl$LGVideoCallImplAO"

    sget-object v2, Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;->ajc$perSingletonInstance:Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;->ajc$perSingletonInstance:Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_telecom_LGVideoCallImpl$LGVideoCallImplAO$1$6cbb6650(Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Call;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/telecom/VideoCallImpl;
    .registers 5
    .param p1, "provider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "call"    # Landroid/telecom/Call;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "provider,call,ajc$aroundClosure"
        value = "(withincode(InCallService.VideoCall ParcelableCall.getVideoCall(Call)) && (call(VideoCallImpl.new(IVideoProvider, Call)) && args(provider, call)))"
    .end annotation

    .prologue
    .line 338
    :try_start_0
    new-instance v0, Landroid/telecom/LGVideoCallImpl;

    invoke-direct {v0, p1, p2}, Landroid/telecom/LGVideoCallImpl;-><init>(Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Call;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 340
    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    invoke-static {p1, p2, p3}, Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;->ajc$around$android_telecom_LGVideoCallImpl$LGVideoCallImplAO$1$6cbb6650proceed(Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Call;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/telecom/VideoCallImpl;

    move-result-object v0

    goto :goto_5
.end method
