.class public Lcom/lge/nfcaddon/ANfcAdapterAddon;
.super Ljava/lang/Object;
.source "ANfcAdapterAddon.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ANfcAdapterAddon.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/nfcaddon/ANfcAdapterAddon;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    :try_start_0
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    :goto_f
    sput-boolean v0, Lcom/lge/nfcaddon/ANfcAdapterAddon;->DBG:Z

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$postClinit()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_17

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x1

    goto :goto_f

    :catch_17
    move-exception v0

    sput-object v0, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_14
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_nfcaddon_ANfcAdapterAddon$1$29004721proceed(Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 4
    .param p0, "this"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon(Lcom/lge/nfcaddon/INfcAdapterAddon;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/nfcaddon/ANfcAdapterAddon;

    invoke-direct {v0}, Lcom/lge/nfcaddon/ANfcAdapterAddon;-><init>()V

    sput-object v0, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$perSingletonInstance:Lcom/lge/nfcaddon/ANfcAdapterAddon;

    return-void
.end method

.method public static aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$perSingletonInstance:Lcom/lge/nfcaddon/ANfcAdapterAddon;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_nfcaddon_ANfcAdapterAddon"

    sget-object v2, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$perSingletonInstance:Lcom/lge/nfcaddon/ANfcAdapterAddon;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$perSingletonInstance:Lcom/lge/nfcaddon/ANfcAdapterAddon;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_nfcaddon_ANfcAdapterAddon$1$29004721(Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 8
    .param p1, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p3, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "service,ajc$aroundClosure"
        value = "(call(* INfcAdapterAddon.*(..)) && (target(service) && within(NfcAdapterAddon+)))"
    .end annotation

    .prologue
    .line 18
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 20
    invoke-static {p1, p2}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$around$com_lge_nfcaddon_ANfcAdapterAddon$1$29004721proceed(Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_a
    return-object v3

    .line 24
    :cond_b
    :try_start_b
    invoke-static {p1, p2}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$around$com_lge_nfcaddon_ANfcAdapterAddon$1$29004721proceed(Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    goto :goto_a

    .line 25
    :catch_10
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$around$com_lge_nfcaddon_ANfcAdapterAddon$1$29004721proceed(Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_a
.end method
