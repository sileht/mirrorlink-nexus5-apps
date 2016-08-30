.class public Lcom/lge/telephony/LGRssiData;
.super Ljava/lang/Object;
.source "LGRssiData.java"


# static fields
.field private static final ATTR_NAME_KEY:Ljava/lang/String; = "name"

.field private static final DBG:Z = false

.field private static final DEFAULT_RSSI_LEVEL:I = 0x5

.field private static final ELEMENT_NAME_ITEM:Ljava/lang/String; = "item"

.field private static final FILE_PATH_RSSI:Ljava/lang/String; = "/etc/rssi.xml"

.field private static final TAG:Ljava/lang/String; = "LGRssiData"

.field private static instance:Lcom/lge/telephony/LGRssiData;

.field public static mRssiLevel:I

.field private static mRssiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAsuEtcValue:[I

.field private mAsuGsmValue:[I

.field private mAsuUmtsValue:[I

.field private mAxgpRsrpValue:[I

.field private mAxgpRssnrValue:[I

.field private mCdmaDbmValue:[I

.field private mCdmaEcioValue:[I

.field private mEvdoDbmValue:[I

.field private mEvdoSnrValue:[I

.field private mGsmDbmValue:[I

.field private mGsmEcioValue:[I

.field private mLteRsrpOffsetValue:[I

.field private mLteRsrpValue:[I

.field private mLteRsrqValue:[I

.field private mLteRssnrValue:[I

.field private mLteSignalValue:[I

.field private mTdscdmaDbmValue:[I

.field private mUmtsDbmValue:[I

.field private mUmtsEcioValue:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/lge/telephony/LGRssiData;

    invoke-direct {v0}, Lcom/lge/telephony/LGRssiData;-><init>()V

    sput-object v0, Lcom/lge/telephony/LGRssiData;->instance:Lcom/lge/telephony/LGRssiData;

    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private convertToInt(Ljava/lang/String;)[I
    .registers 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 249
    if-nez p1, :cond_4

    .line 250
    const/4 v0, 0x0

    .line 261
    :cond_3
    return-object v0

    .line 252
    :cond_4
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "tempValue":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 254
    .local v2, "size":I
    new-array v0, v2, [I

    .line 255
    .local v0, "array":[I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_14
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 256
    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public static getInstance()Lcom/lge/telephony/LGRssiData;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/lge/telephony/LGRssiData;->instance:Lcom/lge/telephony/LGRssiData;

    return-object v0
.end method

.method private getItemValue(Ljava/lang/String;)[I
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "count":I
    const/4 v1, 0x0

    .line 205
    .local v1, "dataNum":I
    sget-object v5, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_14

    sget-object v5, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 213
    :cond_14
    const/4 v5, 0x0

    .line 237
    :goto_15
    return-object v5

    .line 216
    :cond_16
    if-eqz v4, :cond_22

    .line 217
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_20
    if-lt v5, v7, :cond_55

    .line 230
    :cond_22
    add-int/lit8 v5, v0, -0x1

    if-eq v1, v5, :cond_50

    .line 231
    :try_start_26
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Data Size MisMatch"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_2e

    .line 232
    :catch_2e
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "LGRssiData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[getItemValue] Data Size MisMatch ->count : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dataNum : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_50
    invoke-direct {p0, v4}, Lcom/lge/telephony/LGRssiData;->convertToInt(Ljava/lang/String;)[I

    move-result-object v5

    goto :goto_15

    .line 217
    :cond_55
    aget-object v3, v6, v5

    .line 219
    .local v3, "tempValue":Ljava/lang/String;
    if-nez v0, :cond_5d

    .line 220
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 222
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    .line 217
    add-int/lit8 v5, v5, 0x1

    goto :goto_20
.end method

.method private loadRssi()V
    .registers 10

    .prologue
    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, "in":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 92
    .local v0, "confFile":Ljava/io/File;
    sget-object v6, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    if-eqz v6, :cond_7

    .line 129
    :cond_6
    :goto_6
    return-void

    .line 96
    :cond_7
    if-eqz v0, :cond_11

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_38

    .line 97
    :cond_11
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    const-string v6, "/etc/rssi.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v0    # "confFile":Ljava/io/File;
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 99
    const-string v6, "LGRssiData"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[loadRssi] selected file : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_38
    :try_start_38
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_3d} :catch_73
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3d} :catch_82
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_93
    .catchall {:try_start_38 .. :try_end_3d} :catchall_a4

    .line 108
    .end local v3    # "in":Ljava/io/FileReader;
    .local v4, "in":Ljava/io/FileReader;
    :try_start_3d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 109
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 110
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 112
    invoke-direct {p0, v5}, Lcom/lge/telephony/LGRssiData;->readRssiData(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 113
    invoke-direct {p0}, Lcom/lge/telephony/LGRssiData;->parseRssiData()V

    .line 114
    const-string v6, "LGRssiData"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[loadRssi]Loaded mRssiMap is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_64} :catch_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_64} :catch_bd
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_64} :catch_ba
    .catchall {:try_start_3d .. :try_end_64} :catchall_b7

    .line 123
    if-eqz v4, :cond_b4

    :try_start_66
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_b0

    move-object v3, v4

    .line 124
    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_6

    .line 101
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6b
    const-string v6, "LGRssiData"

    const-string v7, "[loadRssi] confFile is null or File not exist "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 115
    :catch_73
    move-exception v1

    .line 116
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_74
    :try_start_74
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_a4

    .line 123
    if-eqz v3, :cond_6

    :try_start_79
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_6

    .line 124
    :catch_7d
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    :catch_82
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_83
    :try_start_83
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_a4

    .line 123
    if-eqz v3, :cond_6

    :try_start_88
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8d

    goto/16 :goto_6

    .line 124
    :catch_8d
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 119
    .end local v1    # "e":Ljava/io/IOException;
    :catch_93
    move-exception v1

    .line 120
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_94
    :try_start_94
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_a4

    .line 123
    if-eqz v3, :cond_6

    :try_start_99
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9e

    goto/16 :goto_6

    .line 124
    :catch_9e
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_a4
    move-exception v6

    .line 123
    :goto_a5
    if-eqz v3, :cond_aa

    :try_start_a7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    .line 127
    :cond_aa
    :goto_aa
    throw v6

    .line 124
    :catch_ab
    move-exception v1

    .line 125
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_aa

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "in":Ljava/io/FileReader;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_b0
    move-exception v1

    .line 125
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_b4
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto/16 :goto_6

    .line 121
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "in":Ljava/io/FileReader;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catchall_b7
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_a5

    .line 119
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catch_ba
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_94

    .line 117
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catch_bd
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_83

    .line 115
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catch_c0
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_74
.end method

.method private parseRssiData()V
    .registers 5

    .prologue
    .line 166
    sget-object v1, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 198
    :goto_4
    return-void

    .line 169
    :cond_5
    sget-object v1, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    const-string v2, "levelNum"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_c4

    const/4 v1, 0x5

    :goto_12
    sput v1, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    .line 171
    const-string v1, "LGRssiData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mRssiLevel : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v1, "mLteRsrp"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mLteRsrpValue:[I

    .line 174
    const-string v1, "mLteRssnr"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mLteRssnrValue:[I

    .line 175
    const-string v1, "mLteSignalStrength"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mLteSignalValue:[I

    .line 176
    const-string v1, "mLteRsrq"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mLteRsrqValue:[I

    .line 177
    const-string v1, "asu_gsm"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mAsuGsmValue:[I

    .line 178
    const-string v1, "asu_umts"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mAsuUmtsValue:[I

    .line 179
    const-string v1, "asu_etc"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mAsuEtcValue:[I

    .line 180
    const-string v1, "gsmDbm"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mGsmDbmValue:[I

    .line 181
    const-string v1, "gsmEcio"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mGsmEcioValue:[I

    .line 182
    const-string v1, "umtsDbm"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mUmtsDbmValue:[I

    .line 183
    const-string v1, "umtsEcio"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mUmtsEcioValue:[I

    .line 184
    const-string v1, "cdmaDbm"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mCdmaDbmValue:[I

    .line 185
    const-string v1, "cdmaEcio"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mCdmaEcioValue:[I

    .line 186
    const-string v1, "evdoDbm"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mEvdoDbmValue:[I

    .line 187
    const-string v1, "evdoSnr"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mEvdoSnrValue:[I

    .line 188
    const-string v1, "mAxgpRsrp"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mAxgpRsrpValue:[I

    .line 189
    const-string v1, "mAxgpRssnr"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mAxgpRssnrValue:[I

    .line 191
    const-string v1, "mTdscdmaDbm"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mTdscdmaDbmValue:[I

    .line 195
    const-string v1, "mLteRsrpOffset"

    invoke-direct {p0, v1}, Lcom/lge/telephony/LGRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/LGRssiData;->mLteRsrpOffsetValue:[I

    goto/16 :goto_4

    .line 170
    :cond_c4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12
.end method

.method private readRssiData(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 135
    .local v0, "eventType":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    .line 137
    :goto_b
    const/4 v4, 0x1

    if-ne v0, v4, :cond_f

    .line 161
    return-void

    .line 138
    :cond_f
    packed-switch v0, :pswitch_data_3e

    .line 158
    :cond_12
    :goto_12
    :pswitch_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_b

    .line 142
    :pswitch_17
    const-string v4, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 143
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 146
    .local v2, "type":I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_12

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "value":Ljava/lang/String;
    sget-object v4, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 138
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public getAsuEtcValue()[I
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mAsuUmtsValue:[I

    return-object v0
.end method

.method public getAsuGsmValue()[I
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mAsuGsmValue:[I

    return-object v0
.end method

.method public getAsuUmtsValue()[I
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mAsuUmtsValue:[I

    return-object v0
.end method

.method public getAxgpRsrpValue()[I
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mAxgpRsrpValue:[I

    return-object v0
.end method

.method public getAxgpRssnrValue()[I
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mAxgpRssnrValue:[I

    return-object v0
.end method

.method public getCdmaDbmValue()[I
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mCdmaDbmValue:[I

    return-object v0
.end method

.method public getEcioValue()[I
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mCdmaEcioValue:[I

    return-object v0
.end method

.method public getEvdoDbmValue()[I
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mEvdoDbmValue:[I

    return-object v0
.end method

.method public getEvdoSnrValue()[I
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mEvdoSnrValue:[I

    return-object v0
.end method

.method public getGsmDbmValue()[I
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mGsmDbmValue:[I

    return-object v0
.end method

.method public getGsmEcioValue()[I
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mGsmEcioValue:[I

    return-object v0
.end method

.method public getLteRsrpOffsetValue()[I
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mLteRsrpOffsetValue:[I

    return-object v0
.end method

.method public getLteSignalValue()[I
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mLteSignalValue:[I

    return-object v0
.end method

.method public getRsrpValue()[I
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mLteRsrpValue:[I

    return-object v0
.end method

.method public getRsrqValue()[I
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mLteRsrqValue:[I

    return-object v0
.end method

.method public getRssiLevel()I
    .registers 2

    .prologue
    .line 241
    sget-object v0, Lcom/lge/telephony/LGRssiData;->mRssiMap:Ljava/util/HashMap;

    if-nez v0, :cond_7

    .line 242
    invoke-virtual {p0}, Lcom/lge/telephony/LGRssiData;->init()V

    .line 244
    :cond_7
    sget v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    return v0
.end method

.method public getRssnrValue()[I
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mLteRssnrValue:[I

    return-object v0
.end method

.method public getTdscdmaDbmValue()[I
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mTdscdmaDbmValue:[I

    return-object v0
.end method

.method public getUmtsDbmValue()[I
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mUmtsDbmValue:[I

    return-object v0
.end method

.method public getUmtsEcioValue()[I
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lge/telephony/LGRssiData;->mUmtsEcioValue:[I

    return-object v0
.end method

.method public init()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/lge/telephony/LGRssiData;->loadRssi()V

    .line 83
    return-void
.end method
