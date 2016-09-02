.class public Lcom/lge/android/atservice/Database;
.super Lcom/lge/android/atservice/Device;
.source "Database.java"


# static fields
.field public static final CMD_DUMP_DATABASE:Ljava/lang/String; = "dumpDatabase"

.field public static final CMD_GET_DATABASE_CRC:Ljava/lang/String; = "getDatabaseCrc"

.field public static final CMD_GET_FPRI_CRC:Ljava/lang/String; = "getFpriCrc"

.field public static final CMD_RET_ERROR:Ljava/lang/String; = "error"

.field public static final CMD_RET_OK:Ljava/lang/String; = "ok"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DATABASE_CRC"

.field private static sProductName:Ljava/lang/String;

.field private static sTemp:Ljava/lang/String;


# instance fields
.field private final mCallLogProjection:[Ljava/lang/String;

.field private final mCallLogSortOrder:Ljava/lang/String;

.field private final mContactsProjection:[Ljava/lang/String;

.field private final mContactsSelection:Ljava/lang/String;

.field private final mContactsSortOrder:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mEULA_URI:Landroid/net/Uri;

.field private final mEulaProjection:[Ljava/lang/String;

.field private final mEulaSortOrder:Ljava/lang/String;

.field private final mHOME_URI:Landroid/net/Uri;

.field private final mHomeProjection:[Ljava/lang/String;

.field private final mHomeSortOrder:Ljava/lang/String;

.field private mIntStoragePath:Ljava/lang/String;

.field private final mMediaProjection:[Ljava/lang/String;

.field private final mMediaSelection:Ljava/lang/String;

.field private final mMediaSortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/android/atservice/Database;->sTemp:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/Database;->sProductName:Ljava/lang/String;

    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 260
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 261
    const-string/jumbo v1, "value"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 259
    sput-object v0, Lcom/lge/android/atservice/Database;->PROJECTION:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Lcom/lge/android/atservice/Device;-><init>()V

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mIntStoragePath:Ljava/lang/String;

    .line 73
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_size"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "_data"

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mMediaSortOrder:Ljava/lang/String;

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "has_phone_number"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mContactsProjection:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mContactsSelection:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mContactsSortOrder:Ljava/lang/String;

    .line 83
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    const-string/jumbo v1, "duration"

    aput-object v1, v0, v6

    const-string/jumbo v1, "type"

    aput-object v1, v0, v7

    const-string/jumbo v1, "new"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "numbertype"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "numberlabel"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mCallLogProjection:[Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "_id"

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mCallLogSortOrder:Ljava/lang/String;

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string/jumbo v1, "intent"

    aput-object v1, v0, v4

    const-string/jumbo v1, "screen"

    aput-object v1, v0, v5

    const-string/jumbo v1, "cellX"

    aput-object v1, v0, v6

    const-string/jumbo v1, "cellY"

    aput-object v1, v0, v7

    const-string/jumbo v1, "spanX"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "spanY"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "itemType"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mHomeProjection:[Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "title"

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mHomeSortOrder:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "content://com.lge.launcher2.settings/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mHOME_URI:Landroid/net/Uri;

    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "package_name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "agreement"

    aput-object v1, v0, v5

    const-string/jumbo v1, "provider_version"

    aput-object v1, v0, v6

    const-string/jumbo v1, "sim_info"

    aput-object v1, v0, v7

    const-string/jumbo v1, "agree_by"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mEulaProjection:[Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "id"

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mEulaSortOrder:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, "content://com.lge.eula.contentprovider/agreement"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/Database;->mEULA_URI:Landroid/net/Uri;

    .line 52
    iput-object p1, p0, Lcom/lge/android/atservice/Database;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 28
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dump"    # Z
    .param p3, "isMedia"    # Z
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .param p8, "arg"    # Ljava/lang/Object;

    .prologue
    .line 100
    const-string/jumbo v2, "DATABASE_CRC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkMediaDatabase: dump["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], arg["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v11, 0x0

    .line 103
    .local v11, "cursor":Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 104
    .local v18, "writer":Ljava/io/PrintWriter;
    const/4 v9, 0x0

    .line 107
    .local v9, "crc":Ljava/util/zip/CRC32;
    if-eqz p2, :cond_68

    move-object/from16 v0, p8

    instance-of v2, v0, Ljava/io/PrintWriter;

    if-eqz v2, :cond_68

    move-object/from16 v18, p8

    .line 108
    check-cast v18, Ljava/io/PrintWriter;

    .line 117
    .end local v9    # "crc":Ljava/util/zip/CRC32;
    .end local v18    # "writer":Ljava/io/PrintWriter;
    :goto_40
    :try_start_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/android/atservice/Database;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 118
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_82

    .line 119
    const-string/jumbo v2, "DATABASE_CRC"

    const-string/jumbo v3, "checkMediaDatabase: cursor fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_61} :catch_15e
    .catchall {:try_start_40 .. :try_end_61} :catchall_1a9

    .line 120
    const/4 v2, 0x0

    .line 196
    if-eqz v11, :cond_67

    .line 198
    :try_start_64
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_80

    .line 120
    :cond_67
    :goto_67
    return v2

    .line 109
    .restart local v9    # "crc":Ljava/util/zip/CRC32;
    .local v11, "cursor":Landroid/database/Cursor;
    .restart local v18    # "writer":Ljava/io/PrintWriter;
    :cond_68
    if-nez p2, :cond_75

    move-object/from16 v0, p8

    instance-of v2, v0, Ljava/util/zip/CRC32;

    if-eqz v2, :cond_75

    move-object/from16 v9, p8

    .line 110
    check-cast v9, Ljava/util/zip/CRC32;

    .local v9, "crc":Ljava/util/zip/CRC32;
    goto :goto_40

    .line 112
    .local v9, "crc":Ljava/util/zip/CRC32;
    :cond_75
    const-string/jumbo v2, "DATABASE_CRC"

    const-string/jumbo v3, "checkMediaDatabase: fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x0

    return v2

    .line 199
    .end local v9    # "crc":Ljava/util/zip/CRC32;
    .end local v18    # "writer":Ljava/io/PrintWriter;
    .local v11, "cursor":Landroid/database/Cursor;
    :catch_80
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    goto :goto_67

    .line 122
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_82
    :try_start_82
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 123
    .local v8, "columnCnt":I
    const/16 v16, 0x0

    .line 126
    .local v16, "sb":Ljava/lang/StringBuilder;
    if-eqz v18, :cond_d7

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v16, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_b4
    if-ge v14, v8, :cond_cc

    .line 132
    if-eqz v14, :cond_c0

    .line 133
    const-string/jumbo v2, ", "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_c0
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v14, v14, 0x1

    goto :goto_b4

    .line 138
    :cond_cc
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const/16 v16, 0x0

    .line 143
    .end local v14    # "i":I
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_d7
    :goto_d7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 144
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 146
    .local v15, "path":Ljava/lang/String;
    if-eqz p3, :cond_f0

    .line 147
    if-eqz v15, :cond_f0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/android/atservice/Database;->mIntStoragePath:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 152
    :cond_f0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 153
    .local v13, "hangouts":Ljava/lang/Boolean;
    if-eqz v15, :cond_102

    .line 154
    const-string/jumbo v2, "/storage/emulated/0/Ringtones/hangouts"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 158
    :cond_102
    if-eqz v18, :cond_109

    .line 159
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    :cond_109
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_10a
    if-ge v14, v8, :cond_1b0

    .line 163
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 166
    .local v17, "value":Ljava/lang/String;
    if-eqz v9, :cond_199

    .line 167
    if-eqz v17, :cond_120

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_120

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_156

    .line 170
    :cond_120
    :goto_120
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, "crcHex":Ljava/lang/String;
    const-string/jumbo v2, "DATABASE_CRC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkMediaDatabase: uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , crc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v10    # "crcHex":Ljava/lang/String;
    :cond_153
    :goto_153
    add-int/lit8 v14, v14, 0x1

    goto :goto_10a

    .line 168
    :cond_156
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_15d} :catch_15e
    .catchall {:try_start_82 .. :try_end_15d} :catchall_1a9

    goto :goto_120

    .line 192
    .end local v8    # "columnCnt":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "hangouts":Ljava/lang/Boolean;
    .end local v14    # "i":I
    .end local v15    # "path":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :catch_15e
    move-exception v12

    .line 193
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_15f
    const-string/jumbo v2, "DATABASE_CRC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDatabaseCrc(): exception["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], stack_top["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catchall {:try_start_15f .. :try_end_192} :catchall_1a9

    .line 194
    const/4 v2, 0x0

    .line 196
    if-eqz v11, :cond_198

    .line 198
    :try_start_195
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_198} :catch_1cd

    .line 194
    :cond_198
    :goto_198
    return v2

    .line 172
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v8    # "columnCnt":I
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "hangouts":Ljava/lang/Boolean;
    .restart local v14    # "i":I
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_199
    if-eqz v18, :cond_153

    .line 173
    if-eqz v14, :cond_1a5

    .line 174
    :try_start_19d
    const-string/jumbo v2, ", "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_1a5
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a8} :catch_15e
    .catchall {:try_start_19d .. :try_end_1a8} :catchall_1a9

    goto :goto_153

    .line 195
    .end local v8    # "columnCnt":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "hangouts":Ljava/lang/Boolean;
    .end local v14    # "i":I
    .end local v15    # "path":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :catchall_1a9
    move-exception v2

    .line 196
    if-eqz v11, :cond_1af

    .line 198
    :try_start_1ac
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1af} :catch_1cf

    .line 195
    :cond_1af
    :goto_1af
    throw v2

    .line 182
    .restart local v8    # "columnCnt":I
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "hangouts":Ljava/lang/Boolean;
    .restart local v14    # "i":I
    .restart local v15    # "path":Ljava/lang/String;
    :cond_1b0
    if-eqz v18, :cond_d7

    .line 183
    :try_start_1b2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    const/16 v16, 0x0

    .local v16, "sb":Ljava/lang/StringBuilder;
    goto/16 :goto_d7

    .line 189
    .end local v13    # "hangouts":Ljava/lang/Boolean;
    .end local v14    # "i":I
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_1bf
    if-eqz v18, :cond_1c4

    .line 190
    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintWriter;->println()V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1c4} :catch_15e
    .catchall {:try_start_1b2 .. :try_end_1c4} :catchall_1a9

    .line 196
    :cond_1c4
    if-eqz v11, :cond_1c9

    .line 198
    :try_start_1c6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1c9} :catch_1cb

    .line 205
    :cond_1c9
    :goto_1c9
    const/4 v2, 0x1

    return v2

    .line 199
    :catch_1cb
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    goto :goto_1c9

    .end local v8    # "columnCnt":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catch_1cd
    move-exception v12

    goto :goto_198

    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1cf
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    goto :goto_1af
.end method

.method private dumpDatabase()Ljava/lang/String;
    .registers 15

    .prologue
    .line 566
    const/4 v13, 0x0

    .line 567
    .local v13, "writer":Ljava/io/PrintWriter;
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 572
    .local v9, "crc":Ljava/util/zip/CRC32;
    :try_start_6
    new-instance v11, Ljava/io/File;

    const-string/jumbo v0, "/data/dbdump/DB_CRC/db_crc.txt"

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v11, "file":Ljava/io/File;
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_cf
    .catchall {:try_start_6 .. :try_end_13} :catchall_fd

    .line 576
    .local v8, "writer":Ljava/io/PrintWriter;
    :try_start_13
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .end local v13    # "writer":Ljava/io/PrintWriter;
    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v12

    .line 577
    .local v12, "flag":Z
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 578
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 579
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 580
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 581
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 584
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mContactsProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mContactsSelection:Ljava/lang/String;

    iget-object v7, p0, Lcom/lge/android/atservice/Database;->mContactsSortOrder:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 585
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mCallLogProjection:[Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 586
    iget-object v1, p0, Lcom/lge/android/atservice/Database;->mHOME_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mHomeProjection:[Ljava/lang/String;

    const-string/jumbo v7, "title"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 587
    iget-object v1, p0, Lcom/lge/android/atservice/Database;->mEULA_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mEulaProjection:[Ljava/lang/String;

    const-string/jumbo v7, "id"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_c0} :catch_18b
    .catchall {:try_start_13 .. :try_end_c0} :catchall_188

    move-result v0

    and-int/2addr v12, v0

    .line 592
    if-eqz v8, :cond_c7

    .line 594
    :try_start_c4
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_cd

    .line 601
    :cond_c7
    :goto_c7
    if-nez v12, :cond_107

    .line 602
    const-string/jumbo v0, "error"

    return-object v0

    .line 595
    :catch_cd
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    goto :goto_c7

    .line 588
    .end local v8    # "writer":Ljava/io/PrintWriter;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "flag":Z
    .restart local v13    # "writer":Ljava/io/PrintWriter;
    :catch_cf
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v8, v13

    .line 589
    .end local v13    # "writer":Ljava/io/PrintWriter;
    .restart local v8    # "writer":Ljava/io/PrintWriter;
    :goto_d1
    :try_start_d1
    const-string/jumbo v0, "DATABASE_CRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpDatabase: db crc exception["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string/jumbo v0, "error"
    :try_end_f5
    .catchall {:try_start_d1 .. :try_end_f5} :catchall_188

    .line 592
    if-eqz v8, :cond_fa

    .line 594
    :try_start_f7
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_fb

    .line 590
    :cond_fa
    :goto_fa
    return-object v0

    .line 595
    :catch_fb
    move-exception v10

    goto :goto_fa

    .line 591
    .end local v8    # "writer":Ljava/io/PrintWriter;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v13    # "writer":Ljava/io/PrintWriter;
    :catchall_fd
    move-exception v0

    move-object v8, v13

    .line 592
    .end local v13    # "writer":Ljava/io/PrintWriter;
    .restart local v8    # "writer":Ljava/io/PrintWriter;
    :goto_ff
    if-eqz v8, :cond_104

    .line 594
    :try_start_101
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_104} :catch_105

    .line 591
    :cond_104
    :goto_104
    throw v0

    .line 595
    :catch_105
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    goto :goto_104

    .line 607
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "flag":Z
    :cond_107
    :try_start_107
    new-instance v11, Ljava/io/File;

    .end local v11    # "file":Ljava/io/File;
    const-string/jumbo v0, "/data/dbdump/FPRI_CRC/fpri_crc.txt"

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .restart local v11    # "file":Ljava/io/File;
    new-instance v13, Ljava/io/PrintWriter;

    invoke-direct {v13, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_114} :catch_148
    .catchall {:try_start_107 .. :try_end_114} :catchall_175

    .line 610
    .end local v8    # "writer":Ljava/io/PrintWriter;
    .local v13, "writer":Ljava/io/PrintWriter;
    :try_start_114
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v13}, Lcom/lge/android/atservice/Database;->updateCrcBySettings(Landroid/net/Uri;ZLjava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 611
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v13}, Lcom/lge/android/atservice/Database;->updateCrcBySettings(Landroid/net/Uri;ZLjava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 612
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v13}, Lcom/lge/android/atservice/Database;->updateCrcBySettings(Landroid/net/Uri;ZLjava/lang/Object;)Z

    move-result v0

    and-int/2addr v12, v0

    .line 613
    const/4 v0, 0x1

    invoke-direct {p0, v0, v13}, Lcom/lge/android/atservice/Database;->updateCrcByQuickSettings(ZLjava/lang/Object;)Z
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_130} :catch_185
    .catchall {:try_start_114 .. :try_end_130} :catchall_182

    move-result v0

    and-int/2addr v12, v0

    .line 618
    if-eqz v13, :cond_137

    .line 620
    :try_start_134
    invoke-virtual {v13}, Ljava/io/PrintWriter;->close()V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_137} :catch_146

    .line 627
    :cond_137
    :goto_137
    if-nez v12, :cond_17e

    .line 628
    const-string/jumbo v0, "DATABASE_CRC"

    const-string/jumbo v1, "dumpDatabase: fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string/jumbo v0, "error"

    return-object v0

    .line 621
    :catch_146
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    goto :goto_137

    .line 614
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "writer":Ljava/io/PrintWriter;
    .restart local v8    # "writer":Ljava/io/PrintWriter;
    :catch_148
    move-exception v10

    .line 615
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_149
    :try_start_149
    const-string/jumbo v0, "DATABASE_CRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpDatabase : fpri crc exception["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string/jumbo v0, "error"
    :try_end_16d
    .catchall {:try_start_149 .. :try_end_16d} :catchall_175

    .line 618
    if-eqz v8, :cond_172

    .line 620
    :try_start_16f
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_172} :catch_173

    .line 616
    :cond_172
    :goto_172
    return-object v0

    .line 621
    :catch_173
    move-exception v10

    goto :goto_172

    .line 617
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_175
    move-exception v0

    .line 618
    :goto_176
    if-eqz v8, :cond_17b

    .line 620
    :try_start_178
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_17b} :catch_17c

    .line 617
    :cond_17b
    :goto_17b
    throw v0

    .line 621
    :catch_17c
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    goto :goto_17b

    .line 632
    .end local v8    # "writer":Ljava/io/PrintWriter;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v13    # "writer":Ljava/io/PrintWriter;
    :cond_17e
    const-string/jumbo v0, "ok"

    return-object v0

    .line 617
    :catchall_182
    move-exception v0

    move-object v8, v13

    .end local v13    # "writer":Ljava/io/PrintWriter;
    .restart local v8    # "writer":Ljava/io/PrintWriter;
    goto :goto_176

    .line 614
    .end local v8    # "writer":Ljava/io/PrintWriter;
    .restart local v13    # "writer":Ljava/io/PrintWriter;
    :catch_185
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v8, v13

    .end local v13    # "writer":Ljava/io/PrintWriter;
    .restart local v8    # "writer":Ljava/io/PrintWriter;
    goto :goto_149

    .line 591
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "flag":Z
    :catchall_188
    move-exception v0

    goto/16 :goto_ff

    .line 588
    .restart local v11    # "file":Ljava/io/File;
    :catch_18b
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    goto/16 :goto_d1
.end method

.method private getDatabaseCrc()Ljava/lang/String;
    .registers 16

    .prologue
    .line 209
    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 213
    .local v8, "crc":Ljava/util/zip/CRC32;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v10

    .line 214
    .local v10, "flag":Z
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v10, v0

    .line 215
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v10, v0

    .line 216
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v10, v0

    .line 217
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v10, v0

    .line 218
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mMediaProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mMediaSelection:Ljava/lang/String;

    const-string/jumbo v7, "_data"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v10, v0

    .line 221
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mContactsProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/android/atservice/Database;->mContactsSelection:Ljava/lang/String;

    iget-object v7, p0, Lcom/lge/android/atservice/Database;->mContactsSortOrder:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v10, v0

    .line 222
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mCallLogProjection:[Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v10, v0

    .line 223
    iget-object v1, p0, Lcom/lge/android/atservice/Database;->mHOME_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mHomeProjection:[Ljava/lang/String;

    const-string/jumbo v7, "title"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v10, v0

    .line 224
    iget-object v1, p0, Lcom/lge/android/atservice/Database;->mEULA_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/android/atservice/Database;->mEulaProjection:[Ljava/lang/String;

    const-string/jumbo v7, "id"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/android/atservice/Database;->checkMediaDatabase(Landroid/net/Uri;ZZ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v10, v0

    .line 226
    if-nez v10, :cond_c1

    .line 227
    const-string/jumbo v0, "DATABASE_CRC"

    const-string/jumbo v1, "getDatabaseCrc: fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_c1
    new-instance v12, Ljava/io/File;

    const-string/jumbo v0, "/sdcard/Android/data/com.lge.qmemoplus/files"

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v12, "fp":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_146

    .line 234
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 235
    .local v11, "folder":[Ljava/io/File;
    if-eqz v11, :cond_10d

    .line 236
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_d6
    array-length v0, v11

    if-ge v13, v0, :cond_116

    .line 237
    aget-object v0, v11, v13

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 238
    .local v14, "sub_folder":[Ljava/io/File;
    if-eqz v14, :cond_103

    .line 239
    const-string/jumbo v0, "DATABASE_CRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDatabaseCrc() : qmemoplus file count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    array-length v0, v14

    invoke-virtual {v8, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 236
    :goto_100
    add-int/lit8 v13, v13, 0x1

    goto :goto_d6

    .line 242
    :cond_103
    const-string/jumbo v0, "DATABASE_CRC"

    const-string/jumbo v1, "getDatabaseCrc() : qmemoplus file is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    .line 246
    .end local v13    # "i":I
    .end local v14    # "sub_folder":[Ljava/io/File;
    :cond_10d
    const-string/jumbo v0, "DATABASE_CRC"

    const-string/jumbo v1, "getDatabaseCrc() : folder(fp.listFiles) is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v11    # "folder":[Ljava/io/File;
    :cond_116
    :goto_116
    const-string/jumbo v0, "%08X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, "crcHex":Ljava/lang/String;
    const-string/jumbo v0, "DATABASE_CRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDatabaseCrc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v9

    .line 249
    .end local v9    # "crcHex":Ljava/lang/String;
    :cond_146
    const-string/jumbo v0, "DATABASE_CRC"

    const-string/jumbo v1, "getDatabaseCrc() : qmemoplus dir is not exist()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_116
.end method

.method private getFpriCrc()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, "crcHex":Ljava/lang/String;
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 543
    .local v0, "crc":Ljava/util/zip/CRC32;
    if-nez v0, :cond_e

    .line 544
    const-string/jumbo v3, "error"

    return-object v3

    .line 547
    :cond_e
    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v8, v0}, Lcom/lge/android/atservice/Database;->updateCrcBySettings(Landroid/net/Uri;ZLjava/lang/Object;)Z

    move-result v2

    .line 548
    .local v2, "flag":Z
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v8, v0}, Lcom/lge/android/atservice/Database;->updateCrcBySettings(Landroid/net/Uri;ZLjava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 549
    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v8, v0}, Lcom/lge/android/atservice/Database;->updateCrcBySettings(Landroid/net/Uri;ZLjava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 550
    invoke-direct {p0, v8, v0}, Lcom/lge/android/atservice/Database;->updateCrcByQuickSettings(ZLjava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 552
    if-nez v2, :cond_33

    .line 553
    const-string/jumbo v3, "DATABASE_CRC"

    const-string/jumbo v4, "getFpriCrc: fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-object v5

    .line 557
    :cond_33
    const-string/jumbo v3, "%08X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "crcHex":Ljava/lang/String;
    const-string/jumbo v3, "DATABASE_CRC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFpriCrc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-object v1
.end method

.method private isChinaModel()Z
    .registers 4

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, "chinaModel":Z
    sget-object v1, Lcom/lge/android/atservice/Database;->sProductName:Ljava/lang/String;

    const-string/jumbo v2, "cmcc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Lcom/lge/android/atservice/Database;->sProductName:Ljava/lang/String;

    const-string/jumbo v2, "ctc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Lcom/lge/android/atservice/Database;->sProductName:Ljava/lang/String;

    const-string/jumbo v2, "cmo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Lcom/lge/android/atservice/Database;->sProductName:Ljava/lang/String;

    const-string/jumbo v2, "cto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 638
    :cond_2d
    const/4 v0, 0x1

    .line 640
    :cond_2e
    return v0
.end method

.method private updateCrcByQuickSettings(ZLjava/lang/Object;)Z
    .registers 38
    .param p1, "dump"    # Z
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 342
    const/16 v34, 0x0

    .line 343
    .local v34, "writer":Ljava/io/PrintWriter;
    const/4 v9, 0x0

    .line 346
    .local v9, "crc":Ljava/util/zip/CRC32;
    if-eqz p1, :cond_24c

    move-object/from16 v0, p2

    instance-of v1, v0, Ljava/io/PrintWriter;

    if-eqz v1, :cond_24c

    move-object/from16 v34, p2

    .line 347
    check-cast v34, Ljava/io/PrintWriter;

    .line 348
    .local v34, "writer":Ljava/io/PrintWriter;
    const-string/jumbo v1, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    .end local v9    # "crc":Ljava/util/zip/CRC32;
    .end local v34    # "writer":Ljava/io/PrintWriter;
    :goto_17
    const-string/jumbo v31, ""

    .line 358
    .local v31, "strQSlideState":Ljava/lang/String;
    const-string/jumbo v1, "content://com.lge.provider.systemui.systemuiprovider/data"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 359
    .local v2, "qslide_uri":Landroid/net/Uri;
    const/16 v24, 0x0

    .line 361
    .local v24, "qslide_cursor":Landroid/database/Cursor;
    :try_start_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/android/atservice/Database;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 362
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string/jumbo v4, "name=?"

    .line 363
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "QSLIDE"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    .line 361
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 365
    .local v24, "qslide_cursor":Landroid/database/Cursor;
    if-eqz v24, :cond_60

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_60

    .line 366
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 367
    const/4 v1, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_265

    const-string/jumbo v31, "enable"
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_60} :catch_276
    .catchall {:try_start_23 .. :try_end_60} :catchall_28a

    .line 373
    :cond_60
    :goto_60
    if-eqz v24, :cond_65

    .line 375
    :try_start_62
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_26a

    .line 382
    .end local v24    # "qslide_cursor":Landroid/database/Cursor;
    :cond_65
    :goto_65
    const-string/jumbo v1, "DATABASE_CRC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCrcByQuickSettings: QSlide state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eqz v9, :cond_29c

    .line 385
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 391
    :cond_8a
    :goto_8a
    const-string/jumbo v27, ""

    .line 392
    .local v27, "strHotspotState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/android/atservice/Database;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    .line 393
    .local v20, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v20, :cond_a7

    .line 394
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v14

    .line 396
    .local v14, "hotspotState":I
    const/16 v1, 0xd

    if-ne v1, v14, :cond_2bb

    .line 397
    const-string/jumbo v27, "enable"

    .line 403
    .end local v14    # "hotspotState":I
    :cond_a7
    :goto_a7
    const-string/jumbo v1, "DATABASE_CRC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCrcByQuickSettings: Wi-Fi Hotspot state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz v9, :cond_2c0

    .line 406
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 412
    :cond_cc
    :goto_cc
    const-string/jumbo v32, ""

    .line 414
    .local v32, "strSyncState":Ljava/lang/String;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_2df

    .line 415
    const-string/jumbo v32, "enable"

    .line 420
    :goto_d8
    const-string/jumbo v1, "DATABASE_CRC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCrcByQuickSettings: Sync state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eqz v9, :cond_2e4

    .line 423
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 429
    :cond_fd
    :goto_fd
    const/16 v16, 0x0

    .line 430
    .local v16, "isSupportNFC":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/android/atservice/Database;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 432
    .local v23, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.nfc"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    .line 433
    .local v16, "isSupportNFC":Z
    if-eqz v16, :cond_38f

    .line 434
    const-string/jumbo v28, ""

    .line 435
    .local v28, "strNfcState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/android/atservice/Database;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "nfc"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/nfc/NfcManager;

    .line 436
    .local v19, "mNfcManager":Landroid/nfc/NfcManager;
    if-eqz v19, :cond_316

    .line 437
    invoke-virtual/range {v19 .. v19}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v17

    .line 438
    .local v17, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v18

    .line 440
    .local v18, "mNfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v17, :cond_308

    if-eqz v18, :cond_308

    .line 441
    invoke-virtual/range {v18 .. v18}, Lcom/lge/nfcaddon/NfcAdapterAddon;->checkFPRICRC()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 442
    .local v15, "isCorrectNfcState":Ljava/lang/Boolean;
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_303

    .line 443
    const-string/jumbo v28, "enable"

    .line 447
    :goto_141
    const-string/jumbo v1, "DATABASE_CRC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCrcByQuickSettings: NFC state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v15    # "isCorrectNfcState":Ljava/lang/Boolean;
    .end local v17    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    .end local v18    # "mNfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :goto_15d
    const-string/jumbo v1, "ro.factorytest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 459
    .local v26, "strFactoryTest":Ljava/lang/String;
    const-string/jumbo v1, "sys.lge.pif"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 461
    .local v29, "strPif":Ljava/lang/String;
    const/16 v21, 0x0

    .line 462
    .local v21, "nFactoryTest":I
    const/16 v22, 0x0

    .line 465
    .local v22, "nPif":I
    :try_start_16f
    const-string/jumbo v1, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_324

    .line 466
    const/16 v21, -0x1

    .line 471
    :goto_17c
    const-string/jumbo v1, "sys.lge.pif"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_186
    .catch Ljava/lang/NumberFormatException; {:try_start_16f .. :try_end_186} :catch_331

    move-result v22

    .line 477
    :goto_187
    const-string/jumbo v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 478
    .local v33, "strTargetCountry":Ljava/lang/String;
    const-string/jumbo v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 480
    .local v25, "strDevice":Ljava/lang/String;
    const-string/jumbo v1, "enable"

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 481
    const/4 v1, 0x1

    move/from16 v0, v22

    if-ne v0, v1, :cond_1d1

    const/4 v1, 0x1

    move/from16 v0, v21

    if-eq v0, v1, :cond_1d1

    const/4 v1, 0x2

    move/from16 v0, v21

    if-eq v0, v1, :cond_1d1

    .line 482
    const-string/jumbo v1, "g2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 483
    const-string/jumbo v1, "KR"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 484
    const-string/jumbo v28, "disable"

    .line 485
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v3, "Disabling NFC Status for CRC Check"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_1d1
    if-eqz v9, :cond_370

    .line 493
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 502
    .end local v19    # "mNfcManager":Landroid/nfc/NfcManager;
    .end local v21    # "nFactoryTest":I
    .end local v22    # "nPif":I
    .end local v25    # "strDevice":Ljava/lang/String;
    .end local v26    # "strFactoryTest":Ljava/lang/String;
    .end local v28    # "strNfcState":Ljava/lang/String;
    .end local v29    # "strPif":Ljava/lang/String;
    .end local v33    # "strTargetCountry":Ljava/lang/String;
    :cond_1da
    :goto_1da
    const-string/jumbo v30, "disable"

    .line 503
    .local v30, "strQRemoteState":Ljava/lang/String;
    const-string/jumbo v1, "content://com.lge.provider.systemui.systemuiprovider/data"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 504
    .local v4, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 506
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_1e5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/android/atservice/Database;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 507
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "value"

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string/jumbo v6, "name=?"

    .line 508
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const-string/jumbo v1, "QREMOTE"

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x0

    .line 506
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 510
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_220

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_220

    .line 511
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_220

    .line 512
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_39a

    const-string/jumbo v30, "enable"
    :try_end_220
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_220} :catch_3ab
    .catchall {:try_start_1e5 .. :try_end_220} :catchall_3bf

    .line 518
    :cond_220
    :goto_220
    if-eqz v10, :cond_225

    .line 520
    :try_start_222
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_225} :catch_39f

    .line 527
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_225
    :goto_225
    const-string/jumbo v1, "DATABASE_CRC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCrcByQuickSettings: QRemote state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    if-eqz v9, :cond_3d1

    .line 530
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 535
    :cond_24a
    :goto_24a
    const/4 v1, 0x1

    return v1

    .line 349
    .end local v2    # "qslide_uri":Landroid/net/Uri;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v16    # "isSupportNFC":Z
    .end local v20    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "strHotspotState":Ljava/lang/String;
    .end local v30    # "strQRemoteState":Ljava/lang/String;
    .end local v31    # "strQSlideState":Ljava/lang/String;
    .end local v32    # "strSyncState":Ljava/lang/String;
    .restart local v9    # "crc":Ljava/util/zip/CRC32;
    .local v34, "writer":Ljava/io/PrintWriter;
    :cond_24c
    if-nez p1, :cond_25a

    move-object/from16 v0, p2

    instance-of v1, v0, Ljava/util/zip/CRC32;

    if-eqz v1, :cond_25a

    move-object/from16 v9, p2

    .line 350
    check-cast v9, Ljava/util/zip/CRC32;

    .local v9, "crc":Ljava/util/zip/CRC32;
    goto/16 :goto_17

    .line 352
    .local v9, "crc":Ljava/util/zip/CRC32;
    :cond_25a
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v3, "updateCrcByQuickSettings: fail"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v1, 0x0

    return v1

    .line 367
    .end local v9    # "crc":Ljava/util/zip/CRC32;
    .end local v34    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "qslide_uri":Landroid/net/Uri;
    .restart local v24    # "qslide_cursor":Landroid/database/Cursor;
    .restart local v31    # "strQSlideState":Ljava/lang/String;
    :cond_265
    :try_start_265
    const-string/jumbo v31, "disable"
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_268} :catch_276
    .catchall {:try_start_265 .. :try_end_268} :catchall_28a

    goto/16 :goto_60

    .line 376
    :catch_26a
    move-exception v13

    .line 377
    .local v13, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v3, "updateCrcByQuickSettings: qslide_cursor close Exception"

    invoke-static {v1, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_65

    .line 370
    .end local v13    # "ex":Ljava/lang/Exception;
    .end local v24    # "qslide_cursor":Landroid/database/Cursor;
    :catch_276
    move-exception v11

    .line 373
    .local v11, "e":Ljava/lang/Exception;
    if-eqz v24, :cond_65

    .line 375
    :try_start_279
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_27c} :catch_27e

    goto/16 :goto_65

    .line 376
    :catch_27e
    move-exception v13

    .line 377
    .restart local v13    # "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v3, "updateCrcByQuickSettings: qslide_cursor close Exception"

    invoke-static {v1, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_65

    .line 372
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "ex":Ljava/lang/Exception;
    :catchall_28a
    move-exception v1

    .line 373
    if-eqz v24, :cond_290

    .line 375
    :try_start_28d
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_28d .. :try_end_290} :catch_291

    .line 372
    :cond_290
    :goto_290
    throw v1

    .line 376
    :catch_291
    move-exception v13

    .line 377
    .restart local v13    # "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "DATABASE_CRC"

    const-string/jumbo v5, "updateCrcByQuickSettings: qslide_cursor close Exception"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_290

    .line 386
    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_29c
    if-eqz v34, :cond_8a

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QuickSettings - QSlide, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 399
    .restart local v14    # "hotspotState":I
    .restart local v20    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .restart local v27    # "strHotspotState":Ljava/lang/String;
    :cond_2bb
    const-string/jumbo v27, "disable"

    goto/16 :goto_a7

    .line 407
    .end local v14    # "hotspotState":I
    :cond_2c0
    if-eqz v34, :cond_cc

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QuickSettings - Wi-Fi Hotspot, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 417
    .restart local v32    # "strSyncState":Ljava/lang/String;
    :cond_2df
    const-string/jumbo v32, "disable"

    goto/16 :goto_d8

    .line 424
    :cond_2e4
    if-eqz v34, :cond_fd

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QuickSettings - Sync, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v32

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_fd

    .line 445
    .restart local v15    # "isCorrectNfcState":Ljava/lang/Boolean;
    .restart local v16    # "isSupportNFC":Z
    .restart local v17    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    .restart local v18    # "mNfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    .restart local v19    # "mNfcManager":Landroid/nfc/NfcManager;
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "strNfcState":Ljava/lang/String;
    :cond_303
    const-string/jumbo v28, "disable"

    goto/16 :goto_141

    .line 449
    .end local v15    # "isCorrectNfcState":Ljava/lang/Boolean;
    :cond_308
    const-string/jumbo v28, "disable"

    .line 450
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v3, "updateCrcByQuickSettings: NFC is not available. Skip NFC CRC Check. NFC adapter or Addon is null)"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15d

    .line 453
    .end local v17    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    .end local v18    # "mNfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_316
    const-string/jumbo v28, "disable"

    .line 454
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v3, "updateCrcByQuickSettings: NFC is not available. Skip NFC CRC Check. NFC NfcManager is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15d

    .line 469
    .restart local v21    # "nFactoryTest":I
    .restart local v22    # "nPif":I
    .restart local v26    # "strFactoryTest":Ljava/lang/String;
    .restart local v29    # "strPif":Ljava/lang/String;
    :cond_324
    :try_start_324
    const-string/jumbo v1, "ro.factorytest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_32e
    .catch Ljava/lang/NumberFormatException; {:try_start_324 .. :try_end_32e} :catch_331

    move-result v21

    goto/16 :goto_17c

    .line 472
    :catch_331
    move-exception v12

    .line 473
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v3, "Get System Property Error. Ingnore!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string/jumbo v1, "DATABASE_CRC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Factory Test = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", PIF = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "sys.lge.pif"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_187

    .line 494
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v25    # "strDevice":Ljava/lang/String;
    .restart local v33    # "strTargetCountry":Ljava/lang/String;
    :cond_370
    if-eqz v34, :cond_1da

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QuickSettings - NFC, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1da

    .line 498
    .end local v19    # "mNfcManager":Landroid/nfc/NfcManager;
    .end local v21    # "nFactoryTest":I
    .end local v22    # "nPif":I
    .end local v25    # "strDevice":Ljava/lang/String;
    .end local v26    # "strFactoryTest":Ljava/lang/String;
    .end local v28    # "strNfcState":Ljava/lang/String;
    .end local v29    # "strPif":Ljava/lang/String;
    .end local v33    # "strTargetCountry":Ljava/lang/String;
    :cond_38f
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v3, "updateCrcByQuickSettings: NFC is not supported"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1da

    .line 512
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v30    # "strQRemoteState":Ljava/lang/String;
    :cond_39a
    :try_start_39a
    const-string/jumbo v30, "disable"
    :try_end_39d
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_39d} :catch_3ab
    .catchall {:try_start_39a .. :try_end_39d} :catchall_3bf

    goto/16 :goto_220

    .line 521
    :catch_39f
    move-exception v13

    .line 522
    .restart local v13    # "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v3, "updateCrcByQuickSettings: cursor close Exception"

    invoke-static {v1, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_225

    .line 515
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "ex":Ljava/lang/Exception;
    :catch_3ab
    move-exception v11

    .line 518
    .restart local v11    # "e":Ljava/lang/Exception;
    if-eqz v10, :cond_225

    .line 520
    :try_start_3ae
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3b1
    .catch Ljava/lang/Exception; {:try_start_3ae .. :try_end_3b1} :catch_3b3

    goto/16 :goto_225

    .line 521
    :catch_3b3
    move-exception v13

    .line 522
    .restart local v13    # "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v3, "updateCrcByQuickSettings: cursor close Exception"

    invoke-static {v1, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_225

    .line 517
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "ex":Ljava/lang/Exception;
    :catchall_3bf
    move-exception v1

    .line 518
    if-eqz v10, :cond_3c5

    .line 520
    :try_start_3c2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3c5
    .catch Ljava/lang/Exception; {:try_start_3c2 .. :try_end_3c5} :catch_3c6

    .line 517
    :cond_3c5
    :goto_3c5
    throw v1

    .line 521
    :catch_3c6
    move-exception v13

    .line 522
    .restart local v13    # "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "DATABASE_CRC"

    const-string/jumbo v5, "updateCrcByQuickSettings: cursor close Exception"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c5

    .line 531
    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_3d1
    if-eqz v34, :cond_24a

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QuickSettings - QRemote, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_24a
.end method

.method private updateCrcBySettings(Landroid/net/Uri;ZLjava/lang/Object;)Z
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dump"    # Z
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 265
    const/4 v9, 0x0

    .line 266
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 267
    .local v13, "writer":Ljava/io/PrintWriter;
    const/4 v7, 0x0

    .line 268
    .local v7, "crc":Ljava/util/zip/CRC32;
    const/4 v8, 0x0

    .line 271
    .local v8, "crc_skip":Z
    if-eqz p2, :cond_49

    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/io/PrintWriter;

    if-eqz v1, :cond_49

    move-object/from16 v13, p3

    .line 272
    check-cast v13, Ljava/io/PrintWriter;

    .line 281
    .end local v7    # "crc":Ljava/util/zip/CRC32;
    .end local v13    # "writer":Ljava/io/PrintWriter;
    :goto_10
    invoke-static {}, Lcom/lge/android/atservice/FPRI_list;->Make_fpri_list()V

    .line 283
    iget-object v1, p0, Lcom/lge/android/atservice/Database;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/lge/android/atservice/Database;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "name"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 285
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_141

    .line 286
    invoke-direct {p0}, Lcom/lge/android/atservice/Database;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 287
    :cond_2d
    :goto_2d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 288
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v1, "com.baidu.deviceid"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 290
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/android/atservice/Database;->sTemp:Ljava/lang/String;

    goto :goto_2d

    .line 273
    .end local v11    # "name":Ljava/lang/String;
    .restart local v7    # "crc":Ljava/util/zip/CRC32;
    .local v9, "cursor":Landroid/database/Cursor;
    .restart local v13    # "writer":Ljava/io/PrintWriter;
    :cond_49
    if-nez p2, :cond_56

    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/util/zip/CRC32;

    if-eqz v1, :cond_56

    move-object/from16 v7, p3

    .line 274
    check-cast v7, Ljava/util/zip/CRC32;

    .local v7, "crc":Ljava/util/zip/CRC32;
    goto :goto_10

    .line 276
    .local v7, "crc":Ljava/util/zip/CRC32;
    :cond_56
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v2, "updateCrcBySettings: fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v1, 0x0

    return v1

    .line 293
    .end local v7    # "crc":Ljava/util/zip/CRC32;
    .end local v13    # "writer":Ljava/io/PrintWriter;
    .local v9, "cursor":Landroid/database/Cursor;
    :cond_61
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 294
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 296
    :cond_67
    :goto_67
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 297
    const/4 v8, 0x0

    .line 298
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 299
    .restart local v11    # "name":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 301
    .local v12, "value":Ljava/lang/String;
    if-eqz v12, :cond_67

    .line 302
    invoke-direct {p0}, Lcom/lge/android/atservice/Database;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 303
    sget-object v1, Lcom/lge/android/atservice/Database;->sTemp:Ljava/lang/String;

    if-eqz v1, :cond_8d

    .line 304
    sget-object v1, Lcom/lge/android/atservice/Database;->sTemp:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 305
    const/4 v8, 0x1

    .line 309
    :cond_8d
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_8e
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->Fpri_skip_list:[Ljava/lang/String;

    array-length v1, v1

    if-ge v10, v1, :cond_9e

    .line 310
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->Fpri_skip_list:[Ljava/lang/String;

    aget-object v1, v1, v10

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 311
    const/4 v8, 0x1

    .line 316
    :cond_9e
    if-eqz v8, :cond_e9

    .line 317
    const-string/jumbo v1, "DATABASE_CRC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCrcBySettings: name["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is skipped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-eqz v13, :cond_67

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_67

    .line 309
    :cond_e6
    add-int/lit8 v10, v10, 0x1

    goto :goto_8e

    .line 323
    :cond_e9
    const-string/jumbo v1, "DATABASE_CRC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCrcBySettings: name["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], value["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-eqz v7, :cond_122

    if-eqz v12, :cond_122

    .line 326
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/zip/CRC32;->update([B)V

    goto/16 :goto_67

    .line 327
    :cond_122
    if-eqz v13, :cond_67

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_67

    .line 334
    .end local v10    # "i":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_141
    const-string/jumbo v1, "DATABASE_CRC"

    const-string/jumbo v2, "updateCrcBySettings: cursor fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, 0x0

    return v1

    .line 338
    :cond_14c
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string/jumbo v0, "DATABASE_CRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCommand(): command["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string/jumbo v0, "getDatabaseCrc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 59
    invoke-direct {p0}, Lcom/lge/android/atservice/Database;->getDatabaseCrc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_2f
    const-string/jumbo v0, "getFpriCrc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 61
    invoke-direct {p0}, Lcom/lge/android/atservice/Database;->getFpriCrc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_3d
    const-string/jumbo v0, "dumpDatabase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 63
    invoke-direct {p0}, Lcom/lge/android/atservice/Database;->dumpDatabase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_4b
    const-string/jumbo v0, "error"

    return-object v0
.end method
