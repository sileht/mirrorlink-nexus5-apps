.class public Lcom/lge/telephony/utils/AssistedDialUtils;
.super Ljava/lang/Object;
.source "AssistedDialUtils.java"


# static fields
.field static msContext:Landroid/content/Context;

.field static msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

.field private static sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sput-object p1, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".AssistedDialNumberParser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "sCheckClassName":Ljava/lang/String;
    :try_start_34
    const-string v2, "AssistedDial"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Specific parser name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/telephony/utils/AssistedDialNumberParser;

    sput-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_66} :catch_79
    .catchall {:try_start_34 .. :try_end_66} :catchall_90

    .line 57
    sget-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    if-nez v2, :cond_78

    .line 58
    const-string v2, "AssistedDial"

    const-string v3, "Using general parser."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v2, Lcom/lge/telephony/utils/AssistedDialNumberParser;

    invoke-direct {v2, p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    .line 62
    :cond_78
    :goto_78
    return-void

    .line 53
    :catch_79
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_90

    .line 57
    sget-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    if-nez v2, :cond_78

    .line 58
    const-string v2, "AssistedDial"

    const-string v3, "Using general parser."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v2, Lcom/lge/telephony/utils/AssistedDialNumberParser;

    invoke-direct {v2, p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    goto :goto_78

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_90
    move-exception v2

    .line 57
    sget-object v3, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    if-nez v3, :cond_a3

    .line 58
    const-string v3, "AssistedDial"

    const-string v4, "Using general parser."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v3, Lcom/lge/telephony/utils/AssistedDialNumberParser;

    invoke-direct {v3, p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    .line 61
    :cond_a3
    throw v2
.end method

.method public static getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;
    .registers 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    return-object v0
.end method

.method public static getAssistedDialCurrentCountry(Landroid/content/Context;)Lcom/lge/telephony/LGReferenceCountry;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    return-object v0
.end method

.method private getAssistedDialNumberInternal(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p1, "dialStr"    # Ljava/lang/String;
    .param p2, "isGSM"    # Z

    .prologue
    const/4 v6, 0x0

    .line 86
    const-string v4, "persist.radio.disable_ad"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 87
    const-string v4, "AssistedDial"

    const-string v5, "AssistedDial turned off! Returning original string"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local p1    # "dialStr":Ljava/lang/String;
    :goto_18
    return-object p1

    .line 91
    .restart local p1    # "dialStr":Ljava/lang/String;
    :cond_19
    const/4 v0, 0x0

    .line 92
    .local v0, "count":I
    const/4 v3, 0x0

    .line 93
    .local v3, "strBeforePause":Ljava/lang/String;
    const/4 v2, 0x0

    .line 94
    .local v2, "strAfterPause":Ljava/lang/String;
    const/4 v1, 0x0

    .line 96
    .local v1, "parsedNum":Ljava/lang/String;
    invoke-static {p1}, Lcom/lge/telephony/utils/AssistedDialUtils;->getDialLengthBeforePause(Ljava/lang/String;)I

    move-result v0

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_81

    .line 99
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v4, "AssistedDial"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "strBeforePause = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , strAfterPause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v4, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    invoke-virtual {v4, v3}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_64
    const/4 v4, 0x1

    :try_start_65
    sget-object v5, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assist_dial_from_contact"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_7f

    .line 112
    sget-object v4, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assist_dial_from_contact"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_7f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_65 .. :try_end_7f} :catch_88

    :cond_7f
    :goto_7f
    move-object p1, v1

    .line 118
    goto :goto_18

    .line 106
    :cond_81
    sget-object v4, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    invoke-virtual {v4, p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_64

    :catch_88
    move-exception v4

    goto :goto_7f
.end method

.method private static getDialLengthBeforePause(Ljava/lang/String;)I
    .registers 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "count":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_8

    .line 130
    :cond_7
    return v0

    .line 124
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_7

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_7

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/lge/telephony/utils/AssistedDialUtils;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    if-eqz v0, :cond_7

    .line 22
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    .line 24
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialUtils;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v1, Lcom/lge/telephony/utils/AssistedDialUtils;

    monitor-enter v1

    .line 31
    :try_start_3
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    if-nez v0, :cond_10

    if-eqz p0, :cond_10

    .line 32
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialUtils;

    invoke-direct {v0, p0}, Lcom/lge/telephony/utils/AssistedDialUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    .line 35
    :cond_10
    if-eqz p0, :cond_1f

    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    if-eq p0, v0, :cond_1f

    .line 36
    sput-object p0, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    sget-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->setContext(Landroid/content/Context;)V

    .line 40
    :cond_1f
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public static isInCountry(Ljava/lang/String;)Z
    .registers 2
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_8

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public static isNanpSimplified(Ljava/lang/String;)Z
    .registers 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 135
    :try_start_1
    const-string v2, "^[2-9]{1}[0-9]{2}[2-9]{1}[0-9]{6}$"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b

    move-result v2

    if-eqz v2, :cond_a

    .line 136
    const/4 v1, 0x1

    .line 143
    :cond_a
    :goto_a
    return v1

    .line 138
    :catch_b
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method


# virtual methods
.method public getAssistedDialFinalNumberForCDMA(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialNumberInternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssistedDialFinalNumberForGSM(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialNumberInternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssistedDialNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialNumberInternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
