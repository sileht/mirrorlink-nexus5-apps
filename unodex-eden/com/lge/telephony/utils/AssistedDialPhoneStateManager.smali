.class public Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;
.super Ljava/lang/Object;
.source "AssistedDialPhoneStateManager.java"


# static fields
.field public static final ASSIST_OFF:Ljava/lang/String; = "assist_off"

.field public static final ASSIST_ON:Ljava/lang/String; = "assist_on"

.field public static final DIAL_FROM_CONTACT:Ljava/lang/String; = "contact"

.field public static final DIAL_FROM_IDLE:Ljava/lang/String; = "idle"

.field public static final RADIO_TECH_CDMA:Ljava/lang/String; = "cdma"

.field public static final RADIO_TECH_GSM:Ljava/lang/String; = "gsm"

.field public static final ROAMING_STATUS_HOME:Ljava/lang/String; = "home"

.field public static final ROAMING_STATUS_ROAMING:Ljava/lang/String; = "roaming"

.field private static sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRadioTech:Ljava/lang/String;

.field private mCurrentRoamingStatus:Ljava/lang/String;

.field private mListener:Landroid/telephony/PhoneStateListener;

.field private mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

.field private mOtaMccObserver:Landroid/database/ContentObserver;

.field private mOtaSidObserver:Landroid/database/ContentObserver;

.field private mRefCountry:Lcom/lge/telephony/LGReferenceCountry;

.field private mRefCountryObserver:Landroid/database/ContentObserver;

.field private mRefSettingsObserver:Landroid/database/ContentObserver;

.field private mReloadNecessaryRegistrants:Landroid/os/RegistrantList;

.field private mSIDTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/SIDRangeType;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .line 48
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 37
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 39
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mReloadNecessaryRegistrants:Landroid/os/RegistrantList;

    .line 50
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$1;-><init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaMccObserver:Landroid/database/ContentObserver;

    .line 69
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$2;-><init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaSidObserver:Landroid/database/ContentObserver;

    .line 88
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$3;-><init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefSettingsObserver:Landroid/database/ContentObserver;

    .line 107
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$4;-><init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountryObserver:Landroid/database/ContentObserver;

    .line 138
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    .line 139
    sput-object p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->init()V

    .line 140
    return-void
.end method

.method static synthetic access$0(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)Lcom/lge/telephony/LGReferenceCountry;
    .registers 2

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryInternal()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;
    .registers 3

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->updateOtaCountry(Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->notifyChangeForReload()V

    return-void
.end method

.method private fillReferenceCountry(Lcom/lge/telephony/LGReferenceCountry;Landroid/database/Cursor;)Lcom/lge/telephony/LGReferenceCountry;
    .registers 4
    .param p1, "refCountry"    # Lcom/lge/telephony/LGReferenceCountry;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 360
    const-string v0, "countryindex"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setIndex(I)V

    .line 361
    const-string v0, "countryname"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setCountryName(Ljava/lang/String;)V

    .line 362
    const-string v0, "mcc"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setMccCode(Ljava/lang/String;)V

    .line 363
    const-string v0, "countrycode"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setCountryCode(Ljava/lang/String;)V

    .line 364
    const-string v0, "iddprefix"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setIddPrefix(Ljava/lang/String;)V

    .line 365
    const-string v0, "nddprefix"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setNddPrefix(Ljava/lang/String;)V

    .line 366
    const-string v0, "nanp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setNanp(Ljava/lang/String;)V

    .line 367
    const-string v0, "area"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setAreaCode(Ljava/lang/String;)V

    .line 368
    const-string v0, "length"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setNumLength(Ljava/lang/String;)V

    .line 369
    return-object p1
.end method

.method private getCountryWithCondition(Ljava/lang/String;)Lcom/lge/telephony/LGReferenceCountry;
    .registers 11
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 334
    const/4 v6, 0x0

    .line 335
    .local v6, "country":Lcom/lge/telephony/LGReferenceCountry;
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 336
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "AssistedDial"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCountryWithCondition WHERE : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v1, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/constants/SettingsConstants$AssistDial;->PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 339
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_30

    .line 340
    const-string v1, "AssistedDial"

    const-string v2, "Failed to query"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_2f
    return-object v4

    .line 344
    :cond_30
    :try_start_30
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 345
    new-instance v7, Lcom/lge/telephony/LGReferenceCountry;

    invoke-direct {v7}, Lcom/lge/telephony/LGReferenceCountry;-><init>()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3b} :catch_5e
    .catchall {:try_start_30 .. :try_end_3b} :catchall_65

    .line 346
    .end local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .local v7, "country":Lcom/lge/telephony/LGReferenceCountry;
    :try_start_3b
    invoke-direct {p0, v7, v8}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->fillReferenceCountry(Lcom/lge/telephony/LGReferenceCountry;Landroid/database/Cursor;)Lcom/lge/telephony/LGReferenceCountry;

    .line 347
    const-string v1, "AssistedDial"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCountryWithCondition is returning : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_56} :catch_6f
    .catchall {:try_start_3b .. :try_end_56} :catchall_6c

    move-object v6, v7

    .line 352
    .end local v7    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .restart local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    :cond_57
    if-eqz v8, :cond_5c

    .line 353
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5c
    :goto_5c
    move-object v4, v6

    .line 356
    goto :goto_2f

    :catch_5e
    move-exception v1

    .line 352
    :goto_5f
    if-eqz v8, :cond_5c

    .line 353
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_5c

    .line 351
    :catchall_65
    move-exception v1

    .line 352
    :goto_66
    if-eqz v8, :cond_6b

    .line 353
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_6b
    throw v1

    .line 351
    .end local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .restart local v7    # "country":Lcom/lge/telephony/LGReferenceCountry;
    :catchall_6c
    move-exception v1

    move-object v6, v7

    .end local v7    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .restart local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    goto :goto_66

    .end local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .restart local v7    # "country":Lcom/lge/telephony/LGReferenceCountry;
    :catch_6f
    move-exception v1

    move-object v6, v7

    .end local v7    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .restart local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    goto :goto_5f
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const-class v1, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    monitor-enter v1

    .line 128
    :try_start_3
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    if-nez v0, :cond_10

    if-eqz p0, :cond_10

    .line 129
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-direct {v0, p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .line 132
    :cond_10
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    monitor-exit v1

    return-object v0

    .line 127
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private getOtaCountryByMcc()Lcom/lge/telephony/LGReferenceCountry;
    .registers 7

    .prologue
    .line 232
    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 233
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/16 v0, 0x3ff

    .line 235
    .local v0, "otaMcc":I
    :try_start_8
    const-string v3, "assist_dial_ota_mcc"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_3c

    move-result v0

    .line 239
    :goto_e
    const-string v3, "AssistedDial"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OTA Country MCC: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mcc LIKE \'%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "sWhere":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCountryWithCondition(Ljava/lang/String;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v3

    return-object v3

    .end local v2    # "sWhere":Ljava/lang/String;
    :catch_3c
    move-exception v3

    goto :goto_e
.end method

.method private getOtaCountryBySid()Lcom/lge/telephony/LGReferenceCountry;
    .registers 10

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, "otaCountry":Lcom/lge/telephony/LGReferenceCountry;
    iget-object v6, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 247
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 250
    .local v3, "otaSid":I
    :try_start_8
    const-string v6, "assist_dial_ota_sid"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_11

    move-result v3

    .line 255
    :goto_e
    if-nez v3, :cond_1a

    .line 269
    .end local v2    # "otaCountry":Lcom/lge/telephony/LGReferenceCountry;
    :goto_10
    return-object v2

    .line 252
    .restart local v2    # "otaCountry":Lcom/lge/telephony/LGReferenceCountry;
    :catch_11
    move-exception v6

    const-string v6, "AssistedDial"

    const-string v7, "assist_dial_ota_sid Setting Not Found!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 258
    :cond_1a
    const-string v6, "AssistedDial"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OTA Country SID: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2f
    iget-object v6, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_52

    .line 268
    const-string v6, "AssistedDial"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getOtaCountryBySid for sid "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is returning null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 261
    :cond_52
    iget-object v6, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/telephony/utils/SIDRangeType;

    invoke-virtual {v6}, Lcom/lge/telephony/utils/SIDRangeType;->getStart()I

    move-result v6

    if-gt v6, v3, :cond_8e

    iget-object v6, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/telephony/utils/SIDRangeType;

    invoke-virtual {v6}, Lcom/lge/telephony/utils/SIDRangeType;->getEnd()I

    move-result v6

    if-gt v3, v6, :cond_8e

    .line 262
    iget-object v6, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/telephony/utils/SIDRangeType;

    invoke-virtual {v6}, Lcom/lge/telephony/utils/SIDRangeType;->getCountryIndex()I

    move-result v0

    .line 263
    .local v0, "countryIndex":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "countryindex = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "sWhere":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCountryWithCondition(Ljava/lang/String;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v2

    goto :goto_10

    .line 260
    .end local v0    # "countryIndex":I
    .end local v5    # "sWhere":Ljava/lang/String;
    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f
.end method

.method private getOtaCountryInternal()Lcom/lge/telephony/LGReferenceCountry;
    .registers 5

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "otaCountry":Lcom/lge/telephony/LGReferenceCountry;
    const-string v1, "gsm"

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 291
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryByMcc()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-eqz v0, :cond_15

    move-object v1, v0

    .line 308
    :goto_14
    return-object v1

    .line 294
    :cond_15
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryBySid()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    goto :goto_14

    .line 298
    :cond_1a
    const-string v1, "cdma"

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 299
    const-string v1, "AssistedDial"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current radio tech is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v1, "AssistedDial"

    const-string v2, "getOtaCountry is returning null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 301
    goto :goto_14

    .line 304
    :cond_47
    const-string v1, "AssistedDial"

    const-string v2, "tech is cdma"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryBySid()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-eqz v0, :cond_56

    move-object v1, v0

    .line 306
    goto :goto_14

    .line 308
    :cond_56
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryByMcc()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    goto :goto_14
.end method

.method private init()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 147
    const-string v2, "AssistedDial"

    const-string v3, "Initializing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    new-instance v2, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$5;

    invoke-direct {v2, p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$5;-><init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)V

    iput-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mListener:Landroid/telephony/PhoneStateListener;

    .line 155
    :try_start_1b
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 156
    .local v1, "phoneType":I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_6f

    .line 157
    const-string v2, "cdma"

    iput-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_76

    .line 168
    .end local v1    # "phoneType":I
    :goto_28
    const-string v2, "home"

    iput-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRoamingStatus:Ljava/lang/String;

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    .line 170
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 173
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "assist_dial_ota_mcc"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaMccObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    const-string v2, "assist_dial_ota_sid"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaSidObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    sget-object v2, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    const-string v2, "assist_dial_reference_country"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    .line 181
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    .line 182
    return-void

    .line 159
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "phoneType":I
    :cond_6f
    if-ne v5, v1, :cond_7f

    .line 160
    :try_start_71
    const-string v2, "gsm"

    iput-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_75} :catch_76

    goto :goto_28

    .line 166
    .end local v1    # "phoneType":I
    :catch_76
    move-exception v2

    const-string v2, "AssistedDial"

    const-string v3, "AssistedDialPhoneStateManager :: Exception"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 162
    .restart local v1    # "phoneType":I
    :cond_7f
    :try_start_7f
    const-string v2, "AssistedDial"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " mCurrentRadioTech set default, phoneType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v2, "cdma"

    iput-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_97} :catch_76

    goto :goto_28
.end method

.method private notifyChangeForReload()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mReloadNecessaryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 194
    return-void
.end method

.method private updateOtaCountry(Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;
    .registers 3
    .param p1, "newCountry"    # Lcom/lge/telephony/LGReferenceCountry;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 274
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

    return-object v0
.end method


# virtual methods
.method protected applyServiceState(Landroid/telephony/ServiceState;)V
    .registers 5
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 201
    const-string v1, "AssistedDial"

    const-string v2, "Service State Changed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_7
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 205
    .local v0, "phoneType":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_26

    .line 206
    const-string v1, "cdma"

    iput-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;

    .line 214
    :goto_14
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 215
    const-string v1, "roaming"

    iput-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRoamingStatus:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_2e

    .line 224
    .end local v0    # "phoneType":I
    :goto_1e
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryInternal()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->updateOtaCountry(Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;

    .line 225
    return-void

    .line 208
    .restart local v0    # "phoneType":I
    :cond_26
    const/4 v1, 0x1

    if-ne v1, v0, :cond_30

    .line 209
    :try_start_29
    const-string v1, "gsm"

    iput-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;

    goto :goto_14

    .end local v0    # "phoneType":I
    :catch_2e
    move-exception v1

    goto :goto_1e

    .line 212
    .restart local v0    # "phoneType":I
    :cond_30
    const-string v1, "cdma"

    iput-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;

    goto :goto_14

    .line 218
    :cond_35
    const-string v1, "home"

    iput-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRoamingStatus:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_39} :catch_2e

    goto :goto_1e
.end method

.method getCurrentAssistDialProperty()Ljava/lang/String;
    .registers 5

    .prologue
    .line 427
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 428
    const-string v2, "assist_dial"

    const/4 v3, 0x0

    .line 427
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 430
    .local v0, "isAssistedDialChecked":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_13

    const-string v1, "assist_on"

    :goto_12
    return-object v1

    :cond_13
    const-string v1, "assist_off"

    goto :goto_12
.end method

.method getCurrentDialingPoint()Ljava/lang/String;
    .registers 4

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 411
    .local v0, "dialPoint":I
    :try_start_1
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_from_contact"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_16

    move-result v0

    .line 417
    :goto_d
    const/4 v1, 0x1

    if-ne v1, v0, :cond_13

    const-string v1, "contact"

    :goto_12
    return-object v1

    :cond_13
    const-string v1, "idle"

    goto :goto_12

    :catch_16
    move-exception v1

    goto :goto_d
.end method

.method getCurrentRadioTech()Ljava/lang/String;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentRoamingStatus()Ljava/lang/String;
    .registers 4

    .prologue
    .line 383
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 384
    const-string v0, "cdma"

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 386
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_24

    .line 387
    const-string v0, "AssistedDial"

    const-string v1, "getOtaCountry() == null, getCurrentRoamingStatus returning HOME"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v0, "home"

    .line 401
    :goto_23
    return-object v0

    .line 391
    :cond_24
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 392
    const-string v0, "AssistedDial"

    const-string v1, "OTA is NANP, getCurrentRoamingStatus returning HOME"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v0, "home"

    goto :goto_23

    .line 395
    :cond_3e
    const-string v0, "AssistedDial"

    const-string v1, "OTA isn\'t NANP, getCurrentRoamingStatus returning ROAM"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v0, "roaming"

    goto :goto_23

    .line 400
    :cond_48
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCurrentRoamingStatus returning "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRoamingStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRoamingStatus:Ljava/lang/String;

    goto :goto_23
.end method

.method getOperatorName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 442
    const-string v0, "ro.build.target_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;
    .registers 3

    .prologue
    .line 278
    const-string v0, "AssistedDial"

    const-string v1, "getOtaCountry is called"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

    if-eqz v0, :cond_e

    .line 281
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 284
    :goto_d
    return-object v0

    :cond_e
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryInternal()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->updateOtaCountry(Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    goto :goto_d
.end method

.method getOtaCountryCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_f

    .line 452
    const-string v0, "AssistedDial"

    const-string v1, "getOtaCountry() == null, this.getOtaCountry().getCountryCode() : null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v0, 0x0

    .line 456
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method getOtaIDDPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_f

    .line 466
    const-string v0, "AssistedDial"

    const-string v1, "getOtaCountry() == null, this.getOtaCountry().getIddPrefix() : null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v0, 0x0

    .line 470
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method getOtaNDDPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_f

    .line 480
    const-string v0, "AssistedDial"

    const-string v1, "getOtaCountry() == null, this.getOtaCountry().getNddPrefix() : null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x0

    .line 484
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getNddPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method getRefAreaCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_f

    .line 557
    const-string v0, "AssistedDial"

    const-string v1, "getRefCountry() == null, this.getRefCountry().getAreaCode() : null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v0, 0x0

    .line 561
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method getRefCountry()Lcom/lge/telephony/LGReferenceCountry;
    .registers 2

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry(Z)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    return-object v0
.end method

.method getRefCountry(Z)Lcom/lge/telephony/LGReferenceCountry;
    .registers 7
    .param p1, "isUpdate"    # Z

    .prologue
    .line 316
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountry:Lcom/lge/telephony/LGReferenceCountry;

    if-eqz v2, :cond_9

    if-nez p1, :cond_9

    .line 317
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 330
    :goto_8
    return-object v2

    .line 319
    :cond_9
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assist_dial_reference_country"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "refCountryIndex":Ljava/lang/String;
    if-nez v0, :cond_20

    .line 323
    const-string v2, "AssistedDial"

    const-string v3, "Setting DB is not properly set"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v0, "0"

    .line 326
    :cond_20
    const-string v2, "AssistedDial"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getRefCountry : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "countryindex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "where":Ljava/lang/String;
    const-string v2, "AssistedDial"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WHERE : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCountryWithCondition(Ljava/lang/String;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountry:Lcom/lge/telephony/LGReferenceCountry;

    goto :goto_8
.end method

.method getRefCountryCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_f

    .line 494
    const-string v0, "AssistedDial"

    const-string v1, "getRefCountry() == null, this.getRefCountry().getCountryCode() : null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, 0x0

    .line 498
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method getRefIDDPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_f

    .line 508
    const-string v0, "AssistedDial"

    const-string v1, "getRefCountry() == null, this.getRefCountry().getIddPrefix() : null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v0, 0x0

    .line 512
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method getRefNDDPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_f

    .line 523
    const-string v0, "AssistedDial"

    const-string v1, "getRefCountry() == null, this.getRefCountry().getNddPrefix() : null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x0

    .line 527
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getNddPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method getRefNumLength()Ljava/lang/Integer;
    .registers 4

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_13

    .line 533
    const-string v0, "AssistedDial"

    const-string v1, "getRefCountry() == null, this.getRefCountry().getNumLength() : 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 540
    :goto_12
    return-object v0

    .line 537
    :cond_13
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp Rlog - ref Num Length : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/telephony/LGReferenceCountry;->getNumLength()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getNumLength()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12
.end method

.method getRefPNLength()Ljava/lang/Integer;
    .registers 5

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-nez v0, :cond_13

    .line 546
    const-string v0, "AssistedDial"

    const-string v1, "getRefCountry() == null, getRefPNLength() : 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 551
    :goto_12
    return-object v0

    .line 550
    :cond_13
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp Rlog - ref pn length : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/telephony/LGReferenceCountry;->getNumLength()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/telephony/LGReferenceCountry;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getNumLength()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/telephony/LGReferenceCountry;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12
.end method

.method isAssistDialPropertyChanged(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mLastAssistDialProperty"    # Ljava/lang/String;

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentAssistDialProperty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method isDialingPointChanged(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mLastDialingPoint"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentDialingPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method isInitialized()Z
    .registers 2

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method isRadioTechChanged(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mLastRadioTech"    # Ljava/lang/String;

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method isRoamingStatusChanged(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mLastRoamingStatus"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRoamingStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public registerForReloadNecessary(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mReloadNecessaryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 186
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    .line 144
    return-void
.end method

.method public setSIDTable(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/SIDRangeType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "table":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/utils/SIDRangeType;>;"
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method public unRegisterForReloadNecessary(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mReloadNecessaryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 190
    return-void
.end method
