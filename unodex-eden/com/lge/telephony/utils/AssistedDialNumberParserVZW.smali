.class public Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;
.super Lcom/lge/telephony/utils/AssistedDialNumberParser;
.source "AssistedDialNumberParserVZW.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mRefCountryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/LGReferenceCountry;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .line 20
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    .line 24
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current AssistDialNumberParser is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .line 27
    sget-boolean v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->$assertionsDisabled:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 30
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->loadAllCountryForAssistedDial()V

    .line 31
    return-void
.end method

.method private loadAllCountryForAssistedDial()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/constants/SettingsConstants$AssistDial;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1b

    .line 213
    const-string v1, "AssisstedDial"

    const-string v2, "cursor is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1a
    :goto_1a
    return-void

    .line 217
    :cond_1b
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 220
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 221
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_27
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_b9
    .catchall {:try_start_20 .. :try_end_2a} :catchall_c4

    move-result v1

    if-lt v8, v1, :cond_33

    .line 242
    .end local v8    # "i":I
    :cond_2d
    if-eqz v6, :cond_1a

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1a

    .line 223
    .restart local v8    # "i":I
    :cond_33
    :try_start_33
    new-instance v9, Lcom/lge/telephony/LGReferenceCountry;

    invoke-direct {v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>()V

    .line 225
    .local v9, "refCountry":Lcom/lge/telephony/LGReferenceCountry;
    const-string v1, "countryindex"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setIndex(I)V

    .line 226
    const-string v1, "countryname"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setCountryName(Ljava/lang/String;)V

    .line 227
    const-string v1, "mcc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setMccCode(Ljava/lang/String;)V

    .line 228
    const-string v1, "countrycode"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setCountryCode(Ljava/lang/String;)V

    .line 229
    const-string v1, "iddprefix"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setIddPrefix(Ljava/lang/String;)V

    .line 230
    const-string v1, "nddprefix"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setNddPrefix(Ljava/lang/String;)V

    .line 231
    const-string v1, "nanp"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setNanp(Ljava/lang/String;)V

    .line 232
    const-string v1, "area"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setAreaCode(Ljava/lang/String;)V

    .line 233
    const-string v1, "length"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setNumLength(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_b5} :catch_b9
    .catchall {:try_start_33 .. :try_end_b5} :catchall_c4

    .line 221
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_27

    .line 239
    .end local v8    # "i":I
    .end local v9    # "refCountry":Lcom/lge/telephony/LGReferenceCountry;
    :catch_b9
    move-exception v7

    .line 240
    .local v7, "e":Ljava/lang/Exception;
    :try_start_ba
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_c4

    .line 242
    if-eqz v6, :cond_1a

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1a

    .line 241
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_c4
    move-exception v1

    .line 242
    if-eqz v6, :cond_ca

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_ca
    throw v1
.end method

.method private postParse(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "parsedStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 192
    const-string v2, "_OR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 205
    .end local p1    # "parsedStr":Ljava/lang/String;
    :goto_9
    return-object p1

    .line 196
    .restart local p1    # "parsedStr":Ljava/lang/String;
    :cond_a
    const-string v2, "_OR|\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "strArray":[Ljava/lang/String;
    aget-object v2, v1, v5

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "areaCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mDataManager:Lcom/lge/telephony/utils/AssistedDialDataManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialDataManager;->getAreaCodeMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 202
    aget-object p1, v1, v5

    goto :goto_9

    .line 205
    :cond_35
    const/4 v2, 0x2

    aget-object p1, v1, v2

    goto :goto_9
.end method

.method private reCreateReferenceCountryList(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    const-string v2, "area"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "sAreaCode":Ljava/lang/String;
    const-string v2, "AssistedDial"

    const-string v3, "reCreateReferenceCountryList - reCreate assist_dial DB"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 41
    invoke-static {v0}, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->initAssistDialCountryDetailList(Landroid/content/ContentResolver;)V

    .line 45
    :goto_20
    return-void

    .line 43
    :cond_21
    invoke-static {v0, v1}, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->initAssistDialCountryDetailList(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_20
.end method


# virtual methods
.method parseNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v1, "AssistedDial"

    const-string v2, "parseNumber in AssistDialNumberParserVZW"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_31

    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->loadAllCountryForAssistedDial()V

    .line 53
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_31

    .line 54
    const-string v1, "AssistedDial"

    const-string v2, "Setting DB needs to be recreated!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->reCreateReferenceCountryList(Landroid/content/Context;)V

    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->loadAllCountryForAssistedDial()V

    .line 60
    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    if-nez v1, :cond_43

    .line 61
    const-string v1, "AssistedDial"

    const-string v2, "parseNumber() Return entering dialStr  when Otacountry is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local p1    # "dialStr":Ljava/lang/String;
    :cond_42
    :goto_42
    return-object p1

    .line 65
    .restart local p1    # "dialStr":Ljava/lang/String;
    :cond_43
    const-string v1, "cdma"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24e

    .line 66
    const-string v1, "roaming"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRoamingStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24e

    .line 67
    const-string v1, "contact"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentDialingPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24e

    .line 68
    const-string v1, "assist_on"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentAssistDialProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24e

    .line 70
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNDDPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaNDDPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 71
    :cond_a3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNumLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNDDPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_169

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 74
    const-string v1, "AssistedDial"

    const-string v2, "Case 3-1"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 78
    :cond_e1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNDDPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNDDPrefix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 83
    .local v15, "newStr":Ljava/lang/String;
    :goto_120
    const-string v1, "AssistedDial"

    const-string v2, "Case 3-2"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 p1, v15

    .line 85
    goto/16 :goto_42

    .line 81
    .end local v15    # "newStr":Ljava/lang/String;
    :cond_139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaNDDPrefix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "newStr":Ljava/lang/String;
    goto :goto_120

    .line 91
    .end local v15    # "newStr":Ljava/lang/String;
    :cond_169
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNumLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1cf

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1cf

    .line 93
    const-string v1, "AssistedDial"

    const-string v2, "Case 4"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_42

    .line 100
    :cond_1cf
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNumLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_24e

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24e

    .line 102
    const-string v1, "AssistedDial"

    const-string v2, "Case 5"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_42

    .line 109
    :cond_24e
    const-string v1, "cdma"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e0

    .line 110
    const-string v1, "home"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRoamingStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e0

    .line 111
    const-string v1, "contact"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentDialingPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e0

    .line 112
    const-string v1, "assist_on"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentAssistDialProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e0

    .line 119
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_2e0

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2a3

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->loadAllCountryForAssistedDial()V

    .line 124
    :cond_2a3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefIDDPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_346

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefIDDPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 132
    .local v16, "secondPart":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "countryIndex":I
    :goto_2d6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v12, v1, :cond_2f8

    .line 174
    .end local v12    # "countryIndex":I
    .end local v16    # "secondPart":Ljava/lang/String;
    :cond_2e0
    const-string v1, "assist_off"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentAssistDialProperty()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_3e2

    .line 175
    invoke-super/range {p0 .. p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->postParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_42

    .line 133
    .restart local v12    # "countryIndex":I
    .restart local v16    # "secondPart":Ljava/lang/String;
    :cond_2f8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/telephony/LGReferenceCountry;

    .line 135
    .local v11, "country":Lcom/lge/telephony/LGReferenceCountry;
    invoke-virtual {v11}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_343

    .line 136
    invoke-virtual {v11}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_343

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_42

    .line 132
    :cond_343
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d6

    .line 145
    .end local v11    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .end local v12    # "countryIndex":I
    .end local v16    # "secondPart":Ljava/lang/String;
    :cond_346
    const-string v1, "AssistedDial"

    const-string v2, "exhaustive matching"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v14, 0x0

    .local v14, "iddIndex":I
    :goto_34e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_2e0

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/telephony/LGReferenceCountry;

    .line 149
    .local v13, "iddCountry":Lcom/lge/telephony/LGReferenceCountry;
    invoke-virtual {v13}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_391

    .line 150
    invoke-virtual {v13}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_391

    .line 152
    invoke-virtual {v13}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 154
    .restart local v16    # "secondPart":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "ccIndex":I
    :goto_387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v10, v1, :cond_394

    .line 146
    .end local v10    # "ccIndex":I
    .end local v16    # "secondPart":Ljava/lang/String;
    :cond_391
    add-int/lit8 v14, v14, 0x1

    goto :goto_34e

    .line 155
    .restart local v10    # "ccIndex":I
    .restart local v16    # "secondPart":Ljava/lang/String;
    :cond_394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/telephony/LGReferenceCountry;

    .line 157
    .local v9, "ccCountry":Lcom/lge/telephony/LGReferenceCountry;
    invoke-virtual {v9}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3df

    .line 158
    invoke-virtual {v9}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3df

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_42

    .line 154
    :cond_3df
    add-int/lit8 v10, v10, 0x1

    goto :goto_387

    .line 179
    .end local v9    # "ccCountry":Lcom/lge/telephony/LGReferenceCountry;
    .end local v10    # "ccIndex":I
    .end local v13    # "iddCountry":Lcom/lge/telephony/LGReferenceCountry;
    .end local v14    # "iddIndex":I
    .end local v16    # "secondPart":Ljava/lang/String;
    :cond_3e2
    invoke-super/range {p0 .. p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->postParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "assistedOnStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRoamingStatus()Ljava/lang/String;

    move-result-object v4

    .line 181
    const-string v5, "assist_off"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentDialingPoint()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 180
    invoke-super/range {v1 .. v6}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumberFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->postParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "assistedOffStr":Ljava/lang/String;
    const-string v1, "AssistedDial"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStr : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_446

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_446
    move-object/from16 p1, v8

    .line 188
    goto/16 :goto_42
.end method
