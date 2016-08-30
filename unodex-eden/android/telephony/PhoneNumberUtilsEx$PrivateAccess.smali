.class public Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtilsEx;
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
.field private static final MIN_MATCH:I

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 115
    :try_start_0
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 116
    const/16 v0, 0xb

    sput v0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->MIN_MATCH:I

    .line 120
    :goto_12
    invoke-static {}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$postClinit()V

    .line 122
    :goto_15
    return-void

    .line 117
    :cond_16
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 118
    const/16 v0, 0x8

    sput v0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->MIN_MATCH:I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_12

    .line 120
    :catch_29
    move-exception v0

    sput-object v0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_15

    :cond_2d
    :try_start_2d
    const-string v0, "persist.env.c.phone.matchnum"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->MIN_MATCH:I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_36} :catch_29

    goto :goto_12
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$1$8377a837proceed(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 126
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

.method static synthetic ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$2$2d88e990proceed(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 132
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

.method static synthetic ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$3$96cf83edproceed(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 138
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

.method static synthetic ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$4$e84b5875proceed(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 144
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

.method static synthetic ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$5$441c2a9dproceed(Ljava/lang/String;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 150
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

.method public static synthetic ajc$inlineAccessFieldGet$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$PrivateAccess$MIN_MATCH()I
    .registers 1

    .prologue
    .line 1
    sget v0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->MIN_MATCH:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$PrivateAccess$MIN_MATCH(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->MIN_MATCH:I

    return-void
.end method

.method public static ajc$interMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 4
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->aspectOf()Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess$AjcClosure1;

    invoke-direct {v2, v1}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess$AjcClosure1;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$1$8377a837(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 111
    invoke-static {}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->aspectOf()Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess$AjcClosure7;

    invoke-direct {v2, v1}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess$AjcClosure7;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, v2}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$4$e84b5875(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "b"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 110
    invoke-static {}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->aspectOf()Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess$AjcClosure5;

    invoke-direct {v2, v1}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess$AjcClosure5;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, v2}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$3$96cf83ed(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 109
    invoke-static {}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->aspectOf()Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess$AjcClosure3;

    invoke-direct {v2, v1}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess$AjcClosure3;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, v2}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$2$2d88e990(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 2
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtilsEx;->ajc$interMethodDispatch2$android_telephony_PhoneNumberUtilsEx$indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtilsEx;->ajc$interMethodDispatch2$android_telephony_PhoneNumberUtilsEx$matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "b"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtilsEx;->ajc$interMethodDispatch2$android_telephony_PhoneNumberUtilsEx$matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtilsEx;->ajc$interMethodDispatch2$android_telephony_PhoneNumberUtilsEx$matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;

    invoke-direct {v0}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;

    return-void
.end method

.method public static aspectOf()Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_telephony_PhoneNumberUtilsEx$PrivateAccess"

    sget-object v2, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static final indexOfLastNetworkChar_aroundBody0(Ljava/lang/String;)I
    .registers 2
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method static final matchIntlPrefixAndCC_aroundBody4(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "b"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method static final matchIntlPrefix_aroundBody6(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method static final matchTrunkPrefix_aroundBody2(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$1$8377a837(Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "a,ajc$aroundClosure"
        value = "(execution(private static int PhoneNumberUtilsEx.indexOfLastNetworkChar(String)) && args(a))"
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->ajc$privMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtils$indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$2$2d88e990(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "a,i,ajc$aroundClosure"
        value = "(execution(private static boolean PhoneNumberUtilsEx.matchTrunkPrefix(String, int)) && args(a, i))"
    .end annotation

    .prologue
    .line 133
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->ajc$privMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtils$matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$3$96cf83ed(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "b,i,ajc$aroundClosure"
        value = "(execution(private static boolean PhoneNumberUtilsEx.matchIntlPrefixAndCC(String, int)) && args(b, i))"
    .end annotation

    .prologue
    .line 139
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->ajc$privMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtils$matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$4$e84b5875(Ljava/lang/String;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "a,i,ajc$aroundClosure"
        value = "(execution(private static boolean PhoneNumberUtilsEx.matchIntlPrefix(String, int)) && args(a, i))"
    .end annotation

    .prologue
    .line 145
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->ajc$privMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtils$matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public ajc$around$android_telephony_PhoneNumberUtilsEx$PrivateAccess$5$441c2a9d(Ljava/lang/String;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "a,b,ajc$aroundClosure"
        value = "(execution(public boolean PhoneNumberUtils.compareLoosely(String, String)) && args(a, b))"
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$inlineAccessFieldGet$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$PrivateAccess$MIN_MATCH()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtilsEx;->compareLoosely(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
