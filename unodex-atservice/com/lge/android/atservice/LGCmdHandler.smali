.class public Lcom/lge/android/atservice/LGCmdHandler;
.super Ljava/lang/Object;
.source "LGCmdHandler.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.phone.CallSettingsProvider"

.field static final CALLSETTINGS_PROJECTION:[Ljava/lang/String;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_VALUE_INT:Ljava/lang/String; = "value_int"

.field public static final KEY_VALUE_STR:Ljava/lang/String; = "value_str"

.field public static final LGCMD_FAIL:I = 0x1

.field public static final LGCMD_NOT_SUPPORTED:I = 0x2

.field public static final LGCMD_OK:I

.field static kp_screen_flag:Z

.field private static final operator_code:Ljava/lang/String;

.field static ts_draw_flag:Z


# instance fields
.field private ISaddr:Z

.field private mContext:Landroid/content/Context;

.field private mDB:Lcom/lge/android/atservice/Database;

.field private mETA:Lcom/lge/android/atservice/ETAHandler;

.field private mMTC:Lcom/lge/android/atservice/MTCHandler;

.field private mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

.field private mSetcom:Lcom/lge/android/atservice/SetcomHandler;

.field private sms_addr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string/jumbo v0, "content://com.android.phone.CallSettingsProvider/callsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/LGCmdHandler;->CONTENT_URI:Landroid/net/Uri;

    .line 61
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/LGCmdHandler;->operator_code:Ljava/lang/String;

    .line 72
    sput-boolean v2, Lcom/lge/android/atservice/LGCmdHandler;->ts_draw_flag:Z

    .line 73
    sput-boolean v2, Lcom/lge/android/atservice/LGCmdHandler;->kp_screen_flag:Z

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 76
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "value_str"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "value_int"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 75
    sput-object v0, Lcom/lge/android/atservice/LGCmdHandler;->CALLSETTINGS_PROJECTION:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/android/atservice/LGCmdHandler;->ISaddr:Z

    .line 252
    iput-object p1, p0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    .line 253
    new-instance v0, Lcom/lge/android/atservice/MTCHandler;

    iget-object v1, p0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/android/atservice/MTCHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/LGCmdHandler;->mMTC:Lcom/lge/android/atservice/MTCHandler;

    .line 254
    new-instance v0, Lcom/lge/android/atservice/ETAHandler;

    iget-object v1, p0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/android/atservice/ETAHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/LGCmdHandler;->mETA:Lcom/lge/android/atservice/ETAHandler;

    .line 255
    new-instance v0, Lcom/lge/android/atservice/Database;

    iget-object v1, p0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/android/atservice/Database;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/LGCmdHandler;->mDB:Lcom/lge/android/atservice/Database;

    .line 256
    new-instance v0, Lcom/lge/android/atservice/SetcomHandler;

    iget-object v1, p0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/android/atservice/SetcomHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/LGCmdHandler;->mSetcom:Lcom/lge/android/atservice/SetcomHandler;

    .line 257
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/LGCmdHandler;->sms_addr:Ljava/lang/String;

    .line 258
    new-instance v0, Lcom/lge/android/atservice/PreWifiTest;

    iget-object v1, p0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/android/atservice/PreWifiTest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    .line 259
    iget-object v0, p0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    invoke-virtual {v0}, Lcom/lge/android/atservice/PreWifiTest;->initPreWifiTest()V

    .line 251
    return-void
.end method

.method private getCSN()Ljava/lang/String;
    .registers 13

    .prologue
    .line 87
    const-string/jumbo v3, "000000000000000"

    .line 88
    .local v3, "m_DEFAULT_CSN":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v8, "/dev/block/platform/msm_sdcc.1/by-name/misc"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "f":Ljava/io/File;
    const/4 v4, 0x0

    .line 91
    .local v4, "m_RA_FILE":Ljava/io/RandomAccessFile;
    const v6, 0x12800

    .line 92
    .local v6, "offset":I
    move-object v7, v3

    .line 95
    .local v7, "res":Ljava/lang/String;
    :try_start_10
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "rw"

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_6a
    .catchall {:try_start_10 .. :try_end_18} :catchall_a7

    .line 97
    .end local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .local v5, "m_RA_FILE":Ljava/io/RandomAccessFile;
    if-eqz v5, :cond_27

    .line 98
    const v8, 0x12810

    int-to-long v8, v8

    :try_start_1e
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 99
    const-string/jumbo v8, "\n"

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_15b
    .catchall {:try_start_1e .. :try_end_27} :catchall_157

    .line 105
    :cond_27
    if-eqz v5, :cond_2c

    .line 106
    :try_start_29
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_4e

    :cond_2c
    :goto_2c
    move-object v4, v5

    .line 113
    .end local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :cond_2d
    :goto_2d
    const/4 v4, 0x0

    .line 116
    .restart local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :try_start_2e
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "r"

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_e7
    .catchall {:try_start_2e .. :try_end_36} :catchall_126

    .line 118
    .end local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .restart local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    if-eqz v5, :cond_43

    .line 119
    int-to-long v8, v6

    :try_start_39
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 120
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 121
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_43} :catch_154
    .catchall {:try_start_39 .. :try_end_43} :catchall_151

    .line 127
    :cond_43
    if-eqz v5, :cond_48

    .line 128
    :try_start_45
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_ca

    :cond_48
    :goto_48
    move-object v4, v5

    .line 135
    .end local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :cond_49
    :goto_49
    const/4 v2, 0x0

    .line 136
    .local v2, "f":Ljava/io/File;
    const/4 v4, 0x0

    .line 138
    .restart local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    if-nez v7, :cond_149

    .line 139
    return-object v3

    .line 108
    .end local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .local v2, "f":Ljava/io/File;
    .restart local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :catch_4e
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CSMG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in getCSN #2\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .restart local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :catch_6a
    move-exception v1

    .line 102
    .end local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_6b
    :try_start_6b
    const-string/jumbo v8, "CSMG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in getCSN #1\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_6b .. :try_end_85} :catchall_a7

    .line 105
    if-eqz v4, :cond_2d

    .line 106
    :try_start_87
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_2d

    .line 108
    :catch_8b
    move-exception v1

    .line 109
    const-string/jumbo v8, "CSMG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in getCSN #2\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_a7
    move-exception v8

    .line 105
    :goto_a8
    if-eqz v4, :cond_ad

    .line 106
    :try_start_aa
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_ae

    .line 103
    :cond_ad
    :goto_ad
    throw v8

    .line 108
    :catch_ae
    move-exception v1

    .line 109
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "CSMG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in getCSN #2\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :catch_ca
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CSMG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in getCSN #4\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .restart local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :catch_e7
    move-exception v0

    .line 124
    .end local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/io/IOException;
    :goto_e8
    :try_start_e8
    const-string/jumbo v8, "CSMG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in getCSN #3\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catchall {:try_start_e8 .. :try_end_102} :catchall_126

    .line 127
    if-eqz v4, :cond_49

    .line 128
    :try_start_104
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_109

    goto/16 :goto_49

    .line 130
    :catch_109
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CSMG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in getCSN #4\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_126
    move-exception v8

    .line 127
    :goto_127
    if-eqz v4, :cond_12c

    .line 128
    :try_start_129
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_12c} :catch_12d

    .line 125
    :cond_12c
    :goto_12c
    throw v8

    .line 130
    :catch_12d
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "CSMG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in getCSN #4\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    .local v2, "f":Ljava/io/File;
    .restart local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :cond_149
    const/16 v8, 0xf

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 125
    .end local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .local v2, "f":Ljava/io/File;
    .restart local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :catchall_151
    move-exception v8

    move-object v4, v5

    .end local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .local v4, "m_RA_FILE":Ljava/io/RandomAccessFile;
    goto :goto_127

    .line 123
    .end local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .restart local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :catch_154
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .restart local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    goto :goto_e8

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .restart local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :catchall_157
    move-exception v8

    move-object v4, v5

    .end local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .restart local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    goto/16 :goto_a8

    .line 101
    .end local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .restart local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    :catch_15b
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    .restart local v4    # "m_RA_FILE":Ljava/io/RandomAccessFile;
    goto/16 :goto_6b
.end method

.method private getKSType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 205
    const-string/jumbo v0, ""

    .line 207
    .local v0, "rsp_full":Ljava/lang/String;
    const-string/jumbo v1, "ro.frp.pst"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 208
    const-string/jumbo v1, "getFRPEnable : ro.frp.pst defined."

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "google"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_2d
    invoke-direct {p0}, Lcom/lge/android/atservice/LGCmdHandler;->getMcAfeeInstalled()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 213
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mcafee"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_50
    :goto_50
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 221
    const-string/jumbo v0, "none"

    .line 223
    :cond_5c
    return-object v0

    .line 216
    :cond_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".mcafee"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_50
.end method

.method private getKSUnlockStatus()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 145
    const-string/jumbo v5, ""

    .line 146
    .local v5, "rsp_full":Ljava/lang/String;
    const/4 v6, 0x0

    .line 147
    .local v6, "unlock_google":Z
    const-string/jumbo v2, "/persist-lg/mms/app-data-snapshot"

    .line 148
    .local v2, "mcafeeLogin":Ljava/lang/String;
    const-string/jumbo v3, "/persist-lg/mms/app-data-snapshot-overrides"

    .line 150
    .local v3, "mcafeedeviceLockdown":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/android/atservice/LGCmdHandler;->getKSType()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "none"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 151
    const-string/jumbo v5, "none"

    .line 152
    return-object v5

    .line 155
    :cond_1c
    const-string/jumbo v8, "ro.frp.pst"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6c

    .line 157
    iget-object v8, p0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "persistent_data_block"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 156
    check-cast v4, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 159
    .local v4, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v4}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v8

    if-nez v8, :cond_6c

    .line 161
    iget-object v8, p0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 163
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v8, v1

    :goto_48
    if-ge v7, v8, :cond_5a

    aget-object v0, v1, v7

    .line 164
    .local v0, "account":Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v10, "com.google"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 165
    const-string/jumbo v5, "lock.google"

    .line 169
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_5a
    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 171
    invoke-virtual {v4}, Landroid/service/persistentdata/PersistentDataBlockManager;->getDataBlockSize()I

    move-result v7

    if-lez v7, :cond_6c

    .line 172
    const-string/jumbo v5, "lock.google"

    .line 178
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v4    # "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    :cond_6c
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/persist-lg/mms/app-data-snapshot"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_88

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/persist-lg/mms/app-data-snapshot-overrides"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_94

    .line 179
    :cond_88
    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 180
    const-string/jumbo v5, "lock.mcafee"

    .line 186
    :cond_94
    :goto_94
    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 187
    const-string/jumbo v5, "unlock"

    .line 189
    :cond_a0
    return-object v5

    .line 163
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v4    # "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    :cond_a1
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    .line 182
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v4    # "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    :cond_a4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".mcafee"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_94
.end method

.method private getMcAfeeInstalled()Z
    .registers 7

    .prologue
    .line 193
    iget-object v4, p0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 194
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 196
    .local v1, "mcafeeInstall":Z
    :try_start_7
    const-string/jumbo v4, "com.wsandroid.suite.lge"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v2

    .line 201
    :goto_f
    return v1

    .line 197
    :catch_10
    move-exception v0

    .line 198
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMcAfeeInstalled : not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static queryCallSettingValueByKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    const-string/jumbo v3, "name=\'lock_password_key\'"

    .line 228
    .local v3, "selection":Ljava/lang/String;
    const/4 v8, 0x0

    .line 230
    .local v8, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 233
    .local v6, "c":Landroid/database/Cursor;
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/LGCmdHandler;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/android/atservice/LGCmdHandler;->CALLSETTINGS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_27

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 236
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_26} :catch_2e
    .catchall {:try_start_5 .. :try_end_26} :catchall_3e

    move-result-object v8

    .line 242
    .end local v8    # "value":Ljava/lang/String;
    :cond_27
    if-eqz v6, :cond_2d

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_2c
    const/4 v6, 0x0

    .line 248
    :cond_2d
    return-object v8

    .line 239
    .restart local v8    # "value":Ljava/lang/String;
    :catch_2e
    move-exception v7

    .line 240
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2f
    const-string/jumbo v0, "E"

    const-string/jumbo v1, "SQLiteException error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3e

    .line 242
    if-eqz v6, :cond_2d

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    .line 241
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_3e
    move-exception v0

    .line 242
    if-eqz v6, :cond_45

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    const/4 v6, 0x0

    .line 241
    :cond_45
    throw v0
.end method


# virtual methods
.method public request(Lcom/lge/android/atservice/LGCmdRequest;Lcom/lge/android/atservice/LGCmdResponse;)I
    .registers 99
    .param p1, "request"    # Lcom/lge/android/atservice/LGCmdRequest;
    .param p2, "response"    # Lcom/lge/android/atservice/LGCmdResponse;

    .prologue
    .line 263
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "request.opcode: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 264
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "request.length: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 265
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "request.body: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    check-cast v92, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v16

    .line 294
    .local v16, "dm":Lcom/lge/android/atservice/DeviceManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    if-eqz v92, :cond_90

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->initPreWifiTest()V

    .line 302
    :goto_74
    :try_start_74
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    move/from16 v92, v0

    sparse-switch v92, :sswitch_data_26e6

    .line 1730
    const/16 v92, 0x2

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 1731
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I
    :try_end_8d
    .catch Ljava/lang/NullPointerException; {:try_start_74 .. :try_end_8d} :catch_122

    .line 1741
    :cond_8d
    :goto_8d
    :sswitch_8d
    const/16 v92, 0x0

    return v92

    .line 297
    :cond_90
    new-instance v92, Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v93, v0

    invoke-direct/range {v92 .. v93}, Lcom/lge/android/atservice/PreWifiTest;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->initPreWifiTest()V

    goto :goto_74

    .line 304
    :sswitch_ab
    :try_start_ab
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v92

    move/from16 v2, v94

    move/from16 v3, v93

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 305
    .local v20, "etaReq":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mETA:Lcom/lge/android/atservice/ETAHandler;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/ETAHandler;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 306
    .local v21, "etaRsp":Ljava/lang/String;
    if-eqz v21, :cond_8d

    .line 307
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "ETA response: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 308
    const/16 v92, 0x3f3

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 309
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 310
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    move/from16 v92, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    const/16 v95, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v94

    move/from16 v2, v92

    move-object/from16 v3, v93

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getBytes(II[BI)V
    :try_end_120
    .catch Ljava/lang/NullPointerException; {:try_start_ab .. :try_end_120} :catch_122

    goto/16 :goto_8d

    .line 1734
    .end local v20    # "etaReq":Ljava/lang/String;
    .end local v21    # "etaRsp":Ljava/lang/String;
    :catch_122
    move-exception v19

    .line 1735
    .local v19, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v92, "Null Pointer Exception!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {v19 .. v19}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1737
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 1738
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 315
    .end local v19    # "e":Ljava/lang/NullPointerException;
    :sswitch_13e
    :try_start_13e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mMTC:Lcom/lge/android/atservice/MTCHandler;

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Lcom/lge/android/atservice/MTCHandler;->request([B)[B

    move-result-object v51

    .line 316
    .local v51, "mtcRsp":[B
    if-eqz v51, :cond_8d

    .line 317
    const/16 v92, 0x3f4

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 318
    move-object/from16 v0, v51

    array-length v0, v0

    move/from16 v92, v0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 319
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move-object/from16 v0, v92

    move/from16 v1, v93

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Lcom/lge/android/atservice/Utils;->copyBytes([BI[B)V

    goto/16 :goto_8d

    .line 324
    .end local v51    # "mtcRsp":[B
    :sswitch_176
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mSetcom:Lcom/lge/android/atservice/SetcomHandler;

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v94, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v95, v0

    invoke-virtual/range {v92 .. v95}, Lcom/lge/android/atservice/SetcomHandler;->handleCmd([BI[B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 330
    :sswitch_1a2
    const-string/jumbo v92, "KeypadDevice"

    .line 329
    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v39

    check-cast v39, Lcom/lge/android/atservice/KeypadDevice;

    .line 331
    .local v39, "mKd":Lcom/lge/android/atservice/KeypadDevice;
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 332
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/KeypadDevice;->getKeyPowerStatus([B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 337
    .end local v39    # "mKd":Lcom/lge/android/atservice/KeypadDevice;
    :sswitch_1cd
    const-string/jumbo v92, "KeypadDevice"

    .line 336
    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v39

    check-cast v39, Lcom/lge/android/atservice/KeypadDevice;

    .line 338
    .restart local v39    # "mKd":Lcom/lge/android/atservice/KeypadDevice;
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 339
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/KeypadDevice;->getKeyValue([B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 344
    .end local v39    # "mKd":Lcom/lge/android/atservice/KeypadDevice;
    :sswitch_1f8
    const-string/jumbo v92, "KeypadDevice"

    .line 343
    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v39

    check-cast v39, Lcom/lge/android/atservice/KeypadDevice;

    .line 345
    .restart local v39    # "mKd":Lcom/lge/android/atservice/KeypadDevice;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x30

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_224

    .line 346
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 347
    invoke-virtual/range {v39 .. v39}, Lcom/lge/android/atservice/KeypadDevice;->setKeyPowerOff()V

    goto/16 :goto_8d

    .line 349
    :cond_224
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 350
    invoke-virtual/range {v39 .. v39}, Lcom/lge/android/atservice/KeypadDevice;->setKeyPowerOn()V

    goto/16 :goto_8d

    .line 355
    .end local v39    # "mKd":Lcom/lge/android/atservice/KeypadDevice;
    :sswitch_231
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, v16

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->injectKeyDownUp(I)V

    .line 356
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 360
    :sswitch_24c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, v16

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->injectKeyDown(I)V

    .line 361
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 365
    :sswitch_267
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, v16

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->injectKeyUp(I)V

    .line 366
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 370
    :sswitch_282
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getImei()Ljava/lang/String;

    move-result-object v30

    .line 371
    .local v30, "imei":Ljava/lang/String;
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "IMEI: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 372
    if-nez v30, :cond_2a6

    .line 373
    const-string/jumbo v30, ""

    .line 375
    :cond_2a6
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 376
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 377
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    array-length v0, v0

    move/from16 v92, v0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 378
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "IMEI length: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 382
    .end local v30    # "imei":Ljava/lang/String;
    :sswitch_2e8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x31

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_313

    .line 383
    const/16 v92, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->setMobileData(Z)V

    .line 384
    const-string/jumbo v92, "Request DATA_enable"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 385
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 386
    :cond_313
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x30

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_33e

    .line 387
    const/16 v92, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->setMobileData(Z)V

    .line 388
    const-string/jumbo v92, "Request DATA_disable"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 389
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 391
    :cond_33e
    const/16 v92, 0x2

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 396
    :sswitch_348
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x31

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_373

    .line 397
    const/16 v92, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->setUsbTethering(Z)I

    .line 398
    const-string/jumbo v92, "Request USB_Tethering Enable"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 399
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 400
    :cond_373
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x30

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_39e

    .line 401
    const/16 v92, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->setUsbTethering(Z)I

    .line 402
    const-string/jumbo v92, "Request USB_Tethering Disable"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 403
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 405
    :cond_39e
    const/16 v92, 0x2

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 410
    :sswitch_3a8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move/from16 v0, v92

    int-to-char v0, v0

    move/from16 v92, v0

    const/16 v93, 0xa

    invoke-static/range {v92 .. v93}, Ljava/lang/Character;->digit(CI)I

    move-result v63

    .line 412
    .local v63, "param":I
    const/16 v92, 0x1

    move/from16 v0, v63

    move/from16 v1, v92

    if-ne v0, v1, :cond_412

    .line 413
    new-instance v92, Ljava/lang/StringBuffer;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getDisplayWidth()I

    move-result v93

    invoke-static/range {v93 .. v93}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v92

    .line 414
    const-string/jumbo v93, ","

    .line 413
    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v92

    .line 415
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getDisplayHeight()I

    move-result v93

    invoke-static/range {v93 .. v93}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    .line 413
    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    .line 425
    .local v31, "info":Ljava/lang/String;
    :goto_3ed
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 426
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 427
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    array-length v0, v0

    move/from16 v92, v0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 418
    .end local v31    # "info":Ljava/lang/String;
    :cond_412
    new-instance v92, Ljava/lang/StringBuffer;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getDisplayWidth()I

    move-result v93

    invoke-static/range {v93 .. v93}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v92

    .line 419
    const-string/jumbo v93, ","

    .line 418
    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v92

    .line 420
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getDisplayHeight()I

    move-result v93

    invoke-static/range {v93 .. v93}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    .line 418
    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v92

    .line 421
    const-string/jumbo v93, ","

    .line 418
    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v92

    .line 422
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getDisplayBitsPixel()I

    move-result v93

    invoke-static/range {v93 .. v93}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    .line 418
    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "info":Ljava/lang/String;
    goto :goto_3ed

    .line 431
    .end local v31    # "info":Ljava/lang/String;
    .end local v63    # "param":I
    :sswitch_44e
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getCurrentScreenOrientation()I

    move-result v14

    .line 432
    .local v14, "deg":I
    packed-switch v14, :pswitch_data_2850

    .line 445
    const/4 v14, -0x1

    .line 448
    :goto_456
    :pswitch_456
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v78

    .line 449
    .local v78, "str":Ljava/lang/String;
    const/16 v92, -0x1

    move/from16 v0, v92

    if-le v14, v0, :cond_48e

    .line 450
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 451
    invoke-virtual/range {v78 .. v78}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 456
    :goto_472
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    array-length v0, v0

    move/from16 v92, v0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 436
    .end local v78    # "str":Ljava/lang/String;
    :pswitch_485
    const/16 v14, 0xb4

    .line 437
    goto :goto_456

    .line 439
    :pswitch_488
    const/16 v14, 0x5a

    .line 440
    goto :goto_456

    .line 442
    :pswitch_48b
    const/16 v14, 0x10e

    .line 443
    goto :goto_456

    .line 453
    .restart local v78    # "str":Ljava/lang/String;
    :cond_48e
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto :goto_472

    .line 460
    .end local v14    # "deg":I
    .end local v78    # "str":Ljava/lang/String;
    :sswitch_497
    new-instance v92, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v94, v0

    add-int/lit8 v94, v94, -0x1

    const/16 v95, 0x0

    move-object/from16 v0, v92

    move-object/from16 v1, v93

    move/from16 v2, v95

    move/from16 v3, v94

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v71

    .line 461
    .local v71, "rot":I
    sparse-switch v71, :sswitch_data_285c

    .line 474
    const/16 v71, -0x1

    .line 478
    :goto_4bd
    :sswitch_4bd
    const/16 v92, -0x1

    move/from16 v0, v71

    move/from16 v1, v92

    if-le v0, v1, :cond_51b

    .line 479
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v92, "com.android.LGATCMDService.CSO"

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v33, "intent":Landroid/content/Intent;
    const-string/jumbo v92, "rotation"

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 482
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 483
    const-string/jumbo v92, " "

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 488
    .end local v33    # "intent":Landroid/content/Intent;
    :goto_4ff
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    array-length v0, v0

    move/from16 v92, v0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 465
    :sswitch_512
    const/16 v71, 0x1

    .line 466
    goto :goto_4bd

    .line 468
    :sswitch_515
    const/16 v71, 0x2

    .line 469
    goto :goto_4bd

    .line 471
    :sswitch_518
    const/16 v71, 0x3

    .line 472
    goto :goto_4bd

    .line 485
    :cond_51b
    const/16 v92, 0x2

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto :goto_4ff

    .line 492
    .end local v71    # "rot":I
    :sswitch_524
    const/16 v92, 0x5

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v70, v0

    .line 494
    .local v70, "returnVal":[B
    const-string/jumbo v92, "NFCDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v41

    check-cast v41, Lcom/lge/android/atservice/NFCDevice;

    .line 495
    .local v41, "mNd":Lcom/lge/android/atservice/NFCDevice;
    const-string/jumbo v92, "SecureElementType"

    const-string/jumbo v93, "ese"

    invoke-static/range {v92 .. v93}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v34

    .line 497
    .local v34, "isLgNfcEmbeddedSeEnable":Z
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "NFC : request.body: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 499
    if-eqz v41, :cond_a05

    .line 500
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x30

    move/from16 v0, v92

    move/from16 v1, v93

    if-lt v0, v1, :cond_5d3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x43

    move/from16 v0, v92

    move/from16 v1, v93

    if-gt v0, v1, :cond_5d3

    .line 502
    :cond_58a
    if-eqz v34, :cond_60e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x32

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_60e

    .line 504
    :cond_59e
    const-string/jumbo v92, "NFC : Command NOT SUPPORTED"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 505
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 506
    const/16 v92, 0x2

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 609
    :goto_5b4
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "NFC : response.length:"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 501
    :cond_5d3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x64

    move/from16 v0, v92

    move/from16 v1, v93

    if-eq v0, v1, :cond_58a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x65

    move/from16 v0, v92

    move/from16 v1, v93

    if-eq v0, v1, :cond_58a

    .line 599
    const-string/jumbo v92, "NFC : Command NOT SUPPORTED"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 600
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 601
    const/16 v92, 0x2

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto :goto_5b4

    .line 503
    :cond_60e
    if-nez v34, :cond_634

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x38

    move/from16 v0, v92

    move/from16 v1, v93

    if-eq v0, v1, :cond_59e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x41

    move/from16 v0, v92

    move/from16 v1, v93

    if-eq v0, v1, :cond_59e

    .line 508
    :cond_634
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x32

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_722

    .line 509
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    move-object/from16 v0, v41

    move/from16 v1, v92

    move-object/from16 v2, v93

    move-object/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/android/atservice/NFCDevice;->atCmd_NFC_SetTestMode(B[B[B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 510
    const/16 v92, 0x0

    aget-byte v92, v70, v92

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_70b

    .line 511
    const/16 v92, 0x2

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 512
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "@SWIO : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const/16 v93, 0x1

    aget-byte v93, v70, v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 513
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "@PMUVCC : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const/16 v93, 0x2

    aget-byte v93, v70, v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 514
    const/16 v92, 0x1

    aget-byte v92, v70, v92

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_6f1

    .line 515
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x1

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 519
    :goto_6ca
    const/16 v92, 0x2

    aget-byte v92, v70, v92

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_6fe

    .line 520
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x1

    const/16 v94, 0x1

    aput-byte v93, v92, v94

    .line 524
    :goto_6e2
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 530
    :goto_6ea
    const-wide/16 v92, 0x3e8

    invoke-static/range {v92 .. v93}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_5b4

    .line 517
    :cond_6f1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    goto :goto_6ca

    .line 522
    :cond_6fe
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x1

    aput-byte v93, v92, v94

    goto :goto_6e2

    .line 526
    :cond_70b
    const-string/jumbo v92, "NFC : Command FAIL"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 527
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 528
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto :goto_6ea

    .line 531
    :cond_722
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x33

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_877

    .line 532
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    move-object/from16 v0, v41

    move/from16 v1, v92

    move-object/from16 v2, v93

    move-object/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/android/atservice/NFCDevice;->atCmd_NFC_SetTestMode(B[B[B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 533
    const/16 v92, 0x0

    aget-byte v92, v70, v92

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_860

    .line 534
    const/16 v92, 0xc

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 535
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "@loop 1 : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const/16 v93, 0x1

    aget-byte v93, v70, v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 536
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "@loop 2 : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const/16 v93, 0x2

    aget-byte v93, v70, v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 537
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "@loop 3 : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const/16 v93, 0x3

    aget-byte v93, v70, v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x1

    aget-byte v93, v70, v93

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 539
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x1

    aput-byte v93, v92, v94

    .line 540
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x2

    aput-byte v93, v92, v94

    .line 541
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x3

    aput-byte v93, v92, v94

    .line 542
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x2

    aget-byte v93, v70, v93

    const/16 v94, 0x4

    aput-byte v93, v92, v94

    .line 543
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x5

    aput-byte v93, v92, v94

    .line 544
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x6

    aput-byte v93, v92, v94

    .line 545
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x7

    aput-byte v93, v92, v94

    .line 546
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x3

    aget-byte v93, v70, v93

    const/16 v94, 0x8

    aput-byte v93, v92, v94

    .line 547
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x9

    aput-byte v93, v92, v94

    .line 548
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0xa

    aput-byte v93, v92, v94

    .line 549
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0xb

    aput-byte v93, v92, v94

    .line 550
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 556
    :goto_859
    const-wide/16 v92, 0x5dc

    invoke-static/range {v92 .. v93}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_5b4

    .line 552
    :cond_860
    const-string/jumbo v92, "NFC : Command FAIL"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 553
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 554
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto :goto_859

    .line 557
    :cond_877
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x42

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_921

    .line 558
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    move-object/from16 v0, v41

    move/from16 v1, v92

    move-object/from16 v2, v93

    move-object/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/android/atservice/NFCDevice;->atCmd_NFC_SetTestMode(B[B[B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 559
    const/16 v92, 0x0

    aget-byte v92, v70, v92

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_909

    .line 560
    const/16 v92, 0x2

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 561
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "@NFC mode : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const/16 v93, 0x1

    aget-byte v93, v70, v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 562
    const/16 v92, 0x1

    aget-byte v92, v70, v92

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_8fc

    .line 563
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x1

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 567
    :goto_8f2
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_5b4

    .line 565
    :cond_8fc
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    goto :goto_8f2

    .line 569
    :cond_909
    const-string/jumbo v92, "NFC : Command FAIL"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 570
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 571
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_5b4

    .line 573
    :cond_921
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x38

    move/from16 v0, v92

    move/from16 v1, v93

    if-eq v0, v1, :cond_945

    .line 574
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x41

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_9af

    .line 575
    :cond_945
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    move-object/from16 v0, v41

    move/from16 v1, v92

    move-object/from16 v2, v93

    move-object/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/android/atservice/NFCDevice;->atCmd_NFC_SetTestMode(B[B[B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 576
    const/16 v92, 0x0

    aget-byte v92, v70, v92

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_997

    .line 577
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x38

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_98d

    .line 578
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 580
    :cond_98d
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_5b4

    .line 582
    :cond_997
    const-string/jumbo v92, "NFC : Command FAIL"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 583
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 584
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_5b4

    .line 587
    :cond_9af
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    move-object/from16 v0, v41

    move/from16 v1, v92

    move-object/from16 v2, v93

    move-object/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/android/atservice/NFCDevice;->atCmd_NFC_SetTestMode(B[B[B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 588
    const/16 v92, 0x0

    aget-byte v92, v70, v92

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_9ed

    .line 589
    const-string/jumbo v92, "NFC : Command OK"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 590
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_5b4

    .line 592
    :cond_9ed
    const-string/jumbo v92, "NFC : Command FAIL"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 593
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 594
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_5b4

    .line 604
    :cond_a05
    const-string/jumbo v92, "NFC : Nd is null"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 605
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 606
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_5b4

    .line 613
    .end local v34    # "isLgNfcEmbeddedSeEnable":Z
    .end local v41    # "mNd":Lcom/lge/android/atservice/NFCDevice;
    .end local v70    # "returnVal":[B
    :sswitch_a1d
    const-string/jumbo v77, "/data/media/logsave"

    .line 614
    .local v77, "sourcePath":Ljava/lang/String;
    const-string/jumbo v62, "/data/media/logsave.zip"

    .line 615
    .local v62, "output":Ljava/lang/String;
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_LogSave_MakeZIP("

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    new-instance v93, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v94, v0

    invoke-direct/range {v93 .. v94}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v93 .. v93}, Lcom/lge/android/atservice/LGATCMDNative;->base64_decode(Ljava/lang/String;)[B

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string/jumbo v93, ")"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 616
    new-instance v91, Lcom/lge/android/atservice/ZipUtils;

    invoke-direct/range {v91 .. v91}, Lcom/lge/android/atservice/ZipUtils;-><init>()V
    :try_end_a55
    .catch Ljava/lang/NullPointerException; {:try_start_13e .. :try_end_a55} :catch_122

    .line 618
    .local v91, "ziputils":Lcom/lge/android/atservice/ZipUtils;
    :try_start_a55
    move-object/from16 v0, v77

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lcom/lge/android/atservice/ZipUtils;->zip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5c
    .catch Ljava/lang/Exception; {:try_start_a55 .. :try_end_a5c} :catch_a5e
    .catch Ljava/lang/NullPointerException; {:try_start_a55 .. :try_end_a5c} :catch_122

    goto/16 :goto_8d

    .line 619
    :catch_a5e
    move-exception v18

    .line 620
    .local v18, "e":Ljava/lang/Exception;
    const/16 v92, 0x1

    :try_start_a61
    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 621
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 626
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v62    # "output":Ljava/lang/String;
    .end local v77    # "sourcePath":Ljava/lang/String;
    .end local v91    # "ziputils":Lcom/lge/android/atservice/ZipUtils;
    :sswitch_a71
    const-string/jumbo v55, "/data/mtslog"

    .line 627
    .local v55, "mtssourcePath":Ljava/lang/String;
    const-string/jumbo v52, "/data/mtslogsave.zip"

    .line 628
    .local v52, "mtsoutput":Ljava/lang/String;
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_MTSLOG_MAKEZIP("

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    new-instance v93, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v94, v0

    invoke-direct/range {v93 .. v94}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v93 .. v93}, Lcom/lge/android/atservice/LGATCMDNative;->base64_decode(Ljava/lang/String;)[B

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string/jumbo v93, ")"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 629
    new-instance v58, Lcom/lge/android/atservice/ZipUtils;

    invoke-direct/range {v58 .. v58}, Lcom/lge/android/atservice/ZipUtils;-><init>()V
    :try_end_aa9
    .catch Ljava/lang/NullPointerException; {:try_start_a61 .. :try_end_aa9} :catch_122

    .line 631
    .local v58, "mtsziputils":Lcom/lge/android/atservice/ZipUtils;
    :try_start_aa9
    move-object/from16 v0, v55

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/lge/android/atservice/ZipUtils;->zip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab0
    .catch Ljava/lang/Exception; {:try_start_aa9 .. :try_end_ab0} :catch_ab2
    .catch Ljava/lang/NullPointerException; {:try_start_aa9 .. :try_end_ab0} :catch_122

    goto/16 :goto_8d

    .line 632
    :catch_ab2
    move-exception v18

    .line 633
    .restart local v18    # "e":Ljava/lang/Exception;
    const/16 v92, 0x1

    :try_start_ab5
    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 634
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 639
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v52    # "mtsoutput":Ljava/lang/String;
    .end local v55    # "mtssourcePath":Ljava/lang/String;
    .end local v58    # "mtsziputils":Lcom/lge/android/atservice/ZipUtils;
    :sswitch_ac5
    const-string/jumbo v57, "/data/mtslog"

    .line 640
    .local v57, "mtssourcePath_99":Ljava/lang/String;
    const-string/jumbo v54, "/data/mtslogsave_99.zip"

    .line 641
    .local v54, "mtsoutput_99":Ljava/lang/String;
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_MTSLOG_MAKEZIP("

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    new-instance v93, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v94, v0

    invoke-direct/range {v93 .. v94}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v93 .. v93}, Lcom/lge/android/atservice/LGATCMDNative;->base64_decode(Ljava/lang/String;)[B

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string/jumbo v93, ")"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 642
    new-instance v60, Lcom/lge/android/atservice/ZipUtils;

    invoke-direct/range {v60 .. v60}, Lcom/lge/android/atservice/ZipUtils;-><init>()V
    :try_end_afd
    .catch Ljava/lang/NullPointerException; {:try_start_ab5 .. :try_end_afd} :catch_122

    .line 644
    .local v60, "mtsziputils_99":Lcom/lge/android/atservice/ZipUtils;
    :try_start_afd
    move-object/from16 v0, v57

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/lge/android/atservice/ZipUtils;->zip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b04
    .catch Ljava/lang/Exception; {:try_start_afd .. :try_end_b04} :catch_b06
    .catch Ljava/lang/NullPointerException; {:try_start_afd .. :try_end_b04} :catch_122

    goto/16 :goto_8d

    .line 645
    :catch_b06
    move-exception v18

    .line 646
    .restart local v18    # "e":Ljava/lang/Exception;
    const/16 v92, 0x1

    :try_start_b09
    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 647
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 652
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v54    # "mtsoutput_99":Ljava/lang/String;
    .end local v57    # "mtssourcePath_99":Ljava/lang/String;
    .end local v60    # "mtsziputils_99":Lcom/lge/android/atservice/ZipUtils;
    :sswitch_b19
    const-string/jumbo v56, "/data/mtslog"

    .line 653
    .local v56, "mtssourcePath_98":Ljava/lang/String;
    const-string/jumbo v53, "/data/mtslogsave_98.zip"

    .line 654
    .local v53, "mtsoutput_98":Ljava/lang/String;
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_MTSLOG_MAKEZIP("

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    new-instance v93, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v94, v0

    invoke-direct/range {v93 .. v94}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v93 .. v93}, Lcom/lge/android/atservice/LGATCMDNative;->base64_decode(Ljava/lang/String;)[B

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string/jumbo v93, ")"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 655
    new-instance v59, Lcom/lge/android/atservice/ZipUtils;

    invoke-direct/range {v59 .. v59}, Lcom/lge/android/atservice/ZipUtils;-><init>()V
    :try_end_b51
    .catch Ljava/lang/NullPointerException; {:try_start_b09 .. :try_end_b51} :catch_122

    .line 657
    .local v59, "mtsziputils_98":Lcom/lge/android/atservice/ZipUtils;
    :try_start_b51
    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/lge/android/atservice/ZipUtils;->zip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b58
    .catch Ljava/lang/Exception; {:try_start_b51 .. :try_end_b58} :catch_b5a
    .catch Ljava/lang/NullPointerException; {:try_start_b51 .. :try_end_b58} :catch_122

    goto/16 :goto_8d

    .line 658
    :catch_b5a
    move-exception v18

    .line 659
    .restart local v18    # "e":Ljava/lang/Exception;
    const/16 v92, 0x1

    :try_start_b5d
    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 660
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 665
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v53    # "mtsoutput_98":Ljava/lang/String;
    .end local v56    # "mtssourcePath_98":Ljava/lang/String;
    .end local v59    # "mtsziputils_98":Lcom/lge/android/atservice/ZipUtils;
    :sswitch_b6d
    const-string/jumbo v92, "UtsSmsManager"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v89

    check-cast v89, Lcom/lge/android/atservice/UtsSmsManager;

    .line 666
    .local v89, "uts":Lcom/lge/android/atservice/UtsSmsManager;
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 667
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    invoke-virtual/range {v89 .. v89}, Lcom/lge/android/atservice/UtsSmsManager;->UtsSmsIsUnreadMsg()B

    move-result v93

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 668
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 669
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "Uts sms status: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 675
    .end local v89    # "uts":Lcom/lge/android/atservice/UtsSmsManager;
    :sswitch_bbb
    const-string/jumbo v92, "UtsSmsManager"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v89

    check-cast v89, Lcom/lge/android/atservice/UtsSmsManager;

    .line 676
    .restart local v89    # "uts":Lcom/lge/android/atservice/UtsSmsManager;
    invoke-virtual/range {v89 .. v89}, Lcom/lge/android/atservice/UtsSmsManager;->UtsSmsGetMsg()Ljava/util/ArrayList;

    move-result-object v75

    .line 677
    .local v75, "sms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 678
    const/16 v92, 0x1

    move-object/from16 v0, v75

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Ljava/lang/String;

    .line 679
    .local v76, "smsbody":Ljava/lang/String;
    invoke-virtual/range {v76 .. v76}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 680
    invoke-virtual/range {v76 .. v76}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 681
    const/16 v92, 0x2

    move-object/from16 v0, v75

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v92

    const-string/jumbo v93, "last"

    move-object/from16 v0, v92

    move-object/from16 v1, v93

    if-ne v0, v1, :cond_c38

    .line 682
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->status:I

    .line 686
    :goto_c0f
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "Uts sms is last "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    const/16 v92, 0x2

    move-object/from16 v0, v75

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Ljava/lang/String;

    move-object/from16 v0, v93

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 684
    :cond_c38
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->status:I

    goto :goto_c0f

    .line 690
    .end local v75    # "sms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v76    # "smsbody":Ljava/lang/String;
    .end local v89    # "uts":Lcom/lge/android/atservice/UtsSmsManager;
    :sswitch_c41
    const-string/jumbo v92, "UtsSmsManager"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v89

    check-cast v89, Lcom/lge/android/atservice/UtsSmsManager;

    .line 691
    .restart local v89    # "uts":Lcom/lge/android/atservice/UtsSmsManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->ISaddr:Z

    move/from16 v92, v0

    if-nez v92, :cond_c8d

    .line 692
    const/16 v92, 0x0

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdHandler;->sms_addr:Ljava/lang/String;

    .line 693
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v92

    move/from16 v1, v94

    move/from16 v2, v93

    invoke-direct {v8, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 694
    .local v8, "addr":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/lge/android/atservice/LGCmdHandler;->sms_addr:Ljava/lang/String;

    .line 695
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/android/atservice/LGCmdHandler;->ISaddr:Z

    .line 702
    .end local v8    # "addr":Ljava/lang/String;
    :goto_c83
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 697
    :cond_c8d
    new-instance v49, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v92

    move/from16 v2, v94

    move/from16 v3, v93

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 698
    .local v49, "message":Ljava/lang/String;
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/android/atservice/LGCmdHandler;->ISaddr:Z

    .line 699
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "UTS sms addr"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->sms_addr:Ljava/lang/String;

    move-object/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string/jumbo v93, "UTS sms message"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->sms_addr:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v89

    move-object/from16 v1, v92

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/lge/android/atservice/UtsSmsManager;->UtsSmsSendMsg(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c83

    .line 706
    .end local v49    # "message":Ljava/lang/String;
    .end local v89    # "uts":Lcom/lge/android/atservice/UtsSmsManager;
    :sswitch_cec
    const-string/jumbo v92, "CallDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v36

    check-cast v36, Lcom/lge/android/atservice/CallDevice;

    .line 707
    .local v36, "mCallDevice":Lcom/lge/android/atservice/CallDevice;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/CallDevice;->sendCall([B)V

    .line 708
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 712
    .end local v36    # "mCallDevice":Lcom/lge/android/atservice/CallDevice;
    :sswitch_d10
    const-string/jumbo v92, "CallDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v36

    check-cast v36, Lcom/lge/android/atservice/CallDevice;

    .line 713
    .restart local v36    # "mCallDevice":Lcom/lge/android/atservice/CallDevice;
    invoke-virtual/range {v36 .. v36}, Lcom/lge/android/atservice/CallDevice;->answerCall()V

    .line 714
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 718
    .end local v36    # "mCallDevice":Lcom/lge/android/atservice/CallDevice;
    :sswitch_d2a
    const-string/jumbo v92, "CallDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v36

    check-cast v36, Lcom/lge/android/atservice/CallDevice;

    .line 719
    .restart local v36    # "mCallDevice":Lcom/lge/android/atservice/CallDevice;
    invoke-virtual/range {v36 .. v36}, Lcom/lge/android/atservice/CallDevice;->endCall()V

    .line 720
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 724
    .end local v36    # "mCallDevice":Lcom/lge/android/atservice/CallDevice;
    :sswitch_d44
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 725
    const-string/jumbo v92, "oem-10"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 730
    :sswitch_d58
    const-string/jumbo v92, "AirplaneDevice"

    .line 729
    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v35

    check-cast v35, Lcom/lge/android/atservice/AirplaneDevice;

    .line 731
    .local v35, "mAd":Lcom/lge/android/atservice/AirplaneDevice;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x31

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_d9e

    .line 732
    const/16 v92, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/AirplaneDevice;->setAirplaneModeOn(I)V

    .line 733
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 734
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/AirplaneDevice;->getValues([B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 735
    :cond_d9e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x30

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_dd7

    .line 736
    const/16 v92, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/AirplaneDevice;->setAirplaneModeOn(I)V

    .line 737
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 738
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/AirplaneDevice;->getValues([B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 740
    :cond_dd7
    const/16 v92, 0x2

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 741
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 747
    .end local v35    # "mAd":Lcom/lge/android/atservice/AirplaneDevice;
    :sswitch_de9
    const-string/jumbo v92, "AirplaneDevice"

    .line 746
    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v35

    check-cast v35, Lcom/lge/android/atservice/AirplaneDevice;

    .line 748
    .restart local v35    # "mAd":Lcom/lge/android/atservice/AirplaneDevice;
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/AirplaneDevice;->isAirplaneModeOn(Landroid/content/Context;)V

    .line 750
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/AirplaneDevice;->getAirplaneModeStatus([B)I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 755
    .end local v35    # "mAd":Lcom/lge/android/atservice/AirplaneDevice;
    :sswitch_e21
    const-string/jumbo v92, "AirplaneDevice"

    .line 754
    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v35

    check-cast v35, Lcom/lge/android/atservice/AirplaneDevice;

    .line 756
    .restart local v35    # "mAd":Lcom/lge/android/atservice/AirplaneDevice;
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/AirplaneDevice;->sleepModeOn(Landroid/content/Context;)V

    goto/16 :goto_8d

    .line 760
    .end local v35    # "mAd":Lcom/lge/android/atservice/AirplaneDevice;
    :sswitch_e45
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 761
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->wakeup()V

    goto/16 :goto_8d

    .line 765
    :sswitch_e52
    invoke-direct/range {p0 .. p0}, Lcom/lge/android/atservice/LGCmdHandler;->getKSType()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 766
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    array-length v0, v0

    move/from16 v92, v0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 768
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 772
    :sswitch_e7b
    invoke-direct/range {p0 .. p0}, Lcom/lge/android/atservice/LGCmdHandler;->getKSUnlockStatus()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 773
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    array-length v0, v0

    move/from16 v92, v0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 774
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 778
    :sswitch_ea4
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 782
    :sswitch_eae
    const-string/jumbo v92, "OS Upgrade notification start"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    const/high16 v93, 0x7f040000

    invoke-virtual/range {v92 .. v93}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v93, v0

    const v94, 0x7f040001

    invoke-virtual/range {v93 .. v94}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v93

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Lcom/lge/android/atservice/DeviceManager;->sendOsUpNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string/jumbo v92, "OS Upgrade notification done"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 785
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 786
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 790
    :sswitch_eee
    const-string/jumbo v92, "LGCMD_WIFI_MODE_OFF"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 791
    const-string/jumbo v92, "WlanDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v47

    check-cast v47, Lcom/lge/android/atservice/WlanDevice;

    .line 792
    .local v47, "mWlanDevice":Lcom/lge/android/atservice/WlanDevice;
    invoke-virtual/range {v47 .. v47}, Lcom/lge/android/atservice/WlanDevice;->PowerOff()I

    move-result v92

    if-nez v92, :cond_f11

    .line 793
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 795
    :cond_f11
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 800
    .end local v47    # "mWlanDevice":Lcom/lge/android/atservice/WlanDevice;
    :sswitch_f1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mDB:Lcom/lge/android/atservice/Database;

    move-object/from16 v92, v0

    const-string/jumbo v93, "getDatabaseCrc"

    invoke-virtual/range {v92 .. v93}, Lcom/lge/android/atservice/Database;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 801
    .local v13, "db_crc_ret":Ljava/lang/String;
    const-string/jumbo v92, "error"

    move-object/from16 v0, v92

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v92

    if-eqz v92, :cond_f51

    .line 802
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 803
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 804
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 806
    :cond_f51
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 811
    .end local v13    # "db_crc_ret":Ljava/lang/String;
    :sswitch_f5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mDB:Lcom/lge/android/atservice/Database;

    move-object/from16 v92, v0

    const-string/jumbo v93, "getFpriCrc"

    invoke-virtual/range {v92 .. v93}, Lcom/lge/android/atservice/Database;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 812
    .local v23, "fpri_crc_ret":Ljava/lang/String;
    const-string/jumbo v92, "error"

    move-object/from16 v0, v23

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v92

    if-eqz v92, :cond_f93

    .line 813
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 814
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 815
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto/16 :goto_8d

    .line 817
    :cond_f93
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 822
    .end local v23    # "fpri_crc_ret":Ljava/lang/String;
    :sswitch_f9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mDB:Lcom/lge/android/atservice/Database;

    move-object/from16 v92, v0

    const-string/jumbo v93, "dumpDatabase"

    invoke-virtual/range {v92 .. v93}, Lcom/lge/android/atservice/Database;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 823
    .local v17, "dump_ret":Ljava/lang/String;
    const-string/jumbo v92, "error"

    move-object/from16 v0, v17

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v92

    if-eqz v92, :cond_fc1

    .line 824
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 826
    :cond_fc1
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 831
    .end local v17    # "dump_ret":Ljava/lang/String;
    :sswitch_fcb
    new-instance v83, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v83

    move-object/from16 v1, v92

    move/from16 v2, v94

    move/from16 v3, v93

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 832
    .local v83, "temp_set_req":Ljava/lang/String;
    const/16 v69, 0x1

    .line 834
    .local v69, "returnResult":I
    const-string/jumbo v92, "VZWAPN"

    new-instance v93, Ljava/lang/StringBuilder;

    invoke-direct/range {v93 .. v93}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v94, "LGCmdHandler.java :: LGCMD_VZWAPNE_SET = "

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    move-object/from16 v0, v93

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-static/range {v92 .. v93}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v48, Lcom/android/internal/telephony/ApnSettingHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ApnSettingHelper;-><init>(Landroid/content/Context;)V

    .line 839
    .local v48, "mapnSettingHelper":Lcom/android/internal/telephony/ApnSettingHelper;
    move-object/from16 v0, v48

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSettingHelper;->set(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/ApnSettingHelper;->update()I

    move-result v92

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_102a

    .line 842
    const/16 v69, 0x0

    .line 845
    :cond_102a
    const-string/jumbo v84, "request"

    .line 847
    .local v84, "temp_set_res":Ljava/lang/String;
    invoke-virtual/range {v84 .. v84}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 848
    invoke-virtual/range {v84 .. v84}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 849
    move/from16 v0, v69

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 853
    .end local v48    # "mapnSettingHelper":Lcom/android/internal/telephony/ApnSettingHelper;
    .end local v69    # "returnResult":I
    .end local v83    # "temp_set_req":Ljava/lang/String;
    .end local v84    # "temp_set_res":Ljava/lang/String;
    :sswitch_1049
    const-string/jumbo v7, "abc"

    .line 854
    .local v7, "abc":Ljava/lang/String;
    new-instance v48, Lcom/android/internal/telephony/ApnSettingHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ApnSettingHelper;-><init>(Landroid/content/Context;)V

    .line 856
    .restart local v48    # "mapnSettingHelper":Lcom/android/internal/telephony/ApnSettingHelper;
    new-instance v81, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v81

    move-object/from16 v1, v92

    move/from16 v2, v94

    move/from16 v3, v93

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 858
    .local v81, "temp_get_req":Ljava/lang/String;
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_VZWAPNE_GET = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/ApnSettingHelper;->toString()Ljava/lang/String;

    move-result-object v82

    .line 861
    .local v82, "temp_get_res":Ljava/lang/String;
    invoke-virtual/range {v82 .. v82}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 862
    invoke-virtual/range {v82 .. v82}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 863
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 868
    .end local v7    # "abc":Ljava/lang/String;
    .end local v48    # "mapnSettingHelper":Lcom/android/internal/telephony/ApnSettingHelper;
    .end local v81    # "temp_get_req":Ljava/lang/String;
    .end local v82    # "temp_get_res":Ljava/lang/String;
    :sswitch_10b3
    const-string/jumbo v92, "LGCMD_SLATE_GETEXTENDEDVERSIONINFO"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 869
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 870
    .local v74, "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_10e0

    .line 871
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 872
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 873
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 876
    :cond_10e0
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->getVersions()Ljava/lang/String;

    move-result-object v32

    .line 877
    .local v32, "info_res":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 878
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 879
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 883
    .end local v32    # "info_res":Ljava/lang/String;
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_1102
    const-string/jumbo v92, "LGCMD_SLATE_GETAIRPLANEMODE"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 884
    const-string/jumbo v92, "AirplaneDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v35

    check-cast v35, Lcom/lge/android/atservice/AirplaneDevice;

    .line 885
    .restart local v35    # "mAd":Lcom/lge/android/atservice/AirplaneDevice;
    if-nez v35, :cond_112f

    .line 886
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 887
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 888
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 891
    :cond_112f
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 892
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    invoke-virtual/range {v35 .. v35}, Lcom/lge/android/atservice/AirplaneDevice;->getAirplaneModeStatusForSLATE()Z

    move-result v92

    if-eqz v92, :cond_1161

    const/16 v92, 0x1

    :goto_114b
    const/16 v94, 0x0

    aput-byte v92, v93, v94

    .line 893
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 894
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 892
    :cond_1161
    const/16 v92, 0x0

    goto :goto_114b

    .line 898
    .end local v35    # "mAd":Lcom/lge/android/atservice/AirplaneDevice;
    :sswitch_1164
    const-string/jumbo v92, "LGCMD_SLATE_SETAIRPLANEMODE"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 899
    const-string/jumbo v92, "AirplaneDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v35

    check-cast v35, Lcom/lge/android/atservice/AirplaneDevice;

    .line 900
    .restart local v35    # "mAd":Lcom/lge/android/atservice/AirplaneDevice;
    if-nez v35, :cond_1191

    .line 901
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 902
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 903
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 906
    :cond_1191
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, v35

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/AirplaneDevice;->setAirplaneModeOn(I)V

    .line 907
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 908
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 909
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 913
    .end local v35    # "mAd":Lcom/lge/android/atservice/AirplaneDevice;
    :sswitch_11c8
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 914
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_11ef

    .line 915
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 916
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 917
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 920
    :cond_11ef
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->getBacklightSetting()Ljava/lang/String;

    move-result-object v79

    .line 923
    .local v79, "strSec":Ljava/lang/String;
    invoke-virtual/range {v79 .. v79}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 924
    invoke-virtual/range {v79 .. v79}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 925
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 929
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    .end local v79    # "strSec":Ljava/lang/String;
    :sswitch_1211
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 930
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_1238

    .line 931
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 932
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 933
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 936
    :cond_1238
    new-instance v79, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v79

    move-object/from16 v1, v92

    move/from16 v2, v94

    move/from16 v3, v93

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 937
    .restart local v79    # "strSec":Ljava/lang/String;
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "BackLightSetting Request received. req str : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 938
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 939
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v93

    move-object/from16 v0, v74

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/SlateDevice;->setBacklightSetting(I)B

    move-result v93

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 940
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "BackLightSetting completed. Return code : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 941
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 942
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 946
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    .end local v79    # "strSec":Ljava/lang/String;
    :sswitch_12c5
    const-string/jumbo v92, "-----------BLUETOOTH-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 947
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 948
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_12f2

    .line 949
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 950
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 951
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 953
    :cond_12f2
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->getBluetoothStatus()I

    move-result v68

    .line 954
    .local v68, "ret":I
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 955
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move/from16 v0, v68

    int-to-byte v0, v0

    move/from16 v93, v0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 957
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 958
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 962
    .end local v68    # "ret":I
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_1325
    const-string/jumbo v92, "-----------SETBLUETOOTHSTATE-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 963
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 964
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_1352

    .line 965
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 966
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 967
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 970
    :cond_1352
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "SetBluetoothState Request received. req str : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 971
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/SlateDevice;->setBluetoothStatus(I)I

    move-result v11

    .line 972
    .local v11, "btResponse":I
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 973
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    int-to-byte v0, v11

    move/from16 v93, v0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 974
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "SetBluetoothState completed. Return code : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 975
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 976
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 980
    .end local v11    # "btResponse":I
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_13d3
    const-string/jumbo v92, "WlanDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v47

    check-cast v47, Lcom/lge/android/atservice/WlanDevice;

    .line 981
    .restart local v47    # "mWlanDevice":Lcom/lge/android/atservice/WlanDevice;
    if-nez v47, :cond_13fa

    .line 982
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 983
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 984
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 987
    :cond_13fa
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 988
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "Wifi isPoweredOn? : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v47 .. v47}, Lcom/lge/android/atservice/WlanDevice;->isPoweredOn()Z

    move-result v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 989
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    invoke-virtual/range {v47 .. v47}, Lcom/lge/android/atservice/WlanDevice;->isPoweredOn()Z

    move-result v92

    if-eqz v92, :cond_1447

    const/16 v92, 0x1

    :goto_1431
    const/16 v94, 0x0

    aput-byte v92, v93, v94

    .line 990
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 991
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 989
    :cond_1447
    const/16 v92, 0x0

    goto :goto_1431

    .line 995
    .end local v47    # "mWlanDevice":Lcom/lge/android/atservice/WlanDevice;
    :sswitch_144a
    const-string/jumbo v92, "WlanDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v47

    check-cast v47, Lcom/lge/android/atservice/WlanDevice;

    .line 996
    .restart local v47    # "mWlanDevice":Lcom/lge/android/atservice/WlanDevice;
    if-nez v47, :cond_1471

    .line 997
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 998
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 999
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1002
    :cond_1471
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "WIFI SET REQUEST : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1004
    const/16 v90, 0x0

    .line 1005
    .local v90, "wret":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_14dd

    .line 1006
    invoke-virtual/range {v47 .. v47}, Lcom/lge/android/atservice/WlanDevice;->PowerOn()I

    move-result v90

    .line 1011
    :goto_14aa
    if-gez v90, :cond_14ae

    .line 1012
    const/16 v90, 0x1

    .line 1015
    :cond_14ae
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1016
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move/from16 v0, v90

    int-to-byte v0, v0

    move/from16 v93, v0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 1017
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1018
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1008
    :cond_14dd
    invoke-virtual/range {v47 .. v47}, Lcom/lge/android/atservice/WlanDevice;->PowerOff()I

    move-result v90

    goto :goto_14aa

    .line 1022
    .end local v47    # "mWlanDevice":Lcom/lge/android/atservice/WlanDevice;
    .end local v90    # "wret":I
    :sswitch_14e2
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1023
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_1509

    .line 1024
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1025
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1026
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1029
    :cond_1509
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->getGPSStatus()Z

    move-result v10

    .line 1030
    .local v10, "bRet":Z
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1031
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    if-eqz v10, :cond_153b

    const/16 v92, 0x1

    :goto_1525
    const/16 v94, 0x0

    aput-byte v92, v93, v94

    .line 1032
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1033
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1031
    :cond_153b
    const/16 v92, 0x0

    goto :goto_1525

    .line 1037
    .end local v10    # "bRet":Z
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_153e
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1038
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_1565

    .line 1039
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1040
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1041
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1044
    :cond_1565
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_15af

    .line 1045
    const/16 v92, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/SlateDevice;->setGPSStatus(Z)Z

    move-result v10

    .line 1049
    .restart local v10    # "bRet":Z
    :goto_1581
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1050
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    if-eqz v10, :cond_15ba

    const/16 v92, 0x0

    :goto_1599
    const/16 v94, 0x0

    aput-byte v92, v93, v94

    .line 1051
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1052
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1047
    .end local v10    # "bRet":Z
    :cond_15af
    const/16 v92, 0x0

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/SlateDevice;->setGPSStatus(Z)Z

    move-result v10

    .restart local v10    # "bRet":Z
    goto :goto_1581

    .line 1050
    :cond_15ba
    const/16 v92, 0x1

    goto :goto_1599

    .line 1056
    .end local v10    # "bRet":Z
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_15bd
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1057
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_15e4

    .line 1058
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1059
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1060
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1063
    :cond_15e4
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->geticdRoamingMode()B

    move-result v28

    .line 1066
    .local v28, "gret":I
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1067
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v93, v0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 1068
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1069
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1073
    .end local v28    # "gret":I
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_1617
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1074
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_163e

    .line 1075
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1076
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1077
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1080
    :cond_163e
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->geticdRSSI()Ljava/lang/String;

    move-result-object v72

    .line 1081
    .local v72, "rssi_Info":Ljava/lang/String;
    move-object/from16 v0, v74

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/SlateDevice;->processGetRssi(Ljava/lang/String;)[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1082
    const/16 v92, 0x6

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1083
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1087
    .end local v72    # "rssi_Info":Ljava/lang/String;
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_1662
    const-string/jumbo v92, "SPR"

    const-string/jumbo v93, "ro.build.target_operator"

    invoke-static/range {v93 .. v93}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    if-eqz v92, :cond_8d

    .line 1088
    const-string/jumbo v92, "-----------GET UI SCREEN ID-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1089
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1090
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_169f

    .line 1091
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1092
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1093
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1096
    :cond_169f
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->GetUIScreenID()I

    move-result v86

    .line 1097
    .local v86, "uiscreenidret":I
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1098
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move/from16 v0, v86

    int-to-byte v0, v0

    move/from16 v93, v0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 1099
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1100
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1105
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    .end local v86    # "uiscreenidret":I
    :sswitch_16d2
    const-string/jumbo v92, "SPR"

    const-string/jumbo v93, "ro.build.target_operator"

    invoke-static/range {v93 .. v93}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    if-eqz v92, :cond_8d

    .line 1106
    const-string/jumbo v92, "-----------SET ORIENTATION LOCK-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1107
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1108
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_170f

    .line 1109
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1110
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1111
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1114
    :cond_170f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/SlateDevice;->setOrientationLock(I)I

    move-result v61

    .line 1115
    .local v61, "orientationret":I
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1116
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move/from16 v0, v61

    int-to-byte v0, v0

    move/from16 v93, v0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 1117
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_SLATE_SETORIENTATIONLOCK completed. Return code : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1118
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1119
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1124
    .end local v61    # "orientationret":I
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_1771
    const-string/jumbo v92, "-----------LGCMD_SLATE_GET4GSTATUS-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1125
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1126
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_179e

    .line 1127
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1128
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1129
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1132
    :cond_179e
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1133
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->get4Gstatus()Z

    move-result v92

    if-eqz v92, :cond_17d0

    .line 1134
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x1

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 1138
    :goto_17be
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1139
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1136
    :cond_17d0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    goto :goto_17be

    .line 1144
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_17dd
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1145
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_1804

    .line 1146
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1147
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1148
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1151
    :cond_1804
    const-string/jumbo v92, "-----------LGCMD_SLATE_SET4GSTATUS-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1152
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_SLATE_SET4GSTATUS request.body[0] :"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_1863

    .line 1155
    const-string/jumbo v92, "-----------request.body[0] == 1-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1156
    const/16 v92, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/SlateDevice;->set4Gstatus(Z)Z

    move-result v45

    .line 1157
    .local v45, "mSet4GRet":Z
    if-eqz v45, :cond_1859

    .line 1158
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1160
    :cond_1859
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1162
    .end local v45    # "mSet4GRet":Z
    :cond_1863
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    if-nez v92, :cond_1895

    .line 1163
    const-string/jumbo v92, "-----------request.body[0] == 0-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1164
    const/16 v92, 0x0

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/SlateDevice;->set4Gstatus(Z)Z

    move-result v45

    .line 1165
    .restart local v45    # "mSet4GRet":Z
    if-eqz v45, :cond_188b

    .line 1166
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1168
    :cond_188b
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1171
    .end local v45    # "mSet4GRet":Z
    :cond_1895
    const-string/jumbo v92, "-----------LGCMD_SLATE_SET4GSTATUS invalid value----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1172
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1177
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_18a5
    const-string/jumbo v92, "-----------LGCMD_SLATE_GETUSBDEBUGGINGSTATUS-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1178
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1179
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_18d2

    .line 1180
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1181
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1182
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1185
    :cond_18d2
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->getUSBDebugStatus()I

    move-result v88

    .line 1186
    .local v88, "usbstatus":I
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1187
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move/from16 v0, v88

    int-to-byte v0, v0

    move/from16 v93, v0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 1188
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1189
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1193
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    .end local v88    # "usbstatus":I
    :sswitch_1905
    const-string/jumbo v92, "-----------LGCMD_SLATE_SETUSBDEBUGGINGSTATUS-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1195
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_1932

    .line 1196
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1197
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1198
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1201
    :cond_1932
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "SetUSBDebugState Request received. req str : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aget-byte v92, v92, v93

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/SlateDevice;->setUSBDebugStatus(I)I

    move-result v87

    .line 1203
    .local v87, "usbResponse":I
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1204
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move/from16 v0, v87

    int-to-byte v0, v0

    move/from16 v93, v0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 1205
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "SetUSBDebugState completed. Return code : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1206
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1207
    move/from16 v0, v87

    int-to-byte v0, v0

    move/from16 v92, v0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1211
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    .end local v87    # "usbResponse":I
    :sswitch_19b8
    const-string/jumbo v92, "SPR"

    const-string/jumbo v93, "ro.build.target_operator"

    invoke-static/range {v93 .. v93}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    if-eqz v92, :cond_8d

    .line 1212
    const-string/jumbo v92, "-----------GET LOCK STATUS-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1214
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_19f5

    .line 1215
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1216
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1217
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1220
    :cond_19f5
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->getScreenLockStatus()I

    move-result v73

    .line 1221
    .local v73, "screenlockret":I
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1222
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move/from16 v0, v73

    int-to-byte v0, v0

    move/from16 v93, v0

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 1223
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1224
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1229
    .end local v73    # "screenlockret":I
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_1a28
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1230
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    const/16 v93, 0x1

    const/16 v94, 0x0

    aput-byte v93, v92, v94

    .line 1231
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1232
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1236
    :sswitch_1a54
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1237
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_1a7b

    .line 1238
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1239
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1240
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1243
    :cond_1a7b
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->GetAPNList()Ljava/lang/String;

    move-result-object v9

    .line 1244
    .local v9, "apn_info":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1245
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1246
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1250
    .end local v9    # "apn_info":Ljava/lang/String;
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_1a9d
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1251
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_1ac4

    .line 1252
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1253
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1254
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1257
    :cond_1ac4
    invoke-virtual/range {v74 .. v74}, Lcom/lge/android/atservice/SlateDevice;->getFrontKeyLightSetting()Ljava/lang/String;

    move-result-object v37

    .line 1258
    .local v37, "mFrontSec":Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1259
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1260
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1264
    .end local v37    # "mFrontSec":Ljava/lang/String;
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    :sswitch_1ae6
    const-string/jumbo v92, "SlateDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v74

    check-cast v74, Lcom/lge/android/atservice/SlateDevice;

    .line 1265
    .restart local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    if-nez v74, :cond_1b0d

    .line 1266
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1267
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1268
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1271
    :cond_1b0d
    new-instance v79, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v79

    move-object/from16 v1, v92

    move/from16 v2, v94

    move/from16 v3, v93

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1272
    .restart local v79    # "strSec":Ljava/lang/String;
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "Front Keypad LED Timeout Request received. req str : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1273
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1274
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/SlateDevice;->setFrontKeyLightSetting(I)Z

    move-result v92

    if-eqz v92, :cond_1b9e

    const/16 v92, 0x0

    :goto_1b67
    const/16 v94, 0x0

    aput-byte v92, v93, v94

    .line 1275
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "Front Keypad BackLightSetting completed. Return code : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    aget-byte v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1276
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1277
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1274
    :cond_1b9e
    const/16 v92, 0x1

    goto :goto_1b67

    .line 1281
    .end local v74    # "slatedev":Lcom/lge/android/atservice/SlateDevice;
    .end local v79    # "strSec":Ljava/lang/String;
    :sswitch_1ba1
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v43

    .line 1282
    .local v43, "mPhoneNumber":Ljava/lang/String;
    if-nez v43, :cond_1bbf

    .line 1283
    const-string/jumbo v92, "mPhoneNumber NULL"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1284
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1285
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1288
    :cond_1bbf
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1289
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1290
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1294
    .end local v43    # "mPhoneNumber":Ljava/lang/String;
    :sswitch_1bdd
    const-string/jumbo v92, "PatternLockClear"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v44

    check-cast v44, Lcom/lge/android/atservice/PatternLockClear;

    .line 1296
    .local v44, "mPtnClr":Lcom/lge/android/atservice/PatternLockClear;
    if-nez v44, :cond_1c04

    .line 1297
    const-string/jumbo v92, "getDevice NULL!!!!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 1298
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1299
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1303
    :cond_1c04
    const-string/jumbo v92, "ro.product.device"

    invoke-static/range {v92 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    const-string/jumbo v93, "e7wifi"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    if-nez v92, :cond_1c54

    .line 1304
    const-string/jumbo v92, "ro.product.device"

    invoke-static/range {v92 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    const-string/jumbo v93, "e8wifi"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    .line 1303
    if-nez v92, :cond_1c54

    .line 1305
    const-string/jumbo v92, "ro.product.device"

    invoke-static/range {v92 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    const-string/jumbo v93, "e9wifi"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    .line 1303
    if-nez v92, :cond_1c54

    .line 1306
    const-string/jumbo v92, "ro.product.device"

    invoke-static/range {v92 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    const-string/jumbo v93, "e9wifin"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    .line 1303
    if-nez v92, :cond_1c54

    .line 1307
    const-string/jumbo v92, "ro.product.device"

    invoke-static/range {v92 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    const-string/jumbo v93, "awifi"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    .line 1303
    if-eqz v92, :cond_1cf5

    .line 1308
    :cond_1c54
    invoke-direct/range {p0 .. p0}, Lcom/lge/android/atservice/LGCmdHandler;->getCSN()Ljava/lang/String;

    move-result-object v30

    .line 1309
    .restart local v30    # "imei":Ljava/lang/String;
    new-instance v92, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    const/16 v95, 0x6

    invoke-direct/range {v92 .. v95}, Ljava/lang/String;-><init>([BII)V

    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v66

    .line 1310
    .local v66, "request_number":I
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "imei = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1326
    :goto_1c86
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_LGPWDDEVICE Request Num = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1328
    move-object/from16 v0, v44

    move/from16 v1, v66

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lge/android/atservice/PatternLockClear;->PatternLockClr(ILjava/lang/String;)Z

    move-result v92

    if-eqz v92, :cond_1d30

    .line 1329
    new-instance v64, Landroid/content/Intent;

    const-string/jumbo v92, "com.lge.intent.action.RESET_PATTERN"

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v64, "ptnclrIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1331
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 1336
    .end local v64    # "ptnclrIntent":Landroid/content/Intent;
    :goto_1cce
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1337
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_PTNCLR Request Result = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 1312
    .end local v30    # "imei":Ljava/lang/String;
    .end local v66    # "request_number":I
    :cond_1cf5
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getImei()Ljava/lang/String;

    move-result-object v30

    .line 1314
    .restart local v30    # "imei":Ljava/lang/String;
    if-nez v30, :cond_1cfe

    .line 1315
    const-string/jumbo v30, ""

    .line 1318
    :cond_1cfe
    const/16 v29, 0x6

    .local v29, "i":I
    :goto_1d00
    if-ltz v29, :cond_1d12

    .line 1319
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    aget-byte v92, v92, v29

    const/16 v93, 0xd

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_1d2d

    .line 1324
    :cond_1d12
    new-instance v92, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v92

    move-object/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v66

    .restart local v66    # "request_number":I
    goto/16 :goto_1c86

    .line 1318
    .end local v66    # "request_number":I
    :cond_1d2d
    add-int/lit8 v29, v29, -0x1

    goto :goto_1d00

    .line 1333
    .end local v29    # "i":I
    .restart local v66    # "request_number":I
    :cond_1d30
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto :goto_1cce

    .line 1341
    .end local v30    # "imei":Ljava/lang/String;
    .end local v44    # "mPtnClr":Lcom/lge/android/atservice/PatternLockClear;
    .end local v66    # "request_number":I
    :sswitch_1d39
    const-string/jumbo v92, "LGPwdDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v40

    check-cast v40, Lcom/lge/android/atservice/LGPwdDevice;

    .line 1342
    .local v40, "mLGPwd":Lcom/lge/android/atservice/LGPwdDevice;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getImei()Ljava/lang/String;

    move-result-object v30

    .line 1344
    .restart local v30    # "imei":Ljava/lang/String;
    if-nez v30, :cond_1d4f

    .line 1345
    const-string/jumbo v30, ""

    .line 1348
    :cond_1d4f
    const/16 v29, 0x6

    .restart local v29    # "i":I
    :goto_1d51
    if-ltz v29, :cond_1d63

    .line 1349
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    aget-byte v92, v92, v29

    const/16 v93, 0xd

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_1de8

    .line 1354
    :cond_1d63
    new-instance v92, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v92

    move-object/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v66

    .line 1355
    .restart local v66    # "request_number":I
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_LGPWDDEVICE Request Num = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, v40

    move/from16 v1, v66

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lge/android/atservice/LGPwdDevice;->getLGPwd(ILjava/lang/String;)Z

    move-result v92

    if-eqz v92, :cond_1dec

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/LGCmdHandler;->queryCallSettingValueByKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1359
    .local v6, "LGpasswd":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1360
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1361
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 1367
    .end local v6    # "LGpasswd":Ljava/lang/String;
    :goto_1dc9
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_LGPWDDEVICE Request Result = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 1348
    .end local v66    # "request_number":I
    :cond_1de8
    add-int/lit8 v29, v29, -0x1

    goto/16 :goto_1d51

    .line 1363
    .restart local v66    # "request_number":I
    :cond_1dec
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 1364
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto :goto_1dc9

    .line 1371
    .end local v29    # "i":I
    .end local v30    # "imei":Ljava/lang/String;
    .end local v40    # "mLGPwd":Lcom/lge/android/atservice/LGPwdDevice;
    .end local v66    # "request_number":I
    :sswitch_1dfd
    const-string/jumbo v92, "OSPPwdInitDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v42

    check-cast v42, Lcom/lge/android/atservice/OspPwdInitDevice;

    .line 1372
    .local v42, "mOspPwd":Lcom/lge/android/atservice/OspPwdInitDevice;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getImei()Ljava/lang/String;

    move-result-object v30

    .line 1374
    .restart local v30    # "imei":Ljava/lang/String;
    if-nez v30, :cond_1e13

    .line 1375
    const-string/jumbo v30, ""

    .line 1378
    :cond_1e13
    const/16 v29, 0x6

    .restart local v29    # "i":I
    :goto_1e15
    if-ltz v29, :cond_1e27

    .line 1379
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    aget-byte v92, v92, v29

    const/16 v93, 0xd

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_1ea7

    .line 1384
    :cond_1e27
    new-instance v92, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v92

    move-object/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v66

    .line 1385
    .restart local v66    # "request_number":I
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_LGPWDDEVICE Request Num = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1387
    move-object/from16 v0, v42

    move/from16 v1, v66

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lge/android/atservice/OspPwdInitDevice;->OspPwdInit(ILjava/lang/String;)Z

    move-result v92

    if-eqz v92, :cond_1eab

    .line 1388
    new-instance v65, Landroid/content/Intent;

    const-string/jumbo v92, "com.lge.osp.RESET_PASSWORD"

    move-object/from16 v0, v65

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1389
    .local v65, "pwdIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1390
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 1396
    .end local v65    # "pwdIntent":Landroid/content/Intent;
    :goto_1e88
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_OSPPWDINIT Request Result = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 1378
    .end local v66    # "request_number":I
    :cond_1ea7
    add-int/lit8 v29, v29, -0x1

    goto/16 :goto_1e15

    .line 1392
    .restart local v66    # "request_number":I
    :cond_1eab
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 1393
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto :goto_1e88

    .line 1400
    .end local v29    # "i":I
    .end local v30    # "imei":Ljava/lang/String;
    .end local v42    # "mOspPwd":Lcom/lge/android/atservice/OspPwdInitDevice;
    .end local v66    # "request_number":I
    :sswitch_1ebc
    const-string/jumbo v92, "SimPwdInitDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v46

    check-cast v46, Lcom/lge/android/atservice/SimPwdInitDevice;

    .line 1401
    .local v46, "mSimPwd":Lcom/lge/android/atservice/SimPwdInitDevice;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->getImei()Ljava/lang/String;

    move-result-object v30

    .line 1403
    .restart local v30    # "imei":Ljava/lang/String;
    if-nez v30, :cond_1ed2

    .line 1404
    const-string/jumbo v30, ""

    .line 1407
    :cond_1ed2
    const/16 v29, 0x6

    .restart local v29    # "i":I
    :goto_1ed4
    if-ltz v29, :cond_1ee6

    .line 1408
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    aget-byte v92, v92, v29

    const/16 v93, 0xd

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_1f6f

    .line 1413
    :cond_1ee6
    new-instance v92, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v92

    move-object/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v66

    .line 1414
    .restart local v66    # "request_number":I
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_SIMPWDINIT Request Num = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1416
    move-object/from16 v0, v46

    move/from16 v1, v66

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lge/android/atservice/SimPwdInitDevice;->SimPwdInit(ILjava/lang/String;)Z

    move-result v92

    if-eqz v92, :cond_1fa4

    .line 1417
    const-string/jumbo v92, "ro.build.target_operator"

    invoke-static/range {v92 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    const-string/jumbo v93, "SKT"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    if-eqz v92, :cond_1f7a

    .line 1418
    const-string/jumbo v92, "pref.usim_perso_control_key"

    const-string/jumbo v93, "0000"

    invoke-static/range {v92 .. v93}, Lcom/lge/uicc/LGUiccManager;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v92

    if-eqz v92, :cond_1f73

    .line 1419
    const-string/jumbo v92, "USIM_PERSO_CONTROL_KEY Success"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1430
    :cond_1f48
    :goto_1f48
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 1436
    :goto_1f50
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_SIMPWDINIT Request Result = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 1407
    .end local v66    # "request_number":I
    :cond_1f6f
    add-int/lit8 v29, v29, -0x1

    goto/16 :goto_1ed4

    .line 1421
    .restart local v66    # "request_number":I
    :cond_1f73
    const-string/jumbo v92, "USIM_PERSO_CONTROL_KEY Fail"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_1f48

    .line 1423
    :cond_1f7a
    const-string/jumbo v92, "ro.build.target_operator"

    invoke-static/range {v92 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    const-string/jumbo v93, "KT"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    if-eqz v92, :cond_1f48

    .line 1424
    const-string/jumbo v92, "pref.usim_perso_control_key"

    const-string/jumbo v93, "00000000"

    invoke-static/range {v92 .. v93}, Lcom/lge/uicc/LGUiccManager;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v92

    if-eqz v92, :cond_1f9d

    .line 1425
    const-string/jumbo v92, "USIM_PERSO_CONTROL_KEY Success"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_1f48

    .line 1427
    :cond_1f9d
    const-string/jumbo v92, "USIM_PERSO_CONTROL_KEY Fail"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_1f48

    .line 1432
    :cond_1fa4
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 1433
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    goto :goto_1f50

    .line 1440
    .end local v29    # "i":I
    .end local v30    # "imei":Ljava/lang/String;
    .end local v46    # "mSimPwd":Lcom/lge/android/atservice/SimPwdInitDevice;
    .end local v66    # "request_number":I
    :sswitch_1fb5
    const/16 v92, 0x3

    move/from16 v0, v92

    new-array v15, v0, [B

    .local v15, "dial_num":[B
    fill-array-data v15, :array_286e

    .line 1441
    const-string/jumbo v92, "CallDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v36

    check-cast v36, Lcom/lge/android/atservice/CallDevice;

    .line 1442
    .restart local v36    # "mCallDevice":Lcom/lge/android/atservice/CallDevice;
    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Lcom/lge/android/atservice/CallDevice;->sendCall([B)V

    .line 1443
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1447
    .end local v15    # "dial_num":[B
    .end local v36    # "mCallDevice":Lcom/lge/android/atservice/CallDevice;
    :sswitch_1fda
    const-string/jumbo v92, "CallDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v36

    check-cast v36, Lcom/lge/android/atservice/CallDevice;

    .line 1448
    .restart local v36    # "mCallDevice":Lcom/lge/android/atservice/CallDevice;
    invoke-virtual/range {v36 .. v36}, Lcom/lge/android/atservice/CallDevice;->endCall()V

    .line 1449
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1453
    .end local v36    # "mCallDevice":Lcom/lge/android/atservice/CallDevice;
    :sswitch_1ff4
    new-instance v85, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v85

    move-object/from16 v1, v92

    move/from16 v2, v94

    move/from16 v3, v93

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1454
    .local v85, "theme":Ljava/lang/String;
    const-string/jumbo v80, "THEME SET OK"

    .line 1455
    .local v80, "success":Ljava/lang/String;
    const-string/jumbo v22, "THEME SET FAIL"

    .line 1457
    .local v22, "fail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v92

    const-string/jumbo v93, "navigation_bar_theme"

    move-object/from16 v0, v92

    move-object/from16 v1, v93

    move-object/from16 v2, v85

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1458
    invoke-virtual/range {v80 .. v80}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1459
    invoke-virtual/range {v80 .. v80}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1460
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1463
    .end local v22    # "fail":Ljava/lang/String;
    .end local v80    # "success":Ljava/lang/String;
    .end local v85    # "theme":Ljava/lang/String;
    :sswitch_2049
    const-string/jumbo v92, "Entered LGCMD_AUTO_UI_TEST"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->wakeup()V

    .line 1466
    new-instance v64, Landroid/content/Intent;

    const-string/jumbo v92, "com.lge.intent.action.RESET_PATTERN"

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1467
    .restart local v64    # "ptnclrIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1469
    const-string/jumbo v92, "WlanDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v47

    check-cast v47, Lcom/lge/android/atservice/WlanDevice;

    .line 1470
    .restart local v47    # "mWlanDevice":Lcom/lge/android/atservice/WlanDevice;
    invoke-virtual/range {v47 .. v47}, Lcom/lge/android/atservice/WlanDevice;->PowerOn()I

    .line 1471
    const-wide/16 v92, 0x7d0

    invoke-static/range {v92 .. v93}, Landroid/os/SystemClock;->sleep(J)V

    .line 1473
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 1474
    .restart local v33    # "intent":Landroid/content/Intent;
    const-string/jumbo v92, "com.lge.android.atservice"

    const-string/jumbo v93, "com.lge.android.atservice.MIDResView"

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1475
    const/high16 v92, 0x14000000

    move-object/from16 v0, v33

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1476
    const-string/jumbo v92, "Entered MIDResView"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1479
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1480
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1483
    .end local v33    # "intent":Landroid/content/Intent;
    .end local v47    # "mWlanDevice":Lcom/lge/android/atservice/WlanDevice;
    .end local v64    # "ptnclrIntent":Landroid/content/Intent;
    :sswitch_20c2
    sget-object v92, Lcom/lge/android/atservice/LGCmdHandler;->operator_code:Ljava/lang/String;

    const-string/jumbo v93, "SPR"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    if-eqz v92, :cond_2148

    .line 1484
    new-instance v50, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v92

    move/from16 v2, v94

    move/from16 v3, v93

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1485
    .local v50, "msn_serial":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/android/atservice/DeviceManager;->wakeup()V

    .line 1486
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v92, "com.lge.intent.action.RESET_PATTERN"

    move-object/from16 v0, v92

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v12, "clrIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1489
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 1490
    .restart local v33    # "intent":Landroid/content/Intent;
    const-string/jumbo v92, "com.lge.android.atservice"

    const-string/jumbo v93, "com.lge.android.atservice.HwControlMode"

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    const/high16 v92, 0x14000000

    move-object/from16 v0, v33

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1492
    const-string/jumbo v92, "msn_value"

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1495
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1496
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1498
    .end local v12    # "clrIntent":Landroid/content/Intent;
    .end local v33    # "intent":Landroid/content/Intent;
    .end local v50    # "msn_serial":Ljava/lang/String;
    :cond_2148
    const-string/jumbo v92, "NOT SUPPORTED CMD"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1499
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1503
    :sswitch_2158
    const-string/jumbo v92, "Entered VZWHiddenmenu"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1504
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 1505
    .restart local v33    # "intent":Landroid/content/Intent;
    const-string/jumbo v92, "com.lge.hiddenmenu"

    const-string/jumbo v93, "com.lge.hiddenmenu.HiddenMenu"

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    const/high16 v92, 0x14000000

    move-object/from16 v0, v33

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1507
    const-string/jumbo v92, "HiddenMenu"

    const-string/jumbo v93, "Entered VZWHiddenMenu"

    invoke-static/range {v92 .. v93}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1509
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1513
    .end local v33    # "intent":Landroid/content/Intent;
    :sswitch_219b
    const-string/jumbo v92, "Entered VZWHiddenIOTmenu"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1514
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 1515
    .restart local v33    # "intent":Landroid/content/Intent;
    const-string/jumbo v92, "com.lge.iot_hidden_menu"

    const-string/jumbo v93, "com.lge.iot_hidden_menu.IotHiddenMenuMain"

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    const/high16 v92, 0x14000000

    move-object/from16 v0, v33

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1517
    const-string/jumbo v92, "HiddenMenu"

    const-string/jumbo v93, "Entered VZWHiddenIOTmenu"

    invoke-static/range {v92 .. v93}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1519
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1523
    .end local v33    # "intent":Landroid/content/Intent;
    :sswitch_21de
    const-string/jumbo v92, "Entered SPRINT OMADM Run!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1524
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v92, "android.intent.action.OMADM_AT_COMMAND_INITIATED"

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1525
    .restart local v33    # "intent":Landroid/content/Intent;
    const-string/jumbo v92, "OMADM"

    const-string/jumbo v93, "Entered SPRINT OMADM Run!"

    invoke-static/range {v92 .. v93}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1527
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1531
    .end local v33    # "intent":Landroid/content/Intent;
    :sswitch_2210
    const-string/jumbo v92, "Entered SPRINT PRL Run!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1532
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v92, "android.intent.action.PRL_AT_COMMAND_INITIATED"

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1533
    .restart local v33    # "intent":Landroid/content/Intent;
    const-string/jumbo v92, "OMADM"

    const-string/jumbo v93, "Entered SPRINT PRL Run!"

    invoke-static/range {v92 .. v93}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1535
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1539
    .end local v33    # "intent":Landroid/content/Intent;
    :sswitch_2242
    const-string/jumbo v92, "Entered SPRINT FUMO Run!"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1540
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v92, "android.intent.action.FUMO_AT_COMMAND_INITIATED"

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1541
    .restart local v33    # "intent":Landroid/content/Intent;
    const-string/jumbo v92, "OMADM"

    const-string/jumbo v93, "Entered SPRINT FUMO Run!"

    invoke-static/range {v92 .. v93}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1543
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1547
    .end local v33    # "intent":Landroid/content/Intent;
    :sswitch_2274
    const-string/jumbo v92, "gnss.chip.vendor"

    invoke-static/range {v92 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    const-string/jumbo v93, "brcm"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    if-eqz v92, :cond_2302

    .line 1548
    const-string/jumbo v92, "-----------LGCMD_GNSS_TEST_CNO_START-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1549
    const-string/jumbo v92, "GnssDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v38

    check-cast v38, Lcom/lge/android/atservice/GnssDevice;

    .line 1550
    .local v38, "mGnssDevice":Lcom/lge/android/atservice/GnssDevice;
    if-nez v38, :cond_22a3

    .line 1551
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1553
    :cond_22a3
    invoke-virtual/range {v38 .. v38}, Lcom/lge/android/atservice/GnssDevice;->PowerOn()I

    .line 1557
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_22a8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v92, v0

    move/from16 v0, v29

    move/from16 v1, v92

    if-ge v0, v1, :cond_22c4

    .line 1558
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    aget-byte v92, v92, v29

    const/16 v93, 0xd

    move/from16 v0, v92

    move/from16 v1, v93

    if-ne v0, v1, :cond_22ff

    .line 1563
    :cond_22c4
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1564
    .local v24, "gnssRequest":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/GnssDevice;->start(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1565
    .local v27, "gnss_start":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1566
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1567
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1557
    .end local v24    # "gnssRequest":Ljava/lang/String;
    .end local v27    # "gnss_start":Ljava/lang/String;
    :cond_22ff
    add-int/lit8 v29, v29, 0x1

    goto :goto_22a8

    .line 1573
    .end local v29    # "i":I
    .end local v38    # "mGnssDevice":Lcom/lge/android/atservice/GnssDevice;
    :cond_2302
    :sswitch_2302
    const-string/jumbo v92, "gnss.chip.vendor"

    invoke-static/range {v92 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    const-string/jumbo v93, "brcm"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    if-eqz v92, :cond_2397

    .line 1574
    const-string/jumbo v92, "-----------LGCMD_GNSS_TEST_RESULT-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1575
    const-string/jumbo v92, "GnssDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v38

    check-cast v38, Lcom/lge/android/atservice/GnssDevice;

    .line 1577
    .restart local v38    # "mGnssDevice":Lcom/lge/android/atservice/GnssDevice;
    if-nez v38, :cond_2331

    .line 1578
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1580
    :cond_2331
    invoke-virtual/range {v38 .. v38}, Lcom/lge/android/atservice/GnssDevice;->getResult()Ljava/lang/String;

    move-result-object v26

    .line 1581
    .local v26, "gnss_result":Ljava/lang/String;
    if-eqz v26, :cond_238d

    .line 1582
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "gnss_result"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1583
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1584
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1585
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    move/from16 v92, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v93, v0

    const/16 v94, 0x0

    const/16 v95, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v94

    move/from16 v2, v92

    move-object/from16 v3, v93

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 1586
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1588
    :cond_238d
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1594
    .end local v26    # "gnss_result":Ljava/lang/String;
    .end local v38    # "mGnssDevice":Lcom/lge/android/atservice/GnssDevice;
    :cond_2397
    :sswitch_2397
    const-string/jumbo v92, "gnss.chip.vendor"

    invoke-static/range {v92 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    const-string/jumbo v93, "brcm"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    if-eqz v92, :cond_23e8

    .line 1595
    const-string/jumbo v92, "-----------LGCMD_GNSS_TEST_RESULT_ALL-----------"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1596
    const-string/jumbo v92, "GnssDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v38

    check-cast v38, Lcom/lge/android/atservice/GnssDevice;

    .line 1598
    .restart local v38    # "mGnssDevice":Lcom/lge/android/atservice/GnssDevice;
    if-nez v38, :cond_23c6

    .line 1599
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1601
    :cond_23c6
    invoke-virtual/range {v38 .. v38}, Lcom/lge/android/atservice/GnssDevice;->getResultAll()Ljava/lang/String;

    move-result-object v25

    .line 1602
    .local v25, "gnss_resall":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1603
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1604
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1607
    .end local v25    # "gnss_resall":Ljava/lang/String;
    .end local v38    # "mGnssDevice":Lcom/lge/android/atservice/GnssDevice;
    :cond_23e8
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "Entered LGCMD_GNSS_TEST_CN0 : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1608
    const-string/jumbo v92, "GnssDevice"

    move-object/from16 v0, v16

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;

    move-result-object v38

    check-cast v38, Lcom/lge/android/atservice/GnssDevice;

    .line 1609
    .restart local v38    # "mGnssDevice":Lcom/lge/android/atservice/GnssDevice;
    if-nez v38, :cond_241e

    .line 1610
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1614
    :cond_241e
    invoke-virtual/range {v38 .. v38}, Lcom/lge/android/atservice/GnssDevice;->PowerOn()I

    .line 1616
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    move/from16 v93, v0

    const/16 v94, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v92

    move/from16 v2, v94

    move/from16 v3, v93

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1618
    .restart local v24    # "gnssRequest":Ljava/lang/String;
    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v93, "LGCMD_GNSS_TEST_CNO bodystr : "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string/jumbo v93, ", "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1620
    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/GnssDevice;->throughJNI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 1621
    .local v67, "resultstr":Ljava/lang/String;
    if-eqz v67, :cond_248e

    .line 1622
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1623
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v92

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1624
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1627
    :cond_248e
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1639
    .end local v24    # "gnssRequest":Ljava/lang/String;
    .end local v38    # "mGnssDevice":Lcom/lge/android/atservice/GnssDevice;
    .end local v67    # "resultstr":Ljava/lang/String;
    :sswitch_2498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->WiFiOn()Z

    move-result v92

    if-eqz v92, :cond_24c3

    .line 1640
    const-string/jumbo v92, "0"

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1641
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1642
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1644
    :cond_24c3
    const-string/jumbo v92, "1"

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1645
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1646
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1651
    :sswitch_24e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->WiFiOff()Z

    move-result v92

    if-eqz v92, :cond_250d

    .line 1652
    const-string/jumbo v92, "0"

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1653
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1654
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1656
    :cond_250d
    const-string/jumbo v92, "1"

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1657
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1658
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1663
    :sswitch_252c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->isWiFiOn()Z

    move-result v92

    if-eqz v92, :cond_2594

    .line 1664
    const-string/jumbo v92, "Wi-Fi is enabled"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->WiFiScan()Z

    move-result v92

    if-eqz v92, :cond_256f

    .line 1666
    const-string/jumbo v92, "Wi-Fi Scan - success"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1667
    const-string/jumbo v92, "0"

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1668
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1669
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1671
    :cond_256f
    const-string/jumbo v92, "Wi-Fi Scan - fail"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1672
    const-string/jumbo v92, "1"

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1673
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1674
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1677
    :cond_2594
    const-string/jumbo v92, "1"

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1678
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1679
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1684
    :sswitch_25b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->isWiFiOn()Z

    move-result v92

    if-eqz v92, :cond_25ee

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->WiFiScanResults()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1686
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    array-length v0, v0

    move/from16 v92, v0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1687
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1689
    :cond_25ee
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1690
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1695
    :sswitch_2600
    const-string/jumbo v92, "Connect to Wi-Fi"

    invoke-static/range {v92 .. v92}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->isWiFiOn()Z

    move-result v92

    if-eqz v92, :cond_265c

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->WiFiConnect()Z

    move-result v92

    if-eqz v92, :cond_263d

    .line 1698
    const-string/jumbo v92, "0"

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1699
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1700
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1702
    :cond_263d
    const-string/jumbo v92, "1"

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1703
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1704
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1707
    :cond_265c
    const-string/jumbo v92, "1"

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1708
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1709
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1714
    :sswitch_267b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->isWiFiOn()Z

    move-result v92

    if-eqz v92, :cond_26d4

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->isWifiConnected()Z

    move-result v92

    if-eqz v92, :cond_26c2

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdHandler;->mPreWifiTest:Lcom/lge/android/atservice/PreWifiTest;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Lcom/lge/android/atservice/PreWifiTest;->WiFiConnectionInfo()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->getBytes()[B

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 1717
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    array-length v0, v0

    move/from16 v92, v0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1718
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1720
    :cond_26c2
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1721
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    goto/16 :goto_8d

    .line 1724
    :cond_26d4
    const/16 v92, 0x0

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 1725
    const/16 v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/android/atservice/LGCmdResponse;->result:I
    :try_end_26e4
    .catch Ljava/lang/NullPointerException; {:try_start_b5d .. :try_end_26e4} :catch_122

    goto/16 :goto_8d

    .line 302
    :sswitch_data_26e6
    .sparse-switch
        0x3e8 -> :sswitch_f1b
        0x3e9 -> :sswitch_f5b
        0x3eb -> :sswitch_f9d
        0x3f3 -> :sswitch_ab
        0x3f4 -> :sswitch_13e
        0x3f5 -> :sswitch_176
        0x4b2 -> :sswitch_231
        0x4b3 -> :sswitch_24c
        0x4b4 -> :sswitch_267
        0x4b5 -> :sswitch_1a2
        0x4b6 -> :sswitch_1cd
        0x4b7 -> :sswitch_1f8
        0x546 -> :sswitch_44e
        0x547 -> :sswitch_497
        0x54b -> :sswitch_3a8
        0x640 -> :sswitch_524
        0x672 -> :sswitch_d44
        0x673 -> :sswitch_d58
        0x674 -> :sswitch_de9
        0x675 -> :sswitch_e21
        0x676 -> :sswitch_e45
        0x6a4 -> :sswitch_1ba1
        0x6a5 -> :sswitch_1bdd
        0x6a6 -> :sswitch_1d39
        0x6a7 -> :sswitch_1dfd
        0x6a8 -> :sswitch_1ebc
        0x73c -> :sswitch_b6d
        0x73d -> :sswitch_bbb
        0x73e -> :sswitch_c41
        0x73f -> :sswitch_cec
        0x740 -> :sswitch_d10
        0x741 -> :sswitch_d2a
        0x76c -> :sswitch_21de
        0x76d -> :sswitch_2210
        0x76e -> :sswitch_2242
        0x76f -> :sswitch_8d
        0x834 -> :sswitch_10b3
        0x836 -> :sswitch_1102
        0x837 -> :sswitch_1164
        0x838 -> :sswitch_11c8
        0x839 -> :sswitch_1211
        0x83d -> :sswitch_12c5
        0x83e -> :sswitch_1325
        0x83f -> :sswitch_13d3
        0x840 -> :sswitch_144a
        0x841 -> :sswitch_14e2
        0x842 -> :sswitch_153e
        0x843 -> :sswitch_15bd
        0x844 -> :sswitch_1617
        0x845 -> :sswitch_1662
        0x846 -> :sswitch_16d2
        0x847 -> :sswitch_1771
        0x848 -> :sswitch_17dd
        0x849 -> :sswitch_18a5
        0x84a -> :sswitch_1905
        0x84b -> :sswitch_19b8
        0x84c -> :sswitch_1a28
        0x84d -> :sswitch_1a54
        0x84e -> :sswitch_1a9d
        0x84f -> :sswitch_1ae6
        0x898 -> :sswitch_2274
        0x899 -> :sswitch_2302
        0x89a -> :sswitch_2397
        0x8ca -> :sswitch_2498
        0x8cb -> :sswitch_24e2
        0x8cc -> :sswitch_252c
        0x8cd -> :sswitch_25b3
        0x8ce -> :sswitch_2600
        0x8cf -> :sswitch_267b
        0xbb8 -> :sswitch_282
        0xbb9 -> :sswitch_2e8
        0xbc2 -> :sswitch_fcb
        0xbc3 -> :sswitch_1049
        0xbcc -> :sswitch_eee
        0xbd6 -> :sswitch_348
        0xbea -> :sswitch_a1d
        0xbeb -> :sswitch_a71
        0xbec -> :sswitch_ac5
        0xbed -> :sswitch_b19
        0xbfe -> :sswitch_2158
        0xbff -> :sswitch_219b
        0xc12 -> :sswitch_1fb5
        0xc13 -> :sswitch_1fda
        0xc1c -> :sswitch_1ff4
        0xc26 -> :sswitch_2049
        0xc27 -> :sswitch_20c2
        0xc3a -> :sswitch_e52
        0xc3b -> :sswitch_e7b
        0xc3c -> :sswitch_ea4
        0xc44 -> :sswitch_eae
    .end sparse-switch

    .line 432
    :pswitch_data_2850
    .packed-switch 0x0
        :pswitch_456
        :pswitch_488
        :pswitch_485
        :pswitch_48b
    .end packed-switch

    .line 461
    :sswitch_data_285c
    .sparse-switch
        0x0 -> :sswitch_4bd
        0x5a -> :sswitch_512
        0xb4 -> :sswitch_515
        0x10e -> :sswitch_518
    .end sparse-switch

    .line 1440
    :array_286e
    .array-data 1
        0x31t
        0x31t
        0x32t
    .end array-data
.end method
