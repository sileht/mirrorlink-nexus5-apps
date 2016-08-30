.class public Lcom/lge/telephony/TelephonyManagerAO;
.super Ljava/lang/Object;
.source "TelephonyManagerAO.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyManagerAO"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/telephony/TelephonyManagerAO;


# instance fields
.field private mLGTelephonyManagerImpl:Lcom/lge/telephony/LGTelephonyManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    :try_start_0
    const-string v0, "persist.callfrw.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/telephony/TelephonyManagerAO;->DBG:Z

    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$postClinit()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    sput-object v0, Lcom/lge/telephony/TelephonyManagerAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/lge/telephony/LGTelephonyManagerImpl;

    invoke-direct {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/lge/telephony/TelephonyManagerAO;->mLGTelephonyManagerImpl:Lcom/lge/telephony/LGTelephonyManagerImpl;

    .line 11
    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$1$e4c97acproceed(Landroid/telephony/TelephonyManager;[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 5
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$10$e377bf05proceed(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 8
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p4, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$11$8ac63ad3proceed(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$12$eded9526proceed(Landroid/telephony/TelephonyManager;[B[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 6
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$13$308a5e1fproceed(Landroid/telephony/TelephonyManager;[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 5
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$14$6849cc10proceed(Landroid/telephony/TelephonyManager;[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 5
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$15$9883b275proceed(Landroid/telephony/TelephonyManager;[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 5
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$16$22c5f86eproceed(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 4
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$17$9b7dfc84proceed(Landroid/telephony/TelephonyManager;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 137
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

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$18$80e08224proceed(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)[I
    .registers 4
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$19$af06d854proceed(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 4
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$2$7ec24256proceed(Landroid/telephony/TelephonyManager;[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 5
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$20$b8a4abproceed(Landroid/telephony/TelephonyManager;ZLorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 160
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

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$21$16c18fa7proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$22$59738732proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$23$12982f67proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$24$c7757ee9proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$25$3f02d3deproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$26$7fb155eproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$27$3016e6d3proceed(Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$28$424934f6proceed(Lorg/aspectj/runtime/internal/AroundClosure;)I
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

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$3$fdbada67proceed(Landroid/telephony/TelephonyManager;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
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

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$4$f78def0bproceed(Landroid/telephony/TelephonyManager;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
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

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$5$a1f5d6e5proceed(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 4
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$6$51c4f68dproceed(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)[I
    .registers 4
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$7$3ef4aa24proceed(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$8$29f9d4e0proceed(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_TelephonyManagerAO$9$4ff36e80proceed(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 4
    .param p0, "this"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/lge/telephony/TelephonyManagerAO;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$LOG_TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/TelephonyManagerAO;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/telephony/TelephonyManagerAO;->mLGTelephonyManagerImpl:Lcom/lge/telephony/LGTelephonyManagerImpl;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/lge/telephony/TelephonyManagerAO;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$LOG_TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/telephony/TelephonyManagerAO;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;Lcom/lge/telephony/LGTelephonyManagerImpl;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/telephony/TelephonyManagerAO;->mLGTelephonyManagerImpl:Lcom/lge/telephony/LGTelephonyManagerImpl;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/telephony/TelephonyManagerAO;

    invoke-direct {v0}, Lcom/lge/telephony/TelephonyManagerAO;-><init>()V

    sput-object v0, Lcom/lge/telephony/TelephonyManagerAO;->ajc$perSingletonInstance:Lcom/lge/telephony/TelephonyManagerAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/telephony/TelephonyManagerAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/TelephonyManagerAO;->ajc$perSingletonInstance:Lcom/lge/telephony/TelephonyManagerAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_telephony_TelephonyManagerAO"

    sget-object v2, Lcom/lge/telephony/TelephonyManagerAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/telephony/TelephonyManagerAO;->ajc$perSingletonInstance:Lcom/lge/telephony/TelephonyManagerAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/TelephonyManagerAO;->ajc$perSingletonInstance:Lcom/lge/telephony/TelephonyManagerAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_telephony_TelephonyManagerAO$1$e4c97ac(Landroid/telephony/TelephonyManager;[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 5
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "mask"    # [B
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,mask,ajc$aroundClosure"
        value = "(this(obj) && (execution(public byte TelephonyManager.uknight_log_set(byte)) && args(mask)))"
    .end annotation

    .prologue
    .line 22
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGTelephonyManagerImpl;->uknight_log_set([B)[B

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$10$e377bf05(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 7
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "passcode"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "band"    # I
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,passcode,mode,band,ajc$aroundClosure"
        value = "(this(obj) && (execution(private int TelephonyManager.setNetworkBand(String, String, int)) && args(passcode, mode, band)))"
    .end annotation

    .prologue
    .line 87
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/lge/telephony/LGTelephonyManagerImpl;->setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$11$8ac63ad3(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(private String TelephonyManager.getMobileDebugScreen()))"
    .end annotation

    .prologue
    .line 94
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getMobileDebugScreen()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$12$eded9526(Landroid/telephony/TelephonyManager;[B[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 6
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "startcode"    # [B
    .param p3, "mask"    # [B
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,startcode,mask,ajc$aroundClosure"
        value = "(this(obj) && (execution(public byte TelephonyManager.oem_ssa_set_log(byte, byte)) && args(startcode, mask)))"
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lge/telephony/LGTelephonyManagerImpl;->oem_ssa_set_log([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$13$308a5e1f(Landroid/telephony/TelephonyManager;[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 5
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "mask"    # [B
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,mask,ajc$aroundClosure"
        value = "(this(obj) && (execution(public byte TelephonyManager.oem_ssa_set_event(byte)) && args(mask)))"
    .end annotation

    .prologue
    .line 110
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGTelephonyManagerImpl;->oem_ssa_set_event([B)[B

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$14$6849cc10(Landroid/telephony/TelephonyManager;[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 5
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "mask"    # [B
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,mask,ajc$aroundClosure"
        value = "(this(obj) && (execution(public byte TelephonyManager.oem_ssa_alarm_event(byte)) && args(mask)))"
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGTelephonyManagerImpl;->oem_ssa_alarm_event([B)[B

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$15$9883b275(Landroid/telephony/TelephonyManager;[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 5
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "mask"    # [B
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,mask,ajc$aroundClosure"
        value = "(this(obj) && (execution(public byte TelephonyManager.oem_ssa_hdv_alarm_event(byte)) && args(mask)))"
    .end annotation

    .prologue
    .line 124
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGTelephonyManagerImpl;->oem_ssa_hdv_alarm_event([B)[B

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$16$22c5f86e(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 4
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(public byte TelephonyManager.oem_ssa_get_data()))"
    .end annotation

    .prologue
    .line 131
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->oem_ssa_get_data()[B

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$17$9b7dfc84(Landroid/telephony/TelephonyManager;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "percent"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,percent,ajc$aroundClosure"
        value = "(this(obj) && (execution(public boolean TelephonyManager.oem_ssa_set_mem(int)) && args(percent)))"
    .end annotation

    .prologue
    .line 138
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGTelephonyManagerImpl;->oem_ssa_set_mem(I)Z

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$18$80e08224(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)[I
    .registers 4
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(public int TelephonyManager.oem_ssa_check_mem()))"
    .end annotation

    .prologue
    .line 145
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->oem_ssa_check_mem()[I

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$19$af06d854(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 4
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(private HashMap TelephonyManager.getMobileQualityInformation2()))"
    .end annotation

    .prologue
    .line 154
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getMobileQualityInformation2()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$2$7ec24256(Landroid/telephony/TelephonyManager;[BLorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 5
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "mask"    # [B
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,mask,ajc$aroundClosure"
        value = "(this(obj) && (execution(public byte TelephonyManager.uknight_event_set(byte)) && args(mask)))"
    .end annotation

    .prologue
    .line 29
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGTelephonyManagerImpl;->uknight_event_set([B)[B

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$20$b8a4ab(Landroid/telephony/TelephonyManager;ZLorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 5
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "mode"    # Z
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,mode,ajc$aroundClosure"
        value = "(this(obj) && (execution(private int TelephonyManager.setAirplaneMode(boolean)) && args(mode)))"
    .end annotation

    .prologue
    .line 161
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGTelephonyManagerImpl;->setAirplaneMode(Z)I

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$21$16c18fa7(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(String TelephonyManager.getNetworkOperatorName())"
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "TelephonyManagerAO"

    const-string v2, "getNetworkOperatorName()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_d
    const-string v0, ""

    .line 176
    .local v0, "networkOperatorName":Ljava/lang/String;
    const-string v1, ""

    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 177
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "TelephonyManagerAO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "networkOperatorName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0    # "networkOperatorName":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .restart local v0    # "networkOperatorName":Ljava/lang/String;
    :cond_3b
    invoke-static {p1}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$around$com_lge_telephony_TelephonyManagerAO$21$16c18fa7proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$22$59738732(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(String TelephonyManager.getNetworkOperator())"
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "TelephonyManagerAO"

    const-string v2, "getNetworkOperator()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_d
    const-string v0, ""

    .line 196
    .local v0, "networkOperator":Ljava/lang/String;
    const-string v1, ""

    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 197
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "TelephonyManagerAO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "networkOperator = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "networkOperator":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .restart local v0    # "networkOperator":Ljava/lang/String;
    :cond_3b
    invoke-static {p1}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$around$com_lge_telephony_TelephonyManagerAO$22$59738732proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$23$12982f67(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(String TelephonyManager.getNetworkCountryIso())"
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "TelephonyManagerAO"

    const-string v2, "getNetworkCountryIso()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_d
    const-string v0, ""

    .line 216
    .local v0, "networkCountryIso":Ljava/lang/String;
    const-string v1, ""

    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 217
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "TelephonyManagerAO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "networkCountryIso = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "networkCountryIso":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .restart local v0    # "networkCountryIso":Ljava/lang/String;
    :cond_3b
    invoke-static {p1}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$around$com_lge_telephony_TelephonyManagerAO$23$12982f67proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$24$c7757ee9(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(String TelephonyManager.getSimOperator())"
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "TelephonyManagerAO"

    const-string v2, "getSimOperator()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_d
    const-string v0, ""

    .line 238
    .local v0, "simOperatorName":Ljava/lang/String;
    const-string v1, ""

    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 239
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "TelephonyManagerAO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "simOperatorName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0    # "simOperatorName":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .restart local v0    # "simOperatorName":Ljava/lang/String;
    :cond_3b
    invoke-static {p1}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$around$com_lge_telephony_TelephonyManagerAO$24$c7757ee9proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$25$3f02d3de(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(String TelephonyManager.getSimOperatorName())"
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "TelephonyManagerAO"

    const-string v2, "getSimOperator()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_d
    const-string v0, ""

    .line 260
    .local v0, "simOperatorName":Ljava/lang/String;
    const-string v1, ""

    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 261
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "TelephonyManagerAO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "simOperatorName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "simOperatorName":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .restart local v0    # "simOperatorName":Ljava/lang/String;
    :cond_3b
    invoke-static {p1}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$around$com_lge_telephony_TelephonyManagerAO$25$3f02d3deproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$26$7fb155e(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(String TelephonyManager.getSimCountryIso())"
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "TelephonyManagerAO"

    const-string v2, "getSimCountryIso()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_d
    const-string v0, ""

    .line 282
    .local v0, "simCountryIso":Ljava/lang/String;
    const-string v1, ""

    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 283
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "TelephonyManagerAO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "simCountryIso = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v0    # "simCountryIso":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .restart local v0    # "simCountryIso":Ljava/lang/String;
    :cond_3b
    invoke-static {p1}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$around$com_lge_telephony_TelephonyManagerAO$26$7fb155eproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$27$3016e6d3(Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(int TelephonyManager.getCallState())"
    .end annotation

    .prologue
    .line 299
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "TelephonyManagerAO"

    const-string v2, "getCallState()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_d
    const/4 v1, 0x0

    const-string v2, "support_hfpcall_only"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 303
    const-string v1, "persist.service.hf.call.status"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "hfpCallState":Ljava/lang/String;
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "TelephonyManagerAO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hfpCallState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 311
    .end local v0    # "hfpCallState":Ljava/lang/String;
    :goto_3c
    return v1

    :cond_3d
    invoke-static {p1}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$around$com_lge_telephony_TelephonyManagerAO$27$3016e6d3proceed(Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v1

    goto :goto_3c
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$28$424934f6(Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(int TelephonyManager.getLteOnCdmaPhoneTypeForKDDI())"
    .end annotation

    .prologue
    .line 322
    invoke-static {}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "TelephonyManagerAO"

    const-string v1, "getLteOnCdmaPhoneTypeForKDDI()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_d
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getLteOnCdmaPhoneType()I

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$3$fdbada67(Landroid/telephony/TelephonyManager;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "event"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,event,ajc$aroundClosure"
        value = "(this(obj) && (execution(public boolean TelephonyManager.uknight_state_change_set(int)) && args(event)))"
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGTelephonyManagerImpl;->uknight_state_change_set(I)Z

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$4$f78def0b(Landroid/telephony/TelephonyManager;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "persent"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,persent,ajc$aroundClosure"
        value = "(this(obj) && (execution(public boolean TelephonyManager.uknight_mem_set(int)) && args(persent)))"
    .end annotation

    .prologue
    .line 43
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGTelephonyManagerImpl;->uknight_mem_set(I)Z

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$5$a1f5d6e5(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 4
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(public byte TelephonyManager.uknight_get_data()))"
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->uknight_get_data()[B

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$6$51c4f68d(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)[I
    .registers 4
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(public int TelephonyManager.uknight_mem_check()))"
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->uknight_mem_check()[I

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$7$3ef4aa24(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(private void TelephonyManager.startMobileQualityInformation()))"
    .end annotation

    .prologue
    .line 66
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->startMobileQualityInformation()V

    .line 67
    return-void
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$8$29f9d4e0(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(private void TelephonyManager.stopMobileQualityInformation()))"
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->stopMobileQualityInformation()V

    .line 74
    return-void
.end method

.method public ajc$around$com_lge_telephony_TelephonyManagerAO$9$4ff36e80(Landroid/telephony/TelephonyManager;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 4
    .param p1, "obj"    # Landroid/telephony/TelephonyManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(private HashMap TelephonyManager.getMobileQualityInformation()))"
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lcom/lge/telephony/TelephonyManagerAO;->ajc$inlineAccessFieldGet$com_lge_telephony_TelephonyManagerAO$com_lge_telephony_TelephonyManagerAO$mLGTelephonyManagerImpl(Lcom/lge/telephony/TelephonyManagerAO;)Lcom/lge/telephony/LGTelephonyManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getMobileQualityInformation()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
