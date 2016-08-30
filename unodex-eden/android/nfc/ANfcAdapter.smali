.class public Landroid/nfc/ANfcAdapter;
.super Ljava/lang/Object;
.source "ANfcAdapter.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ANfcAdapter.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/nfc/ANfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    :try_start_0
    invoke-static {}, Landroid/nfc/ANfcAdapter;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 16
    :goto_3
    return-void

    .line 15
    :catch_4
    move-exception v0

    sput-object v0, Landroid/nfc/ANfcAdapter;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_nfc_ANfcAdapter$1$36976c79proceed(Landroid/nfc/INfcAdapter;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 5
    .param p0, "this"    # Landroid/nfc/INfcAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_ANfcAdapter$android_nfc_ANfcAdapter$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/ANfcAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_ANfcAdapter$android_nfc_NfcActivityManager$mAdapter(Landroid/nfc/NfcActivityManager;)Landroid/nfc/NfcAdapter;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_ANfcAdapter$android_nfc_NfcAdapter$sService()Landroid/nfc/INfcAdapter;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_ANfcAdapter$android_nfc_ANfcAdapter$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/nfc/ANfcAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_ANfcAdapter$android_nfc_NfcActivityManager$mAdapter(Landroid/nfc/NfcActivityManager;Landroid/nfc/NfcAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_ANfcAdapter$android_nfc_NfcAdapter$sService(Landroid/nfc/INfcAdapter;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/nfc/ANfcAdapter;

    invoke-direct {v0}, Landroid/nfc/ANfcAdapter;-><init>()V

    sput-object v0, Landroid/nfc/ANfcAdapter;->ajc$perSingletonInstance:Landroid/nfc/ANfcAdapter;

    return-void
.end method

.method public static aspectOf()Landroid/nfc/ANfcAdapter;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/ANfcAdapter;->ajc$perSingletonInstance:Landroid/nfc/ANfcAdapter;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_nfc_ANfcAdapter"

    sget-object v2, Landroid/nfc/ANfcAdapter;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/nfc/ANfcAdapter;->ajc$perSingletonInstance:Landroid/nfc/ANfcAdapter;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/ANfcAdapter;->ajc$perSingletonInstance:Landroid/nfc/ANfcAdapter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_nfc_ANfcAdapter$1$36976c79(Landroid/nfc/INfcAdapter;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 8
    .param p1, "service"    # Landroid/nfc/INfcAdapter;
    .param p2, "thisObject"    # Ljava/lang/Object;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "service,thisObject,ajc$aroundClosure"
        value = "(call(* INfcAdapter.*(..)) && (target(service) && (this(thisObject) && (within(NfcAdapter) || within(NfcActivityManager)))))"
    .end annotation

    .prologue
    .line 27
    if-nez p2, :cond_7

    .line 28
    invoke-static {p1, p2, p3}, Landroid/nfc/ANfcAdapter;->ajc$around$android_nfc_ANfcAdapter$1$36976c79proceed(Landroid/nfc/INfcAdapter;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v2

    .line 37
    :goto_6
    return-object v2

    .line 31
    :cond_7
    instance-of v2, p2, Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_14

    move-object v2, p2

    check-cast v2, Landroid/nfc/NfcAdapter;

    move-object v0, v2

    .line 33
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    :goto_f
    :try_start_f
    invoke-static {p1, p2, p3}, Landroid/nfc/ANfcAdapter;->ajc$around$android_nfc_ANfcAdapter$1$36976c79proceed(Landroid/nfc/INfcAdapter;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_1c

    move-result-object v2

    goto :goto_6

    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_14
    move-object v2, p2

    .line 31
    check-cast v2, Landroid/nfc/NfcActivityManager;

    invoke-static {v2}, Landroid/nfc/ANfcAdapter;->ajc$inlineAccessFieldGet$android_nfc_ANfcAdapter$android_nfc_NfcActivityManager$mAdapter(Landroid/nfc/NfcActivityManager;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    goto :goto_f

    .line 34
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_1c
    move-exception v1

    .line 35
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ANfcAdapter.aj"

    const-string v3, "RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 37
    invoke-static {}, Landroid/nfc/ANfcAdapter;->ajc$inlineAccessFieldGet$android_nfc_ANfcAdapter$android_nfc_NfcAdapter$sService()Landroid/nfc/INfcAdapter;

    move-result-object v2

    invoke-static {v2, p2, p3}, Landroid/nfc/ANfcAdapter;->ajc$around$android_nfc_ANfcAdapter$1$36976c79proceed(Landroid/nfc/INfcAdapter;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6
.end method
