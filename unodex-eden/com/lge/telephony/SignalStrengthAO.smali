.class public Lcom/lge/telephony/SignalStrengthAO;
.super Ljava/lang/Object;
.source "SignalStrengthAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrengthAO"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/telephony/SignalStrengthAO;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    :try_start_0
    const-string v0, "persist.callfrw.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/telephony/SignalStrengthAO;->DBG:Z

    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$postClinit()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    sput-object v0, Lcom/lge/telephony/SignalStrengthAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$10$49303bdeproceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 198
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

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$11$6bbdaa1eproceed(Landroid/telephony/SignalStrength;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 214
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

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$12$e9def03bproceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$15$8e394318proceed(Landroid/telephony/SignalStrength;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$16$62d39464proceed(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$17$3e10bd1aproceed(Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 321
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$18$5f9835d6proceed(Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/telephony/SignalStrength;
    .registers 4
    .param p0, "this"    # Landroid/os/Parcel;
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

    check-cast v0, Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$20$f85c21f9proceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 364
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

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$21$e214216proceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 376
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

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$4$77fc628bproceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
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

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$5$494738proceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 94
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

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$6$fb0c1a0proceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/telephony/SignalStrength;
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

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$7$91712da7proceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 136
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

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$8$3faf8d14proceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
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

.method static synthetic ajc$around$com_lge_telephony_SignalStrengthAO$9$8e2f640fproceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 177
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

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/lge/telephony/SignalStrengthAO;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$LOG_TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/SignalStrengthAO;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/lge/telephony/SignalStrengthAO;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$LOG_TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/telephony/SignalStrengthAO;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/telephony/SignalStrengthAO;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_telephony_SignalStrengthAO$android_telephony_SignalStrength$mLGSignalStrength(Landroid/telephony/SignalStrength;)Lcom/lge/telephony/LGSignalStrength;
    .registers 2

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_telephony_SignalStrengthAO$android_telephony_SignalStrength$mLGSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 2
    .param p0, "ajc$this_"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 15
    new-instance v0, Lcom/lge/telephony/LGSignalStrength;

    invoke-direct {v0}, Lcom/lge/telephony/LGSignalStrength;-><init>()V

    invoke-static {p0, v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$interFieldSetDispatch$com_lge_telephony_SignalStrengthAO$android_telephony_SignalStrength$mLGSignalStrength(Landroid/telephony/SignalStrength;Lcom/lge/telephony/LGSignalStrength;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_telephony_SignalStrengthAO$android_telephony_SignalStrength$mLGSignalStrength(Landroid/telephony/SignalStrength;Lcom/lge/telephony/LGSignalStrength;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/telephony/SignalStrengthAO;

    invoke-direct {v0}, Lcom/lge/telephony/SignalStrengthAO;-><init>()V

    sput-object v0, Lcom/lge/telephony/SignalStrengthAO;->ajc$perSingletonInstance:Lcom/lge/telephony/SignalStrengthAO;

    return-void
.end method

.method public static ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/telephony/SignalStrengthAO;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static aspectOf()Lcom/lge/telephony/SignalStrengthAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/SignalStrengthAO;->ajc$perSingletonInstance:Lcom/lge/telephony/SignalStrengthAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_telephony_SignalStrengthAO"

    sget-object v2, Lcom/lge/telephony/SignalStrengthAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/telephony/SignalStrengthAO;->ajc$perSingletonInstance:Lcom/lge/telephony/SignalStrengthAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/SignalStrengthAO;->ajc$perSingletonInstance:Lcom/lge/telephony/SignalStrengthAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 383
    const-string v0, "SignalStrengthAO"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method


# virtual methods
.method public ajc$after$com_lge_telephony_SignalStrengthAO$1$3f053aac(Landroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)V
    .registers 5
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "s"    # Landroid/telephony/SignalStrength;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,s"
        value = "(execution(void SignalStrength.copyFrom(SignalStrength)) && (this(obj) && args(s)))"
    .end annotation

    .prologue
    .line 25
    sget-boolean v0, Lcom/lge/telephony/SignalStrengthAO;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "copyFrom()"

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 28
    :cond_9
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    iget-object v1, p2, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, v1}, Lcom/lge/telephony/LGSignalStrength;->copyFrom(Lcom/lge/telephony/LGSignalStrength;)V

    .line 30
    return-void
.end method

.method public ajc$after$com_lge_telephony_SignalStrengthAO$13$1afd656c(Landroid/telephony/SignalStrength;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "m"    # Landroid/os/Bundle;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,m"
        value = "(execution(void SignalStrength.setFromNotifierBundle(Bundle)) && (this(obj) && args(m)))"
    .end annotation

    .prologue
    .line 246
    sget-boolean v0, Lcom/lge/telephony/SignalStrengthAO;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "setFromNotifierBundle()"

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 249
    :cond_9
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGSignalStrength;->readFrom(Landroid/os/Bundle;)V

    .line 251
    return-void
.end method

.method public ajc$after$com_lge_telephony_SignalStrengthAO$14$4f57acca(Landroid/telephony/SignalStrength;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "m"    # Landroid/os/Bundle;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,m"
        value = "(execution(void SignalStrength.fillInNotifierBundle(Bundle)) && (this(obj) && args(m)))"
    .end annotation

    .prologue
    .line 261
    sget-boolean v0, Lcom/lge/telephony/SignalStrengthAO;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "fillInNotifierBundle()"

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 264
    :cond_9
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGSignalStrength;->writeTo(Landroid/os/Bundle;)V

    .line 266
    return-void
.end method

.method public ajc$after$com_lge_telephony_SignalStrengthAO$19$d8d03612(Landroid/telephony/SignalStrength;)V
    .registers 3
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj"
        value = "(execution(void SignalStrength.validateInput()) && this(obj))"
    .end annotation

    .prologue
    .line 350
    sget-boolean v0, Lcom/lge/telephony/SignalStrengthAO;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "validateInput()"

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 352
    :cond_9
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0}, Lcom/lge/telephony/LGSignalStrength;->validateInput()V

    .line 353
    return-void
.end method

.method public ajc$after$com_lge_telephony_SignalStrengthAO$2$b85e0924(Landroid/telephony/SignalStrength;Landroid/os/Parcel;)V
    .registers 4
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,in"
        value = "(execution(public SignalStrength.new(Parcel)) && (this(obj) && args(in)))"
    .end annotation

    .prologue
    .line 40
    sget-boolean v0, Lcom/lge/telephony/SignalStrengthAO;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "SignalStrength()"

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 43
    :cond_9
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGSignalStrength;->readFrom(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method public ajc$after$com_lge_telephony_SignalStrengthAO$3$28d0b4a9(Landroid/telephony/SignalStrength;Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "flags"    # I
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,out,flags"
        value = "(execution(void SignalStrength.writeToParcel(Parcel, int)) && (this(obj) && args(out, flags)))"
    .end annotation

    .prologue
    .line 55
    sget-boolean v0, Lcom/lge/telephony/SignalStrengthAO;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "writeToParcel()"

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 58
    :cond_9
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->writeTo(Landroid/os/Parcel;I)V

    .line 60
    return-void
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$10$49303bde(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 5
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(int SignalStrength.hashCode()) && this(obj))"
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "hashCode()"

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 202
    :cond_b
    invoke-static {p1, p2}, Lcom/lge/telephony/SignalStrengthAO;->ajc$around$com_lge_telephony_SignalStrengthAO$10$49303bdeproceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    .line 203
    iget-object v1, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 202
    add-int/2addr v0, v1

    return v0
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$11$6bbdaa1e(Landroid/telephony/SignalStrength;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,o,ajc$aroundClosure"
        value = "(execution(boolean SignalStrength.equals(Object)) && (this(obj) && args(o)))"
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "equals()"

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 218
    :cond_b
    invoke-static {p1, p2, p3}, Lcom/lge/telephony/SignalStrengthAO;->ajc$around$com_lge_telephony_SignalStrengthAO$11$6bbdaa1eproceed(Landroid/telephony/SignalStrength;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$12$e9def03b(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 5
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(String SignalStrength.toString()) && this(obj))"
    .end annotation

    .prologue
    .line 230
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "toString()"

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 233
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/lge/telephony/SignalStrengthAO;->ajc$around$com_lge_telephony_SignalStrengthAO$12$e9def03bproceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    iget-object v1, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v1}, Lcom/lge/telephony/LGSignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$15$8e394318(Landroid/telephony/SignalStrength;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "lteBand"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,lteBand,ajc$aroundClosure"
        value = "(execution(void SignalStrength.setLteBandInfo(int)) && (this(obj) && args(lteBand)))"
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLteBandInfo() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 278
    :cond_18
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGSignalStrength;->setLteBand(I)V

    .line 279
    return-void
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$16$62d39464(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "operatorName"    # Ljava/lang/String;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "operatorName,ajc$aroundClosure"
        value = "(execution(boolean SignalStrength.isOperator(String)) && args(operatorName))"
    .end annotation

    .prologue
    .line 308
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isOperator() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 310
    :cond_18
    invoke-static {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$17$3e10bd1a(Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 3
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(int SignalStrength.getOperatorLevel())"
    .end annotation

    .prologue
    .line 322
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "getOperatorLevel()"

    invoke-static {v0}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 323
    :cond_b
    sget v0, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    return v0
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$18$5f9835d6(Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/telephony/SignalStrength;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "in,ajc$aroundClosure"
        value = "(execution(SignalStrength SignalStrength.makeSignalStrengthFromRilParcel(Parcel)) && args(in))"
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "makeSignalStrengthFromRilParcel()"

    invoke-static {v1}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 337
    :cond_b
    invoke-static {p1, p2}, Lcom/lge/telephony/SignalStrengthAO;->ajc$around$com_lge_telephony_SignalStrengthAO$18$5f9835d6proceed(Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 338
    .local v0, "ss":Landroid/telephony/SignalStrength;
    iget-object v1, v0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v1, p1}, Lcom/lge/telephony/LGSignalStrength;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_LGSignalStrength$makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)V

    .line 339
    return-object v0
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$20$f85c21f9(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 5
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(int SignalStrength.getGsmDbm_DRA()) && this(obj))"
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "SignalStrengthAO"

    const-string v1, "getGsmDbm_DRA()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_d
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0}, Lcom/lge/telephony/LGSignalStrength;->getGsmDbm()I

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$21$e214216(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 5
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(int SignalStrength.getGsmEcio_DRA()) && this(obj))"
    .end annotation

    .prologue
    .line 377
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "SignalStrengthAO"

    const-string v1, "getGsmEcio_DRA()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_d
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0}, Lcom/lge/telephony/LGSignalStrength;->getGsmEcio()I

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$4$77fc628b(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 19
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(int SignalStrength.getLevel()) && this(obj))"
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "getLevel()"

    invoke-static {v1}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 74
    :cond_b
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$mGsmSignalStrength(Landroid/telephony/SignalStrength;)I

    move-result v2

    .line 75
    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$mCdmaDbm(Landroid/telephony/SignalStrength;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$mCdmaEcio(Landroid/telephony/SignalStrength;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$mEvdoDbm(Landroid/telephony/SignalStrength;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$mEvdoSnr(Landroid/telephony/SignalStrength;)I

    move-result v6

    .line 76
    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$mLteSignalStrength(Landroid/telephony/SignalStrength;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$mLteRsrp(Landroid/telephony/SignalStrength;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$mLteRssnr(Landroid/telephony/SignalStrength;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$mLteRsrq(Landroid/telephony/SignalStrength;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$mTdScdmaRscp(Landroid/telephony/SignalStrength;)I

    move-result v11

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-static {v12}, Lcom/lge/telephony/LGSignalStrength;->ajc$get$mGsmDbm(Lcom/lge/telephony/LGSignalStrength;)I

    move-result v12

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-static {v13}, Lcom/lge/telephony/LGSignalStrength;->ajc$get$mGsmEcio(Lcom/lge/telephony/LGSignalStrength;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/telephony/SignalStrength;->ajc$get$isGsm(Landroid/telephony/SignalStrength;)Z

    move-result v14

    .line 74
    invoke-virtual/range {v1 .. v14}, Lcom/lge/telephony/LGSignalStrength;->getLevel(IIIIIIIIIIIIZ)I

    move-result v15

    .line 78
    .local v15, "lgLevel":I
    const/4 v1, -0x1

    if-eq v15, v1, :cond_6b

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by mLGSignalStrength.getLevel()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 84
    .end local v15    # "lgLevel":I
    :goto_6a
    return v15

    .restart local v15    # "lgLevel":I
    :cond_6b
    invoke-static/range {p1 .. p2}, Lcom/lge/telephony/SignalStrengthAO;->ajc$around$com_lge_telephony_SignalStrengthAO$4$77fc628bproceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v15

    goto :goto_6a
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$5$494738(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 8
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(int SignalStrength.getGsmLevel()) && this(obj))"
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "getGsmLevel()"

    invoke-static {v1}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 99
    :cond_b
    iget-object v1, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    iget-object v3, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-static {v3}, Lcom/lge/telephony/LGSignalStrength;->ajc$get$mGsmDbm(Lcom/lge/telephony/LGSignalStrength;)I

    move-result v3

    iget-object v4, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-static {v4}, Lcom/lge/telephony/LGSignalStrength;->ajc$get$mGsmEcio(Lcom/lge/telephony/LGSignalStrength;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v0

    .line 101
    .local v0, "lgLevel":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 106
    .end local v0    # "lgLevel":I
    :goto_24
    return v0

    .restart local v0    # "lgLevel":I
    :cond_25
    invoke-static {p1, p2}, Lcom/lge/telephony/SignalStrengthAO;->ajc$around$com_lge_telephony_SignalStrengthAO$5$494738proceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    goto :goto_24
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$6$fb0c1a0(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 7
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(int SignalStrength.getCdmaLevel()) && this(obj))"
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "getCdmaLevel()"

    invoke-static {v1}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 120
    :cond_b
    iget-object v1, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-static {p1}, Landroid/telephony/SignalStrength;->ajc$get$mCdmaDbm(Landroid/telephony/SignalStrength;)I

    move-result v2

    invoke-static {p1}, Landroid/telephony/SignalStrength;->ajc$get$mCdmaEcio(Landroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 121
    .local v0, "lgLevel":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 126
    .end local v0    # "lgLevel":I
    :goto_1c
    return v0

    .restart local v0    # "lgLevel":I
    :cond_1d
    invoke-static {p1, p2}, Lcom/lge/telephony/SignalStrengthAO;->ajc$around$com_lge_telephony_SignalStrengthAO$6$fb0c1a0proceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    goto :goto_1c
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$7$91712da7(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 7
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(int SignalStrength.getEvdoLevel()) && this(obj))"
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "getEvdoLevel()"

    invoke-static {v1}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 140
    :cond_b
    iget-object v1, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-static {p1}, Landroid/telephony/SignalStrength;->ajc$get$mEvdoDbm(Landroid/telephony/SignalStrength;)I

    move-result v2

    invoke-static {p1}, Landroid/telephony/SignalStrength;->ajc$get$mEvdoSnr(Landroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v0

    .line 141
    .local v0, "lgLevel":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 146
    .end local v0    # "lgLevel":I
    :goto_1c
    return v0

    .restart local v0    # "lgLevel":I
    :cond_1d
    invoke-static {p1, p2}, Lcom/lge/telephony/SignalStrengthAO;->ajc$around$com_lge_telephony_SignalStrengthAO$7$91712da7proceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    goto :goto_1c
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$8$3faf8d14(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 9
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(int SignalStrength.getLteLevel()) && this(obj))"
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "getLteLevel()"

    invoke-static {v1}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 160
    :cond_b
    iget-object v1, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-static {p1}, Landroid/telephony/SignalStrength;->ajc$get$mLteSignalStrength(Landroid/telephony/SignalStrength;)I

    move-result v2

    invoke-static {p1}, Landroid/telephony/SignalStrength;->ajc$get$mLteRsrp(Landroid/telephony/SignalStrength;)I

    move-result v3

    invoke-static {p1}, Landroid/telephony/SignalStrength;->ajc$get$mLteRssnr(Landroid/telephony/SignalStrength;)I

    move-result v4

    invoke-static {p1}, Landroid/telephony/SignalStrength;->ajc$get$mLteRsrq(Landroid/telephony/SignalStrength;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v0

    .line 161
    .local v0, "lgLevel":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 166
    .end local v0    # "lgLevel":I
    :goto_24
    return v0

    .restart local v0    # "lgLevel":I
    :cond_25
    invoke-static {p1, p2}, Lcom/lge/telephony/SignalStrengthAO;->ajc$around$com_lge_telephony_SignalStrengthAO$8$3faf8d14proceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    goto :goto_24
.end method

.method public ajc$around$com_lge_telephony_SignalStrengthAO$9$8e2f640f(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p1, "obj"    # Landroid/telephony/SignalStrength;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(int SignalStrength.getTdScdmaLevel()) && this(obj))"
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/lge/telephony/SignalStrengthAO;->ajc$inlineAccessFieldGet$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "getTdScdmaLevel()"

    invoke-static {v1}, Lcom/lge/telephony/SignalStrengthAO;->ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_SignalStrengthAO$log(Ljava/lang/String;)V

    .line 181
    :cond_b
    iget-object v1, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-static {p1}, Landroid/telephony/SignalStrength;->ajc$get$mTdScdmaRscp(Landroid/telephony/SignalStrength;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/telephony/LGSignalStrength;->getTdScdmaLevel(I)I

    move-result v0

    .line 182
    .local v0, "lgLevel":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 187
    .end local v0    # "lgLevel":I
    :goto_18
    return v0

    .restart local v0    # "lgLevel":I
    :cond_19
    invoke-static {p1, p2}, Lcom/lge/telephony/SignalStrengthAO;->ajc$around$com_lge_telephony_SignalStrengthAO$9$8e2f640fproceed(Landroid/telephony/SignalStrength;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    goto :goto_18
.end method
