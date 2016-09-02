.class public Lcom/lge/android/atservice/UtsSmsManager;
.super Lcom/lge/android/atservice/Device;
.source "UtsSmsManager.java"


# static fields
.field private static final INBOX_SM_NOT_UTS_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND subject IS NULL OR subject <> \'UTS\')"

.field private static final INBOX_SM_UTS_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND subject = \'UTS\')"

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND read = 0)"

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "UtsSmsManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 28
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "body"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "date"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "address"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "subject"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "thread_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 27
    sput-object v0, Lcom/lge/android/atservice/UtsSmsManager;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/Device;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    .line 33
    const-string/jumbo v0, "UtsSmsManager"

    const-string/jumbo v1, "[UtsSmsManager]: UtsSmsManager creator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method private setAppOpsForLGApp(I)V
    .registers 9
    .param p1, "AppsOpsMode"    # I

    .prologue
    .line 230
    iget-object v4, p0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 231
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "appops"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 234
    .local v0, "appOps":Landroid/app/AppOpsManager;
    :try_start_11
    iget-object v4, p0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 235
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v0, v6, v4, v5, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2b} :catch_2c

    .line 229
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_2b
    return-void

    .line 236
    :catch_2c
    move-exception v1

    .line 237
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2b
.end method


# virtual methods
.method public UtsSmsGetMsg()Ljava/util/ArrayList;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v18, "smspacket":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 38
    .local v16, "notUtsCursor":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 39
    .local v21, "utsCursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 40
    .local v15, "inboxForUtsCount":I
    const/4 v14, 0x0

    .line 41
    .local v14, "inboxForNotUtsCount":I
    const/4 v10, 0x0

    .line 42
    .local v10, "address":Ljava/lang/String;
    const/4 v11, 0x0

    .line 43
    .local v11, "body":Ljava/lang/String;
    const/4 v12, 0x0

    .line 44
    .local v12, "date":Ljava/lang/String;
    const/16 v20, 0x0

    .line 45
    .local v20, "unreadcount":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 46
    .local v8, "_id":J
    const/16 v19, 0x0

    .line 48
    .local v19, "tmpCount":I
    const-string/jumbo v2, "UtsSmsManager"

    const-string/jumbo v3, "[UtsSmsGetMsg]: Get a message from inbox"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lge/android/atservice/UtsSmsManager;->setAppOpsForLGApp(I)V

    .line 52
    :try_start_23
    const-string/jumbo v2, "UtsSmsManager"

    const-string/jumbo v3, "[UtsSmsGetMsg]: INBOX_SM_NOT_UTS_CONSTRAINT=(type = 1 AND subject IS NULL OR subject <> \'UTS\')"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 54
    sget-object v4, Lcom/lge/android/atservice/UtsSmsManager;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "(type = 1 AND subject IS NULL OR subject <> \'UTS\')"

    .line 55
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 53
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_40} :catch_1cf

    move-result-object v16

    .line 61
    .end local v16    # "notUtsCursor":Landroid/database/Cursor;
    :goto_41
    :try_start_41
    const-string/jumbo v2, "UtsSmsManager"

    const-string/jumbo v3, "[UtsSmsGetMsg]: INBOX_SM_UTS_CONSTRAINT=(type = 1 AND subject = \'UTS\')"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 64
    sget-object v4, Lcom/lge/android/atservice/UtsSmsManager;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "(type = 1 AND subject = \'UTS\')"

    .line 65
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 63
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5e} :catch_1ec

    move-result-object v21

    .line 70
    .end local v21    # "utsCursor":Landroid/database/Cursor;
    :goto_5f
    if-eqz v16, :cond_330

    .line 71
    if-eqz v21, :cond_67

    .line 72
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 75
    :cond_67
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 76
    const-string/jumbo v2, "UtsSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UtsSmsGetMsg]: inboxForUtsCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", inboxForNotUtsCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string/jumbo v2, "UtsSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UtsSmsGetMsg]: The number of SMS, needed to be sent to UTS equipment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v2, 0x1

    if-eq v14, v2, :cond_b1

    const/16 v2, 0x32

    if-ne v15, v2, :cond_218

    .line 83
    :cond_b1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_147

    .line 84
    const-string/jumbo v2, "address"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, "address":Ljava/lang/String;
    const-string/jumbo v2, "body"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, "body":Ljava/lang/String;
    const-string/jumbo v2, "date"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "date":Ljava/lang/String;
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 89
    const-string/jumbo v2, "UtsSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UtsSmsGetMsg]:[1]_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", about to send a SMS to address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", with body="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 92
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 93
    const-string/jumbo v2, "last"

    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 95
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 98
    .end local v10    # "address":Ljava/lang/String;
    .end local v11    # "body":Ljava/lang/String;
    .end local v12    # "date":Ljava/lang/String;
    :cond_147
    if-eqz v21, :cond_20e

    .line 99
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1c8

    .line 102
    :cond_14f
    :try_start_14f
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 103
    add-int/lit8 v19, v19, 0x1

    .line 104
    new-instance v22, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 105
    .local v22, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "subject"

    const-string/jumbo v3, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    const-string/jumbo v2, "UtsSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UtsSmsGetMsg]:_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", changing Subject field to NULL: Changing SMS Count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1c2
    .catchall {:try_start_14f .. :try_end_1c2} :catchall_209

    move-result v2

    if-nez v2, :cond_14f

    .line 113
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 179
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_1c8
    :goto_1c8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lge/android/atservice/UtsSmsManager;->setAppOpsForLGApp(I)V

    .line 180
    return-object v18

    .line 56
    .local v10, "address":Ljava/lang/String;
    .local v11, "body":Ljava/lang/String;
    .local v12, "date":Ljava/lang/String;
    .restart local v16    # "notUtsCursor":Landroid/database/Cursor;
    .restart local v21    # "utsCursor":Landroid/database/Cursor;
    :catch_1cf
    move-exception v13

    .line 57
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UtsSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UtsSmsGetMsg] notUtsCursor Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 66
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v16    # "notUtsCursor":Landroid/database/Cursor;
    :catch_1ec
    move-exception v13

    .line 67
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UtsSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UtsSmsGetMsg] notUtsCursor Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    .line 112
    .end local v10    # "address":Ljava/lang/String;
    .end local v11    # "body":Ljava/lang/String;
    .end local v12    # "date":Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v21    # "utsCursor":Landroid/database/Cursor;
    :catchall_209
    move-exception v2

    .line 113
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 112
    throw v2

    .line 117
    :cond_20e
    const-string/jumbo v2, "UtsSmsManager"

    const-string/jumbo v3, "[UtsSmsGetMsg]: utsCursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c8

    .line 119
    .restart local v10    # "address":Ljava/lang/String;
    .restart local v11    # "body":Ljava/lang/String;
    .restart local v12    # "date":Ljava/lang/String;
    :cond_218
    if-nez v14, :cond_23f

    .line 120
    const-string/jumbo v2, "UtsSmsManager"

    const-string/jumbo v3, "[UtsSmsGetMsg]:[0] about to send a null string SMS t0 UTS equipment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v2, ""

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 122
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 123
    const-string/jumbo v2, "last"

    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1c8

    .line 126
    :cond_23f
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1c8

    .line 127
    const-string/jumbo v2, "address"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, "address":Ljava/lang/String;
    const-string/jumbo v2, "body"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, "body":Ljava/lang/String;
    const-string/jumbo v2, "date"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 130
    .local v12, "date":Ljava/lang/String;
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 133
    const-string/jumbo v2, "UtsSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UtsSmsGetMsg]:[2]_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Inbox to address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with body="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 136
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    const-string/jumbo v2, "more"

    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 138
    new-instance v22, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 139
    .restart local v22    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "subject"

    const-string/jumbo v3, "UTS"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 142
    .local v17, "result":I
    const-string/jumbo v2, "UtsSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UtsSmsGetMsg]:[2] result is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 146
    if-eqz v21, :cond_1c8

    .line 147
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1c8

    .line 153
    .end local v17    # "result":I
    .end local v22    # "values":Landroid/content/ContentValues;
    .local v10, "address":Ljava/lang/String;
    .local v11, "body":Ljava/lang/String;
    .local v12, "date":Ljava/lang/String;
    :cond_330
    const-string/jumbo v2, "UtsSmsManager"

    const-string/jumbo v3, "[UtsSmsGetMsg]:[3] about to send a dumy SMS t0 UTS equipment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string/jumbo v2, "112223333"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 155
    const-string/jumbo v2, "last message"

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 156
    const-string/jumbo v2, "last"

    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 158
    if-eqz v21, :cond_1c8

    .line 159
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1c8

    .line 162
    :cond_35c
    add-int/lit8 v19, v19, 0x1

    .line 163
    :try_start_35e
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 165
    new-instance v22, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 166
    .restart local v22    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "subject"

    const-string/jumbo v3, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    const-string/jumbo v2, "UtsSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UtsSmsGetMsg][terminate]: changing Subject field to NULL: Changing SMS Count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3cf
    .catchall {:try_start_35e .. :try_end_3cf} :catchall_3d7

    move-result v2

    if-nez v2, :cond_35c

    .line 174
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1c8

    .line 173
    .end local v22    # "values":Landroid/content/ContentValues;
    :catchall_3d7
    move-exception v2

    .line 174
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 173
    throw v2
.end method

.method public UtsSmsIsUnreadMsg()B
    .registers 12

    .prologue
    .line 194
    const/4 v7, 0x0

    .line 195
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 196
    .local v9, "unreadSMScounts":I
    const/4 v10, 0x0

    .line 197
    .local v10, "voicemailCount":I
    const-string/jumbo v0, "UtsSmsManager"

    const-string/jumbo v1, "[UtsSmsIsUnreadMsg]: Get unread message counts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v10

    .line 203
    :try_start_14
    iget-object v0, p0, Lcom/lge/android/atservice/UtsSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 204
    sget-object v2, Lcom/lge/android/atservice/UtsSmsManager;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "(type = 1 AND read = 0)"

    .line 205
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 203
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 206
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_73

    .line 213
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_2e
    if-nez v9, :cond_8f

    if-nez v10, :cond_8f

    .line 214
    const/4 v6, 0x0

    .line 223
    .local v6, "UnreadMsgresult":B
    :goto_33
    const-string/jumbo v0, "UtsSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[UtsSmsIsUnreadMsg]: unreadSMScounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", voicemailCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string/jumbo v0, "UtsSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[UtsSmsIsUnreadMsg]: UnreadMsgresult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v6

    .line 208
    .end local v6    # "UnreadMsgresult":B
    :catch_73
    move-exception v8

    .line 209
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "UtsSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[UtsSmsIsUnreadMsg] Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 215
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8f
    if-eqz v9, :cond_95

    if-nez v10, :cond_95

    .line 216
    const/4 v6, 0x1

    .line 215
    .restart local v6    # "UnreadMsgresult":B
    goto :goto_33

    .line 217
    .end local v6    # "UnreadMsgresult":B
    :cond_95
    if-nez v9, :cond_9b

    if-eqz v10, :cond_9b

    .line 218
    const/4 v6, 0x2

    .line 217
    .restart local v6    # "UnreadMsgresult":B
    goto :goto_33

    .line 220
    .end local v6    # "UnreadMsgresult":B
    :cond_9b
    const/4 v6, 0x3

    .restart local v6    # "UnreadMsgresult":B
    goto :goto_33
.end method

.method public UtsSmsSendMsg(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "utsAddress"    # Ljava/lang/String;
    .param p2, "utsMsgBody"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 184
    const/4 v6, 0x1

    .line 186
    .local v6, "result":Z
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, "sm":Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    .line 187
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 188
    const-string/jumbo v1, "UtsSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[UtsSmsManager] Sending SMS utsAddress= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", utsMsgBody="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v6
.end method
