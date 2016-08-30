.class public Lcom/lge/telephony/LGSpecialNumberUtils;
.super Ljava/lang/Object;
.source "LGSpecialNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/telephony/LGSpecialNumberUtils$PropData;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lge.node"

.field private static final DBG:Z = false

.field public static final FORMAT_KOREA:I = 0x3

.field public static final JP_SPECIALNUMBER:[Ljava/lang/String;

.field static final LOG_TAG:Ljava/lang/String; = "LGSpecialNumberUtils"

.field private static final PRIVITE_DBG:Z

.field private static final SYSPROP_URI:Landroid/net/Uri;

.field private static final TARGET_COUNTRY:Ljava/lang/String;

.field private static final TARGET_OPERATOR:Ljava/lang/String;

.field private static sBaselineAdc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sChameleonAdc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVZWNetworkOperatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVZWVoiceMailList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v0

    if-eqz v0, :cond_26a

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    .line 58
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_OPERATOR:Ljava/lang/String;

    .line 59
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_COUNTRY:Ljava/lang/String;

    .line 71
    const-string v0, "content://com.lge.node/chameleon_properties"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->SYSPROP_URI:Landroid/net/Uri;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    const/16 v3, 0x10

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    .line 84
    const/4 v0, 0x0

    const-string v3, "support_sprint_n11"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 87
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    const-string v3, "211"

    sget v4, Lcom/lge/internal/R$string;->sp_dialer_211_NORMAL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    const-string v3, "311"

    sget v4, Lcom/lge/internal/R$string;->sp_dialer_311_NORMAL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    const-string v3, "411"

    sget v4, Lcom/lge/internal/R$string;->sp_dialer_411_NORMAL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    const-string v3, "511"

    sget v4, Lcom/lge/internal/R$string;->sp_dialer_511_NORMAL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    const-string v3, "611"

    sget v4, Lcom/lge/internal/R$string;->sp_dialer_611_NORMAL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    const-string v3, "711"

    sget v4, Lcom/lge/internal/R$string;->sp_dialer_711_NORMAL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    const-string v3, "811"

    sget v4, Lcom/lge/internal/R$string;->sp_dialer_811_NORMAL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.first.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.first.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.second.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.second.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.third.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.third.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.forth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.forth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.fifth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.fifth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.sixth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.sixth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.seventh.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.seventh.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.eighth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.eighth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.ninth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.ninth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.tenth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.tenth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.elevnth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.elevnth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.twelfth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.twelfth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.thirteenth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.thirteenth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.fourteenth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.fourteenth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.fifteenth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.fifteenth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.sixteenth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.sixteenth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.seventeenth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.seventeenth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, "adc.n11.eighteenth.number"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adc.n11.eighteenth.name"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_21f
    new-array v0, v8, [Ljava/lang/String;

    .line 236
    const-string v3, "184"

    aput-object v3, v0, v1

    .line 237
    const-string v3, "186"

    aput-object v3, v0, v2

    .line 238
    const-string v3, "*31#"

    aput-object v3, v0, v6

    .line 239
    const-string v3, "#31#"

    aput-object v3, v0, v7

    .line 235
    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->JP_SPECIALNUMBER:[Ljava/lang/String;

    .line 467
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "310"

    aput-object v3, v0, v1

    const-string v3, "311"

    aput-object v3, v0, v2

    const-string v3, "312"

    aput-object v3, v0, v6

    const-string v3, "313"

    aput-object v3, v0, v7

    const-string v3, "315"

    aput-object v3, v0, v8

    const/4 v3, 0x5

    const-string v4, "316"

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sVZWNetworkOperatorList:Ljava/util/List;

    .line 572
    new-array v0, v8, [Ljava/lang/String;

    const-string v3, "*86,"

    aput-object v3, v0, v1

    const-string v1, "MDN,1"

    aput-object v1, v0, v2

    const-string v1, "MDN,+1"

    aput-object v1, v0, v6

    const-string v1, "MDN,1,IDD"

    aput-object v1, v0, v7

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sVZWVoiceMailList:[Ljava/lang/String;

    return-void

    :cond_26a
    move v0, v2

    .line 55
    goto/16 :goto_e
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertInternational611Number(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-static {}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v4

    .line 534
    .local v4, "currentCountry":Lcom/lge/telephony/LGReferenceCountry;
    move-object v2, p0

    .line 535
    .local v2, "convertNumber":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "IddNumber":Ljava/lang/String;
    const-string v1, "19085594899"

    .line 538
    .local v1, "International611Number":Ljava/lang/String;
    sget-boolean v5, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v5, :cond_23

    .line 539
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "convertInternational611Number()...\tbefore number = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_23
    if-nez v4, :cond_27

    move-object v3, v2

    .line 568
    .end local v2    # "convertNumber":Ljava/lang/String;
    .local v3, "convertNumber":Ljava/lang/String;
    :goto_26
    return-object v3

    .line 546
    .end local v3    # "convertNumber":Ljava/lang/String;
    .restart local v2    # "convertNumber":Ljava/lang/String;
    :cond_27
    sget-boolean v5, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v5, :cond_3f

    .line 547
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IddNumber() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_3f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_93

    .line 551
    invoke-static {}, Lcom/lge/telephony/LGSpecialNumberUtils;->isVZWCDMANetwork()Z

    move-result v5

    if-nez v5, :cond_5f

    .line 552
    if-eqz v4, :cond_79

    invoke-virtual {v4}, Lcom/lge/telephony/LGReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 553
    move-object v2, v1

    .line 564
    :cond_5f
    :goto_5f
    sget-boolean v5, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v5, :cond_77

    .line 565
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "convertInternational611Number()... after number = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    move-object v3, v2

    .line 568
    .end local v2    # "convertNumber":Ljava/lang/String;
    .restart local v3    # "convertNumber":Ljava/lang/String;
    goto :goto_26

    .line 554
    .end local v3    # "convertNumber":Ljava/lang/String;
    .restart local v2    # "convertNumber":Ljava/lang/String;
    :cond_79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 556
    goto :goto_5f

    .line 557
    :cond_91
    move-object v2, v1

    .line 560
    goto :goto_5f

    :cond_93
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5f

    .line 561
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5f
.end method

.method public static convertInternationalVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-static {}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v3

    .line 492
    .local v3, "currentCountry":Lcom/lge/telephony/LGReferenceCountry;
    move-object v1, p0

    .line 493
    .local v1, "convertNumber":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "IddNumber":Ljava/lang/String;
    sget-boolean v4, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v4, :cond_21

    .line 496
    const-string v4, "LGSpecialNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "convertInternationalVoiceMailNumber()...\tbefore number = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_21
    if-nez v3, :cond_25

    move-object v2, v1

    .line 526
    .end local v1    # "convertNumber":Ljava/lang/String;
    .local v2, "convertNumber":Ljava/lang/String;
    :goto_24
    return-object v2

    .line 503
    .end local v2    # "convertNumber":Ljava/lang/String;
    .restart local v1    # "convertNumber":Ljava/lang/String;
    :cond_25
    sget-boolean v4, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v4, :cond_59

    .line 504
    const-string v4, "LGSpecialNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IddNumber() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v4, "LGSpecialNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getLine1Number() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_59
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e8

    .line 509
    invoke-static {}, Lcom/lge/telephony/LGSpecialNumberUtils;->isVZWCDMANetwork()Z

    move-result v4

    if-nez v4, :cond_8f

    .line 510
    if-eqz v3, :cond_aa

    invoke-virtual {v3}, Lcom/lge/telephony/LGReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    :cond_8f
    :goto_8f
    sget-boolean v4, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v4, :cond_a7

    .line 523
    const-string v4, "LGSpecialNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "convertInternationalVoiceMailNumber()... after number = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    move-object v2, v1

    .line 526
    .end local v1    # "convertNumber":Ljava/lang/String;
    .restart local v2    # "convertNumber":Ljava/lang/String;
    goto/16 :goto_24

    .line 512
    .end local v2    # "convertNumber":Ljava/lang/String;
    .restart local v1    # "convertNumber":Ljava/lang/String;
    :cond_aa
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d0

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    goto :goto_8f

    .line 515
    :cond_d0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    goto :goto_8f

    :cond_e8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8f

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8f
.end method

.method public static extractNetworkPortionAltJP(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v0, "KDDI"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "SBM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "JCM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 230
    :cond_18
    invoke-static {p0}, Lcom/lge/telephony/LGSpecialNumberUtils;->extractSpecialNumberPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 232
    :cond_1c
    return-object p0
.end method

.method public static extractSpecialNumberPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 262
    :cond_6
    :goto_6
    return-object p0

    .line 252
    :cond_7
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->JP_SPECIALNUMBER:[Ljava/lang/String;

    array-length v1, v2

    .line 253
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_6

    .line 255
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->JP_SPECIALNUMBER:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 257
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->JP_SPECIALNUMBER:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 258
    goto :goto_6

    .line 253
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static formatKoreanNumber(Landroid/text/Editable;)V
    .registers 1
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 202
    invoke-static {p0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 203
    return-void
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .registers 2
    .param p0, "edit"    # Landroid/text/Editable;
    .param p1, "formatType"    # I

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_8

    .line 214
    :goto_3
    return-void

    .line 211
    :pswitch_4
    invoke-static {p0}, Lcom/lge/telephony/LGSpecialNumberUtils;->formatKoreanNumber(Landroid/text/Editable;)V

    goto :goto_3

    .line 208
    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_4
    .end packed-switch
.end method

.method private static getCurrentIdd()Ljava/lang/String;
    .registers 3

    .prologue
    .line 575
    const-string v1, "gsm.operator.idpstring"

    const-string v2, "011"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "idd":Ljava/lang/String;
    return-object v0
.end method

.method public static getDialStringForSprint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 632
    const-string v5, "assist_dial"

    .line 631
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 633
    .local v3, "isSmartDiallingEnabled":I
    if-nez v3, :cond_16

    .line 634
    const-string v4, "LGSpecialNumberUtils"

    const-string v5, "Smart Dialing OFF"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 655
    .end local p1    # "dialString":Ljava/lang/String;
    .local v0, "dialString":Ljava/lang/String;
    :goto_15
    return-object v0

    .line 637
    .end local v0    # "dialString":Ljava/lang/String;
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 638
    const-string v4, "us"

    const-string v5, "gsm.operator.iso-country"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_35

    .line 639
    const-string v4, "LGSpecialNumberUtils"

    const-string v5, "Dialed from US"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 640
    .end local p1    # "dialString":Ljava/lang/String;
    .restart local v0    # "dialString":Ljava/lang/String;
    goto :goto_15

    .line 642
    .end local v0    # "dialString":Ljava/lang/String;
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_35
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 643
    const/4 v1, 0x0

    .line 645
    .local v1, "dialfromContact":I
    :try_start_3c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assist_dial_from_contact"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 646
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assist_dial_from_contact"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_50
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3c .. :try_end_50} :catch_6a

    .line 650
    :goto_50
    const/4 v4, 0x1

    if-eq v4, v1, :cond_59

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 651
    :cond_59
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v1    # "dialfromContact":I
    :cond_68
    move-object v0, p1

    .line 655
    .end local p1    # "dialString":Ljava/lang/String;
    .restart local v0    # "dialString":Ljava/lang/String;
    goto :goto_15

    .line 647
    .end local v0    # "dialString":Ljava/lang/String;
    .restart local v1    # "dialfromContact":I
    .restart local p1    # "dialString":Ljava/lang/String;
    :catch_6a
    move-exception v2

    .line 648
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_50
.end method

.method public static getInternationalVoiceMailNumber(Ljava/lang/String;)Z
    .registers 15
    .param p0, "dialNumber"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 581
    const/4 v3, 0x0

    .line 582
    .local v3, "isVoiceMailNumber":Z
    const-string v6, ""

    .line 584
    .local v6, "outNumber":Ljava/lang/String;
    if-nez p0, :cond_9

    .line 625
    :goto_8
    return v7

    .line 588
    :cond_9
    sget-object v1, Lcom/lge/telephony/LGSpecialNumberUtils;->sVZWVoiceMailList:[Ljava/lang/String;

    .line 591
    .local v1, "convertMaps":[Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, "mMDN":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 594
    .local v4, "length":I
    array-length v9, v1

    move v8, v7

    :goto_19
    if-lt v8, v9, :cond_55

    .line 619
    :goto_1b
    sget-boolean v7, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v7, :cond_53

    .line 620
    if-eqz v3, :cond_53

    .line 621
    const-string v7, "LGSpecialNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isInternationalVoiceMailNumber() dialNumber = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , outNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v7, "LGSpecialNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isInternationalVoiceMailNumber() isVoiceMailNumber = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    move v7, v3

    .line 625
    goto :goto_8

    .line 594
    :cond_55
    aget-object v0, v1, v8

    .line 596
    .local v0, "convertMap":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "entry":[Ljava/lang/String;
    aget-object v10, v2, v7

    const-string v11, "MDN"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_bd

    const/16 v10, 0xa

    if-lt v4, v10, :cond_bd

    .line 599
    array-length v10, v2

    const/4 v11, 0x3

    if-lt v10, v11, :cond_9c

    aget-object v10, v2, v13

    const-string v11, "IDD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9c

    .line 600
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/telephony/LGSpecialNumberUtils;->getCurrentIdd()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v2, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 607
    :goto_94
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 608
    const/4 v3, 0x1

    .line 609
    goto :goto_1b

    .line 601
    :cond_9c
    array-length v10, v2

    if-lt v10, v13, :cond_bb

    aget-object v10, v2, v12

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bb

    .line 602
    new-instance v10, Ljava/lang/StringBuilder;

    aget-object v11, v2, v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 603
    goto :goto_94

    .line 604
    :cond_bb
    move-object v6, v5

    goto :goto_94

    .line 612
    :cond_bd
    aget-object v10, v2, v7

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d0

    aget-object v10, v2, v7

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 613
    const/4 v3, 0x1

    .line 614
    goto/16 :goto_1b

    .line 594
    :cond_d0
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_19
.end method

.method public static getLocaleInfo()Ljava/util/Locale;
    .registers 3

    .prologue
    .line 218
    const-string v1, "KR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 219
    const-string v1, "gsm.operator.iso-country"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "currIso":Ljava/lang/String;
    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 221
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 224
    :goto_1a
    return-object v1

    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_1a
.end method

.method public static getN11OrSpecialNumberString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 142
    sget-object v1, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 160
    :cond_9
    :goto_9
    return-object v0

    .line 153
    :cond_a
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    sget-object v1, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 156
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9

    .line 157
    :cond_1f
    sget-object v1, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 158
    sget-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static getValidMdnForVZW(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "mdnNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 168
    const/4 v3, 0x0

    .line 170
    .local v3, "validMdn":Ljava/lang/String;
    move-object v3, p0

    .line 172
    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 173
    .local v2, "mdnNumberLength":I
    :goto_9
    const/16 v5, 0xa

    if-lt v2, v5, :cond_3d

    .line 174
    add-int/lit8 v5, v2, -0xa

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 181
    .local v0, "chArr":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_58

    .line 188
    const-string v5, "0000000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 189
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "validMdn = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "chArr":[C
    .end local v1    # "i":I
    :goto_3a
    return-object v4

    .line 172
    .end local v2    # "mdnNumberLength":I
    :cond_3b
    const/4 v2, 0x0

    goto :goto_9

    .line 176
    .restart local v2    # "mdnNumberLength":I
    :cond_3d
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MDN length is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", so return null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 182
    .restart local v0    # "chArr":[C
    .restart local v1    # "i":I
    :cond_58
    aget-char v5, v0, v1

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-nez v5, :cond_81

    .line 183
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chArr["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-char v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 181
    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_84
    move-object v4, v3

    .line 193
    goto :goto_3a
.end method

.method public static is611DialNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 480
    const-string v0, "*611"

    .line 482
    .local v0, "is611Check":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 483
    const/4 v1, 0x1

    .line 486
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static isJapanEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "numbers"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x1

    const/4 v11, 0x4

    const/4 v6, 0x0

    .line 688
    const-string v3, ""

    .line 689
    .local v3, "tempERNumber":Ljava/lang/String;
    const-string v1, "0"

    .line 691
    .local v1, "mcc":Ljava/lang/String;
    const-string v7, "LGSpecialNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Telephony]isJapanEmergencyNumber, number ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-eqz p1, :cond_32

    .line 694
    const-string v7, "LGSpecialNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Telephony]isJapanEmergencyNumber, numbers ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_32
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 707
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-eq v7, v5, :cond_42

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-ne v7, v11, :cond_ee

    .line 708
    :cond_42
    const-string v7, "*31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_52

    const-string v7, "#31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 709
    :cond_52
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 716
    :goto_56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "08"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "110"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "112"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "118"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "119"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "911"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "999"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 719
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d3

    .line 720
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_d1
    if-lt v7, v9, :cond_db

    :cond_d3
    move v5, v6

    .line 946
    :cond_d4
    :goto_d4
    return v5

    .line 712
    :cond_d5
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_56

    .line 720
    :cond_db
    aget-object v0, v8, v7

    .line 721
    .local v0, "emergencyNum":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_eb

    .line 722
    const-string v6, "LGSpecialNumberUtils"

    const-string v7, "[Telephony]isEmergencyNumber, emergencyNum.equals(number), No USIM"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 720
    :cond_eb
    add-int/lit8 v7, v7, 0x1

    goto :goto_d1

    .line 733
    .end local v0    # "emergencyNum":Ljava/lang/String;
    :cond_ee
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-nez v7, :cond_1a3

    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a3

    .line 734
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "08"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "110"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "112"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "118"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "119"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "911"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "999"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 740
    const-string v7, "*31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_179

    const-string v7, "#31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18a

    .line 741
    :cond_179
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 750
    :goto_17d
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_185
    if-lt v7, v9, :cond_18f

    move v5, v6

    .line 756
    goto/16 :goto_d4

    .line 744
    :cond_18a
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_17d

    .line 750
    :cond_18f
    aget-object v0, v8, v7

    .line 751
    .restart local v0    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a0

    .line 752
    const-string v6, "LGSpecialNumberUtils"

    const-string v7, "[Telephony]isEmergencyNumber, emergencyNum.equals(number), number in EF_ECC"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d4

    .line 750
    :cond_1a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_185

    .line 764
    .end local v0    # "emergencyNum":Ljava/lang/String;
    :cond_1a3
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1bb

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_1bb

    .line 765
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 772
    :cond_1bb
    const-string v7, "LGSpecialNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Telephony] isEmergencyNumber, tm.getSimOperator() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v2, 0x0

    .line 774
    .local v2, "simMcc":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_200

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_200

    .line 775
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 776
    const-string v7, "LGSpecialNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Telephony]isEmergencyNumber, simMcc ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_200
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2ba

    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2ba

    .line 781
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_233

    .line 788
    const-string v7, "*31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_225

    const-string v7, "#31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d1

    .line 789
    :cond_225
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 797
    :goto_229
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_231
    if-lt v7, v9, :cond_3d7

    .line 809
    :cond_233
    if-eqz v2, :cond_3ec

    const-string v7, "440"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24d

    const-string v7, "441"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24d

    const-string v7, "001"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3ec

    .line 810
    :cond_24d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "110"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "118"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "119"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "112"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "911"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 816
    :goto_296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2ba

    .line 826
    const-string v7, "*31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2ac

    const-string v7, "#31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_413

    .line 827
    :cond_2ac
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 836
    :goto_2b0
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_2b8
    if-lt v7, v9, :cond_419

    .line 849
    :cond_2ba
    const-string v7, "440"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_313

    const-string v7, "441"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_313

    .line 850
    const-string v7, "*31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2da

    const-string v7, "#31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42e

    .line 851
    :cond_2da
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 856
    :goto_2de
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "112"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "911"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_313

    .line 864
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_311
    if-lt v7, v9, :cond_434

    .line 875
    :cond_313
    const-string v7, "440"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_323

    const-string v7, "441"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3ce

    .line 876
    :cond_323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_347

    .line 883
    const-string v7, "*31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_339

    const-string v7, "#31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_449

    .line 884
    :cond_339
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 894
    :goto_33d
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_345
    if-lt v7, v9, :cond_44f

    .line 908
    :cond_347
    if-eqz v2, :cond_45b

    const-string v7, "440"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_361

    const-string v7, "441"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_361

    const-string v7, "001"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45b

    .line 909
    :cond_361
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "110"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "118"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "119"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "112"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "911"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 914
    :goto_3aa
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3ce

    .line 924
    const-string v7, "*31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c0

    const-string v7, "#31#"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_482

    .line 925
    :cond_3c0
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 934
    :goto_3c4
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_3cc
    if-lt v7, v9, :cond_488

    :cond_3ce
    move v5, v6

    .line 946
    goto/16 :goto_d4

    .line 791
    :cond_3d1
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_229

    .line 797
    :cond_3d7
    aget-object v0, v8, v7

    .line 798
    .restart local v0    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3e8

    .line 799
    const-string v6, "LGSpecialNumberUtils"

    const-string v7, "[Telephony]isEmergencyNumber, emergencyNum.equals(number), number in EF_ECC"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d4

    .line 797
    :cond_3e8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_231

    .line 812
    .end local v0    # "emergencyNum":Ljava/lang/String;
    :cond_3ec
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "112"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "911"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_296

    .line 830
    :cond_413
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2b0

    .line 836
    :cond_419
    aget-object v0, v8, v7

    .line 837
    .restart local v0    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42a

    .line 838
    const-string v6, "LGSpecialNumberUtils"

    const-string v7, "[Telephony]isEmergencyNumber, emergencyNum.equals(number), DCM Emergency list"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d4

    .line 836
    :cond_42a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2b8

    .line 854
    .end local v0    # "emergencyNum":Ljava/lang/String;
    :cond_42e
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2de

    .line 864
    :cond_434
    aget-object v0, v8, v7

    .line 865
    .restart local v0    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_445

    .line 866
    const-string v6, "LGSpecialNumberUtils"

    const-string v7, "[Telephony]isEmergencyNumber, emergencyNum.equals(number), Roaming"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d4

    .line 864
    :cond_445
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_311

    .line 887
    .end local v0    # "emergencyNum":Ljava/lang/String;
    :cond_449
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_33d

    .line 894
    :cond_44f
    aget-object v0, v8, v7

    .line 895
    .restart local v0    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d4

    .line 894
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_345

    .line 911
    .end local v0    # "emergencyNum":Ljava/lang/String;
    :cond_45b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "112"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "911"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3aa

    .line 928
    :cond_482
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3c4

    .line 934
    :cond_488
    aget-object v0, v8, v7

    .line 935
    .restart local v0    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d4

    .line 934
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3cc
.end method

.method public static isKoreaEmergencyNumber(Ljava/lang/String;Z)Z
    .registers 10
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    const/4 v3, 0x1

    .line 267
    const-string v4, "ril.ecclist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "numbers":Ljava/lang/String;
    const-string v4, "LGSpecialNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isKoreaEmergencyNumber number="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", useExactMatch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numbers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v2, 0x0

    .line 271
    .local v2, "retB":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 274
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_3e
    if-lt v4, v6, :cond_64

    .line 287
    :cond_40
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 288
    invoke-static {p0, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->isKoreaSKTEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v2

    .line 299
    :cond_4e
    :goto_4e
    const-string v3, "LGSpecialNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isKoreaEmergencyNumber : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 300
    :cond_63
    :goto_63
    return v3

    .line 274
    :cond_64
    aget-object v0, v5, v4

    .line 275
    .local v0, "emergencyNum":Ljava/lang/String;
    if-eqz p1, :cond_71

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_63

    .line 274
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 280
    :cond_71
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6e

    goto :goto_63

    .line 289
    .end local v0    # "emergencyNum":Ljava/lang/String;
    :cond_78
    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 290
    invoke-static {p0, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->isKoreaKTEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v2

    .line 291
    goto :goto_4e

    :cond_87
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 292
    invoke-static {p0, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->isKoreaLGUEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v2

    .line 294
    goto :goto_4e

    :cond_96
    const-string v3, "KR"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 295
    invoke-static {p0, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->isKoreaMVNOEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_4e
.end method

.method private static isKoreaKTEmergencyNumber(Ljava/lang/String;Z)Z
    .registers 10
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, "numbers":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "domestic_ecclist"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 362
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_18
    if-lt v4, v6, :cond_1c

    move v2, v3

    .line 372
    :cond_1b
    :goto_1b
    return v2

    .line 362
    :cond_1c
    aget-object v0, v5, v4

    .line 363
    .local v0, "emergencyNum":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 362
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 372
    .end local v0    # "emergencyNum":Ljava/lang/String;
    :cond_27
    const-string v4, "112"

    invoke-static {p0, v4, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "911"

    invoke-static {p0, v4, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1b

    move v2, v3

    goto :goto_1b
.end method

.method private static isKoreaLGUEmergencyNumber(Ljava/lang/String;Z)Z
    .registers 12
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 376
    const/4 v2, 0x0

    .line 377
    .local v2, "numbers":Ljava/lang/String;
    const/4 v0, 0x0

    .line 378
    .local v0, "IsUsimRoaming":Z
    const-string v6, "persist.radio.camped_mccmnc"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "usimMccMnc":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "number="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 381
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "usimMccMnc="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 383
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_58

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_58

    .line 384
    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "450"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "001"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    .line 385
    const/4 v0, 0x1

    .line 389
    :cond_58
    const-string v6, "true"

    const-string v7, "gsm.operator.isroaming"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_68

    if-eqz v0, :cond_92

    .line 390
    :cond_68
    const-string v6, "LGU_roaming_ecclist"

    invoke-static {v8, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    :goto_6e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LG U+ ecclist : numbers="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 399
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d9

    .line 402
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_8e
    if-lt v6, v8, :cond_ce

    move v4, v5

    .line 412
    :cond_91
    :goto_91
    return v4

    .line 391
    :cond_92
    const-string v6, "ril.card_operator"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "LGU"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 392
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c7

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LGU_ecclist"

    invoke-static {v8, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ",114"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    goto :goto_6e

    .line 395
    :cond_c7
    const-string v6, "LGU_ecclist"

    invoke-static {v8, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6e

    .line 402
    :cond_ce
    aget-object v1, v7, v6

    .line 403
    .local v1, "emergencyNum":Ljava/lang/String;
    invoke-static {p0, v1, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_91

    .line 402
    add-int/lit8 v6, v6, 0x1

    goto :goto_8e

    .line 412
    .end local v1    # "emergencyNum":Ljava/lang/String;
    :cond_d9
    const-string v6, "112"

    invoke-static {p0, v6, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_91

    const-string v6, "911"

    invoke-static {p0, v6, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_91

    move v4, v5

    goto :goto_91
.end method

.method private static isKoreaMVNOEmergencyNumber(Ljava/lang/String;Z)Z
    .registers 10
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 417
    const/4 v1, 0x0

    .line 419
    .local v1, "numbers":Ljava/lang/String;
    const-string v4, "true"

    const-string v5, "gsm.operator.isroaming"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 420
    const-string v1, "112,119,122,911"

    .line 429
    :goto_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 432
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_21
    if-lt v4, v6, :cond_28

    move v2, v3

    .line 442
    :cond_24
    :goto_24
    return v2

    .line 422
    :cond_25
    const-string v1, "112,119,122,113,125,111,117,118,911"

    goto :goto_13

    .line 432
    :cond_28
    aget-object v0, v5, v4

    .line 433
    .local v0, "emergencyNum":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_24

    .line 432
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 442
    .end local v0    # "emergencyNum":Ljava/lang/String;
    :cond_33
    const-string v4, "112"

    invoke-static {p0, v4, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "911"

    invoke-static {p0, v4, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_24

    move v2, v3

    goto :goto_24
.end method

.method private static isKoreaSKTEmergencyNumber(Ljava/lang/String;Z)Z
    .registers 14
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 304
    const/4 v3, 0x0

    .line 305
    .local v3, "numbers":Ljava/lang/String;
    const/4 v0, 0x0

    .line 306
    .local v0, "IsUsimRoaming":Z
    const-string v8, "persist.radio.camped_mccmnc"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "usimMccMnc":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "number="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 309
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "usimMccMnc="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 311
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_58

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_58

    .line 312
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "450"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_58

    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "001"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_58

    .line 313
    const/4 v0, 0x1

    .line 317
    :cond_58
    const-string v8, "true"

    const-string v9, "gsm.operator.isroaming"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_68

    if-eqz v0, :cond_f1

    .line 319
    :cond_68
    const-string v8, "gsm.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "numeric":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e5

    const-string v2, ""

    .line 322
    .local v2, "mcc":Ljava/lang/String;
    :goto_76
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mcc="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 324
    const-string v8, "202"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a8

    const-string v8, "206"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a8

    const-string v8, "222"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a8

    const-string v8, "505"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ea

    .line 325
    :cond_a8
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "roaming"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_ecclist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :goto_c1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SKT ecclist : numbers = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 335
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_103

    .line 338
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v8, v7

    :goto_e1
    if-lt v8, v10, :cond_f8

    move v6, v7

    .line 348
    :cond_e4
    :goto_e4
    return v6

    .line 320
    .restart local v4    # "numeric":Ljava/lang/String;
    :cond_e5
    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    .line 327
    .restart local v2    # "mcc":Ljava/lang/String;
    :cond_ea
    const-string v8, "roaming_ecclist"

    invoke-static {v11, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    goto :goto_c1

    .line 330
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :cond_f1
    const-string v8, "domestic_ecclist"

    invoke-static {v11, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c1

    .line 338
    :cond_f8
    aget-object v1, v9, v8

    .line 339
    .local v1, "emergencyNum":Ljava/lang/String;
    invoke-static {p0, v1, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_e4

    .line 338
    add-int/lit8 v8, v8, 0x1

    goto :goto_e1

    .line 348
    .end local v1    # "emergencyNum":Ljava/lang/String;
    :cond_103
    const-string v8, "112"

    invoke-static {p0, v8, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_e4

    const-string v8, "911"

    invoke-static {p0, v8, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_e4

    move v6, v7

    goto :goto_e4
.end method

.method public static isN11orSpecialNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 122
    sget-object v1, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 135
    :cond_9
    :goto_9
    return v0

    .line 133
    :cond_a
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 135
    sget-object v1, Lcom/lge/telephony/LGSpecialNumberUtils;->sBaselineAdc:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    sget-object v1, Lcom/lge/telephony/LGSpecialNumberUtils;->sChameleonAdc:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1e
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isNoSlashNumberFormat(Ljava/lang/String;)Z
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 662
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v3, "ORG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v3, "OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 663
    :cond_1e
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v3, "EU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v3, "COM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 664
    :cond_32
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, "numeric":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 667
    .local v0, "length":I
    const-string v2, "231"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4c

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4e

    .line 668
    :cond_4c
    const/4 v2, 0x1

    .line 671
    .end local v0    # "length":I
    .end local v1    # "numeric":Ljava/lang/String;
    :goto_4d
    return v2

    :cond_4e
    const/4 v2, 0x0

    goto :goto_4d
.end method

.method private static isVZWCDMANetwork()Z
    .registers 4

    .prologue
    .line 471
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "networkOperator":Ljava/lang/String;
    sget-object v1, Lcom/lge/telephony/LGSpecialNumberUtils;->sVZWNetworkOperatorList:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "enforce"    # Z

    .prologue
    .line 462
    return-void
.end method

.method private static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 447
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 448
    :cond_c
    const/4 v0, 0x0

    .line 454
    :goto_d
    return v0

    .line 451
    :cond_e
    if-eqz p2, :cond_15

    .line 452
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d

    .line 454
    :cond_15
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method

.method public static removeSlashesIfNoSlashNumberFormat(Landroid/text/Editable;)V
    .registers 5
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 676
    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "slashRemovedNumber":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/LGSpecialNumberUtils;->isNoSlashNumberFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 679
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 681
    :cond_1a
    return-void
.end method

.method public static setStringADC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ss"    # Ljava/lang/String;
    .param p2, "number_key"    # Ljava/lang/String;
    .param p3, "name_key"    # Ljava/lang/String;

    .prologue
    .line 969
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, ","

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 970
    :cond_10
    const-string v2, ""

    .line 971
    .local v2, "number":Ljava/lang/String;
    const-string v1, ""

    .line 984
    .local v1, "name":Ljava/lang/String;
    :goto_14
    invoke-static {p0, p2, v2}, Lcom/lge/telephony/LGSpecialNumberUtils;->setStringProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-static {p0, p3, v1}, Lcom/lge/telephony/LGSpecialNumberUtils;->setStringProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :goto_1a
    return-void

    .line 973
    :cond_1b
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 975
    .local v0, "commaIndex":I
    if-lez v0, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3b

    .line 976
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 977
    .restart local v2    # "number":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 978
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_14

    .line 979
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :cond_3b
    const-string v3, "LGSpecialNumberUtils"

    const-string v4, "setStringADC() INVALID FORMAT!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public static setStringProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 953
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 954
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 958
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->SYSPROP_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 961
    return-void
.end method
