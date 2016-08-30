.class public Lcom/lge/telephony/PhoneNumberUtilsAO;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsAO.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtilsAO"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/telephony/PhoneNumberUtilsAO;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    :try_start_0
    const-string v0, "persist.callfrw.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/telephony/PhoneNumberUtilsAO;->DBG:Z

    invoke-static {}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$postClinit()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    sput-object v0, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberUtilsAO$1$4178125cproceed(Landroid/text/Editable;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p0, "this"    # Landroid/text/Editable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
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

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberUtilsAO$2$81452323proceed(Ljava/lang/String;ZLorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 39
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

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberUtilsAO$3$fc1c050bproceed(Landroid/content/Context;ILjava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 7
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberUtilsAO$4$729540a9proceed(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
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

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberUtilsAO$5$68e981cbproceed(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
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

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberUtilsAO$6$19c6d0e1proceed(Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberUtilsAO$7$5b827c8dproceed(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
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

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberUtilsAO$8$340c4ccdproceed(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberUtilsAO$9$a61b4ec9proceed(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p0, "this"    # Ljava/lang/String;
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

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/lge/telephony/PhoneNumberUtilsAO;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$LOG_TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/PhoneNumberUtilsAO;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/lge/telephony/PhoneNumberUtilsAO;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$LOG_TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/telephony/PhoneNumberUtilsAO;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/telephony/PhoneNumberUtilsAO;

    invoke-direct {v0}, Lcom/lge/telephony/PhoneNumberUtilsAO;-><init>()V

    sput-object v0, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$perSingletonInstance:Lcom/lge/telephony/PhoneNumberUtilsAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/telephony/PhoneNumberUtilsAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$perSingletonInstance:Lcom/lge/telephony/PhoneNumberUtilsAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_telephony_PhoneNumberUtilsAO"

    sget-object v2, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$perSingletonInstance:Lcom/lge/telephony/PhoneNumberUtilsAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$perSingletonInstance:Lcom/lge/telephony/PhoneNumberUtilsAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_telephony_PhoneNumberUtilsAO$1$4178125c(Landroid/text/Editable;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p1, "edit"    # Landroid/text/Editable;
    .param p2, "formatType"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "edit,formatType,ajc$aroundClosure"
        value = "(execution(public static void PhoneNumberUtils.lgeFormatNumber(Editable, int)) && args(edit, formatType))"
    .end annotation

    .prologue
    .line 32
    invoke-static {p1, p2}, Lcom/lge/telephony/LGSpecialNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 33
    return-void
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberUtilsAO$2$81452323(Ljava/lang/String;ZLorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "number,useExactMatch,ajc$aroundClosure"
        value = "(execution(public static boolean PhoneNumberUtils.isKoreaEmergencyNumber(String, boolean)) && args(number, useExactMatch))"
    .end annotation

    .prologue
    .line 41
    invoke-static {p1, p2}, Lcom/lge/telephony/LGSpecialNumberUtils;->isKoreaEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberUtilsAO$3$fc1c050b(Landroid/content/Context;ILjava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,subId,number,ajc$aroundClosure"
        value = "(execution(boolean PhoneNumberUtils.isVoiceMailNumber(Context, int, String)) && args(context, subId, number))"
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "PhoneNumberUtilsAO"

    const-string v2, "isVoiceMailNumber()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_d
    invoke-static {p1, p2, p3, p4}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$around$com_lge_telephony_PhoneNumberUtilsAO$3$fc1c050bproceed(Landroid/content/Context;ILjava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    .line 57
    .local v0, "isVmNumber":Z
    if-nez v0, :cond_1f

    const-string v1, "VZW"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 58
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 65
    :cond_1f
    return v0
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberUtilsAO$4$729540a9(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p1, "emergencyNumbers"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "emergencyNumbers,phoneId,ajc$aroundClosure"
        value = "(execution(String PhoneNumberUtils.getEccListMerged(String, int)) && args(emergencyNumbers, phoneId))"
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PhoneNumberUtilsAO"

    const-string v1, "getEccListMerged()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_d
    invoke-static {p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getEccListMerged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberUtilsAO$5$68e981cb(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p1, "dialNumber"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "dialNumber,phoneId,ajc$aroundClosure"
        value = "(execution(boolean PhoneNumberUtils.checkEccIdleMode(String, int)) && args(dialNumber, phoneId))"
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PhoneNumberUtilsAO"

    const-string v1, "checkEccIdleMode()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_d
    invoke-static {p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->checkEccIdleMode(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberUtilsAO$6$19c6d0e1(Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(int PhoneNumberUtils.getDefaultVoiceSubId())"
    .end annotation

    .prologue
    const v3, 0x7fffffff

    .line 103
    invoke-static {}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "PhoneNumberUtilsAO"

    const-string v2, "getDefaultVoiceSubId()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_10
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    const-string v1, "CN"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "HK"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 107
    :cond_2a
    const-string v1, "ril.curr.call.sub"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, "activeSubId":I
    if-eq v0, v3, :cond_51

    .line 110
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v1

    if-eqz v1, :cond_51

    .line 111
    const-string v1, "PhoneNumberUtilsAO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dsda ecc : [getDefaultVoiceSubId] activeSubId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "activeSubId":I
    :goto_50
    return v0

    :cond_51
    invoke-static {p1}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$around$com_lge_telephony_PhoneNumberUtilsAO$6$19c6d0e1proceed(Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    goto :goto_50
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberUtilsAO$7$5b827c8d(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "text,ajc$aroundClosure"
        value = "(execution(boolean PhoneNumberUtils.isNoSlashNumberFormat(String)) && args(text))"
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PhoneNumberUtilsAO"

    const-string v1, "isNoSlashNumberFormat()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_d
    invoke-static {p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->isNoSlashNumberFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberUtilsAO$8$340c4ccd(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "number,ajc$aroundClosure"
        value = "(execution(String PhoneNumberUtils.extractNetworkPortionAltJP(String)) && args(number))"
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PhoneNumberUtilsAO"

    const-string v1, "extractNetworkPortionAltJP()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_d
    invoke-static {p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->extractNetworkPortionAltJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberUtilsAO$9$a61b4ec9(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "number,ajc$aroundClosure"
        value = "(execution(boolean PhoneNumberUtils.isHiddenMenuEcc(String)) && args(number))"
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "PhoneNumberUtilsAO"

    const-string v2, "isHiddenMenuEcc()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_d
    const/4 v1, 0x0

    const-string v2, "ecc_number_in_hidden_menu"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 159
    const-string v1, "persist.service.ecc.hiddenmenu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "HiddenMenuEccNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 161
    invoke-static {}, Lcom/lge/telephony/PhoneNumberUtilsAO;->ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberUtilsAO$com_lge_telephony_PhoneNumberUtilsAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "PhoneNumberUtilsAO"

    const-string v2, "HIDDEN_MENU TRUE"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_35
    const/4 v1, 0x1

    .line 166
    .end local v0    # "HiddenMenuEccNumber":Ljava/lang/String;
    :goto_36
    return v1

    :cond_37
    const/4 v1, 0x0

    goto :goto_36
.end method
