.class public Landroid/mtp/LGMtpDatabase;
.super Ljava/lang/Object;
.source "LGMtpDatabase.java"


# static fields
.field static final AUDIO_PROPERTIES:[I

.field private static final DATA_MIME_PROJECTION:[Ljava/lang/String;

.field private static final DEBUG:Z = false

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final KEY_NAME:Ljava/lang/String; = "count"

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.lge.remote.lgairdrive"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "LGMtpDatabase"

.field static final VIDEO_PROPERTIES:[I

.field private static final mSecondaryStoragePath:Ljava/lang/String;


# instance fields
.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private mFirstCallGetObjectList:Z

.field private mInstalledLGAirDrive:Z

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/LGMtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/LGMtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Landroid/mtp/LGMtpServer;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-array v0, v3, [Ljava/lang/String;

    .line 104
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 103
    sput-object v0, Landroid/mtp/LGMtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 106
    new-array v0, v4, [Ljava/lang/String;

    .line 107
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 108
    const-string v1, "format"

    aput-object v1, v0, v3

    .line 106
    sput-object v0, Landroid/mtp/LGMtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    .line 110
    new-array v0, v4, [Ljava/lang/String;

    .line 111
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 112
    const-string v1, "_data"

    aput-object v1, v0, v3

    .line 110
    sput-object v0, Landroid/mtp/LGMtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 115
    new-array v0, v5, [Ljava/lang/String;

    .line 116
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 117
    const-string v1, "_data"

    aput-object v1, v0, v3

    .line 118
    const-string v1, "mime_type"

    aput-object v1, v0, v4

    .line 115
    sput-object v0, Landroid/mtp/LGMtpDatabase;->DATA_MIME_PROJECTION:[Ljava/lang/String;

    .line 121
    new-array v0, v5, [Ljava/lang/String;

    .line 122
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 123
    const-string v1, "_data"

    aput-object v1, v0, v3

    .line 124
    const-string v1, "format"

    aput-object v1, v0, v4

    .line 121
    sput-object v0, Landroid/mtp/LGMtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 126
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 127
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 128
    const-string v1, "storage_id"

    aput-object v1, v0, v3

    .line 129
    const-string v1, "format"

    aput-object v1, v0, v4

    .line 130
    const-string v1, "parent"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    .line 131
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 132
    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 133
    const-string v2, "date_modified"

    aput-object v2, v0, v1

    .line 126
    sput-object v0, Landroid/mtp/LGMtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 157
    const-string v0, "SECONDARY_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/LGMtpDatabase;->mSecondaryStoragePath:Ljava/lang/String;

    .line 167
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 715
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_9a

    sput-object v0, Landroid/mtp/LGMtpDatabase;->FILE_PROPERTIES:[I

    .line 733
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_b4

    sput-object v0, Landroid/mtp/LGMtpDatabase;->AUDIO_PROPERTIES:[I

    .line 765
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_e8

    sput-object v0, Landroid/mtp/LGMtpDatabase;->VIDEO_PROPERTIES:[I

    .line 798
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_110

    sput-object v0, Landroid/mtp/LGMtpDatabase;->IMAGE_PROPERTIES:[I

    .line 826
    return-void

    .line 715
    :array_9a
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc08
    .end array-data

    .line 733
    :array_b4
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc08
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    .line 765
    :array_e8
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc08
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
        0xdc87
        0xdc88
        0xdc47
    .end array-data

    .line 798
    :array_110
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc08
        0xdc48
        0xdc87
        0xdc88
        0xdc47
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/lang/String;
    .param p4, "subDirectories"    # [Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 90
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 94
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 160
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/LGMtpDatabase;->mInstalledLGAirDrive:Z

    .line 161
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/mtp/LGMtpDatabase;->mFirstCallGetObjectList:Z

    .line 170
    new-instance v10, Landroid/mtp/LGMtpDatabase$1;

    invoke-direct {v10, p0}, Landroid/mtp/LGMtpDatabase$1;-><init>(Landroid/mtp/LGMtpDatabase;)V

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    invoke-direct {p0}, Landroid/mtp/LGMtpDatabase;->native_setup()V

    .line 197
    iput-object p1, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 200
    iput-object p2, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 201
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 202
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 203
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpDatabase;->getMediaScanner(Landroid/content/Context;)Landroid/media/MediaScanner;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 205
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 206
    if-eqz p4, :cond_7a

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    move-object/from16 v0, p4

    array-length v2, v0

    .line 211
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_62
    if-lt v4, v2, :cond_b2

    .line 218
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 222
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 223
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_78
    if-lt v4, v2, :cond_c3

    .line 231
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    :cond_7a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 232
    .local v8, "locale":Ljava/util/Locale;
    if-eqz v8, :cond_ae

    .line 233
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "language":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "country":Ljava/lang/String;
    if-eqz v7, :cond_ae

    .line 236
    if-eqz v3, :cond_e7

    .line 237
    iget-object v10, p0, Landroid/mtp/LGMtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 243
    .end local v3    # "country":Ljava/lang/String;
    .end local v7    # "language":Ljava/lang/String;
    :cond_ae
    :goto_ae
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 244
    return-void

    .line 212
    .end local v8    # "locale":Ljava/util/Locale;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "count":I
    .restart local v4    # "i":I
    :cond_b2
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_c0

    .line 215
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_c0
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 224
    .restart local v6    # "j":I
    :cond_c3
    aget-object v9, p4, v4

    .line 225
    .local v9, "path":Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v9, v10, v6

    .line 226
    iget-object v10, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    .line 239
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "path":Ljava/lang/String;
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v7    # "language":Ljava/lang/String;
    .restart local v8    # "locale":Ljava/util/Locale;
    :cond_e7
    iget-object v10, p0, Landroid/mtp/LGMtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_ae
.end method

.method static synthetic access$0(Landroid/mtp/LGMtpDatabase;I)V
    .registers 2

    .prologue
    .line 155
    iput p1, p0, Landroid/mtp/LGMtpDatabase;->mBatteryScale:I

    return-void
.end method

.method static synthetic access$1(Landroid/mtp/LGMtpDatabase;)I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Landroid/mtp/LGMtpDatabase;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$2(Landroid/mtp/LGMtpDatabase;I)V
    .registers 2

    .prologue
    .line 154
    iput p1, p0, Landroid/mtp/LGMtpDatabase;->mBatteryLevel:I

    return-void
.end method

.method static synthetic access$3(Landroid/mtp/LGMtpDatabase;)Landroid/mtp/LGMtpServer;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mServer:Landroid/mtp/LGMtpServer;

    return-object v0
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .registers 22
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "modified"    # J

    .prologue
    .line 409
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpDatabase;->inStorageRoot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 410
    const-string v0, "LGMtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attempt to put file outside of storage area: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, -0x1

    .line 459
    :goto_1b
    return v0

    .line 415
    :cond_1c
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, -0x1

    goto :goto_1b

    .line 418
    :cond_24
    if-eqz p1, :cond_93

    .line 419
    const/4 v8, 0x0

    .line 421
    .local v8, "c":Landroid/database/Cursor;
    :try_start_27
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    .line 422
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 421
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 423
    if-eqz v8, :cond_f1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f1

    .line 424
    const-string v0, "LGMtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file already exists in beginSendObject: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_59} :catch_60
    .catchall {:try_start_27 .. :try_end_59} :catchall_ea

    .line 430
    if-eqz v8, :cond_5e

    .line 431
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_5e
    const/4 v0, -0x1

    goto :goto_1b

    .line 427
    :catch_60
    move-exception v9

    .line 428
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_61
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_ea

    .line 430
    if-eqz v8, :cond_6d

    .line 431
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 435
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_6d
    :goto_6d
    const/16 v0, 0x300b

    if-ne p2, v0, :cond_7f

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 436
    :cond_7f
    const/16 v0, 0x300b

    if-ne p2, v0, :cond_93

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".vob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 437
    :cond_91
    const/16 p2, 0x3000

    .line 441
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    .line 442
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 443
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    const-string v0, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v0, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    const-string v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 448
    const-string v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    :try_start_cd
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, v11}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 452
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_f8

    .line 453
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_cd .. :try_end_e7} :catch_fb

    move-result v0

    goto/16 :goto_1b

    .line 429
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v8    # "c":Landroid/database/Cursor;
    :catchall_ea
    move-exception v0

    .line 430
    if-eqz v8, :cond_f0

    .line 431
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 433
    :cond_f0
    throw v0

    .line 430
    :cond_f1
    if-eqz v8, :cond_6d

    .line 431
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6d

    .line 455
    .end local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_f8
    const/4 v0, -0x1

    goto/16 :goto_1b

    .line 457
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_fb
    move-exception v9

    .line 458
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    const/4 v0, -0x1

    goto/16 :goto_1b
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .registers 15
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 507
    if-ne p1, v0, :cond_54

    .line 509
    if-nez p2, :cond_33

    .line 511
    if-nez p3, :cond_25

    .line 513
    const/4 v4, 0x0

    .line 514
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x0

    .line 578
    .local v5, "whereArgs":[Ljava/lang/String;
    :goto_d
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 579
    if-nez v4, :cond_a6

    .line 580
    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 581
    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 599
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    move-object v7, v6

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 516
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_25
    if-ne p3, v0, :cond_28

    .line 518
    const/4 p3, 0x0

    .line 520
    :cond_28
    const-string v4, "parent=?"

    .line 521
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 523
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_d

    .line 525
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_33
    if-nez p3, :cond_40

    .line 527
    const-string v4, "format=?"

    .line 528
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 529
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_d

    .line 530
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_40
    if-ne p3, v0, :cond_43

    .line 532
    const/4 p3, 0x0

    .line 534
    :cond_43
    const-string v4, "format=? AND parent=?"

    .line 535
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 536
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 539
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_d

    .line 541
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_54
    if-nez p2, :cond_77

    .line 543
    if-nez p3, :cond_63

    .line 545
    const-string v4, "storage_id=?"

    .line 546
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 547
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_d

    .line 548
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_63
    if-ne p3, v0, :cond_66

    .line 550
    const/4 p3, 0x0

    .line 552
    :cond_66
    const-string v4, "storage_id=? AND parent=?"

    .line 553
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 554
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 556
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_d

    .line 558
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_77
    if-nez p3, :cond_8a

    .line 560
    const-string v4, "storage_id=? AND format=?"

    .line 561
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 562
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 563
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_d

    .line 564
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_8a
    if-ne p3, v0, :cond_8d

    .line 566
    const/4 p3, 0x0

    .line 568
    :cond_8d
    const-string v4, "storage_id=? AND format=? AND parent=?"

    .line 569
    .restart local v4    # "where":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 570
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 571
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .line 569
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_d

    .line 583
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 587
    array-length v0, v5

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v10, v0, [Ljava/lang/String;

    .line 589
    .local v10, "newWhereArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c7
    array-length v0, v5

    if-lt v8, v0, :cond_d3

    .line 592
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_cb
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-lt v9, v0, :cond_da

    .line 595
    move-object v5, v10

    goto/16 :goto_17

    .line 590
    .end local v9    # "j":I
    :cond_d3
    aget-object v0, v5, v8

    aput-object v0, v10, v8

    .line 589
    add-int/lit8 v8, v8, 0x1

    goto :goto_c7

    .line 593
    .restart local v9    # "j":I
    :cond_da
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v9

    aput-object v0, v10, v8

    .line 592
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_cb
.end method

.method private deleteFile(I)I
    .registers 16
    .param p1, "handle"    # I

    .prologue
    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    .line 1169
    const/4 v12, 0x0

    .line 1170
    .local v12, "path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1172
    .local v10, "format":I
    const/4 v8, 0x0

    .line 1174
    .local v8, "c":Landroid/database/Cursor;
    :try_start_6
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 1175
    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1174
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1176
    if-eqz v8, :cond_3e

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1179
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1180
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_31} :catch_fc
    .catchall {:try_start_6 .. :try_end_31} :catchall_116

    move-result v10

    .line 1185
    if-eqz v12, :cond_36

    if-nez v10, :cond_46

    .line 1223
    :cond_36
    if-eqz v8, :cond_3b

    .line 1224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1186
    :cond_3b
    const/16 v0, 0x2002

    .line 1221
    :goto_3d
    return v0

    .line 1223
    :cond_3e
    if-eqz v8, :cond_43

    .line 1224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1182
    :cond_43
    const/16 v0, 0x2009

    goto :goto_3d

    .line 1190
    :cond_46
    :try_start_46
    invoke-direct {p0, v12}, Landroid/mtp/LGMtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_fc
    .catchall {:try_start_46 .. :try_end_49} :catchall_116

    move-result v0

    if-eqz v0, :cond_54

    .line 1223
    if-eqz v8, :cond_51

    .line 1224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1191
    :cond_51
    const/16 v0, 0x200d

    goto :goto_3d

    .line 1194
    :cond_54
    const/16 v0, 0x3001

    if-ne v10, v0, :cond_a3

    .line 1196
    :try_start_58
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1197
    .local v13, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    .line 1200
    const-string v2, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    .line 1201
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1197
    invoke-interface {v0, v1, v13, v2, v3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1204
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_a3
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v13

    .line 1205
    .restart local v13    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v13, v2, v3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_10d

    .line 1206
    const/16 v0, 0x3001

    if-eq v10, v0, :cond_dd

    .line 1207
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/.nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_c5} :catch_fc
    .catchall {:try_start_58 .. :try_end_c5} :catchall_116

    move-result v0

    if-eqz v0, :cond_dd

    .line 1209
    const/4 v0, 0x0

    :try_start_c9
    const-string v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1210
    .local v11, "parentPath":Ljava/lang/String;
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v2, "unhide"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v11, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_dd} :catch_e6
    .catchall {:try_start_c9 .. :try_end_dd} :catchall_116

    .line 1223
    .end local v11    # "parentPath":Ljava/lang/String;
    :cond_dd
    :goto_dd
    if-eqz v8, :cond_e2

    .line 1224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1215
    :cond_e2
    const/16 v0, 0x2001

    goto/16 :goto_3d

    .line 1212
    :catch_e6
    move-exception v0

    :try_start_e7
    const-string v0, "LGMtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to unhide/rescan for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_fb} :catch_fc
    .catchall {:try_start_e7 .. :try_end_fb} :catchall_116

    goto :goto_dd

    .line 1219
    .end local v13    # "uri":Landroid/net/Uri;
    :catch_fc
    move-exception v9

    .line 1220
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_fd
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in deleteFile"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_104
    .catchall {:try_start_fd .. :try_end_104} :catchall_116

    .line 1223
    if-eqz v8, :cond_109

    .line 1224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1221
    :cond_109
    const/16 v0, 0x2002

    goto/16 :goto_3d

    .line 1223
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_10d
    if-eqz v8, :cond_112

    .line 1224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1217
    :cond_112
    const/16 v0, 0x2009

    goto/16 :goto_3d

    .line 1222
    .end local v13    # "uri":Landroid/net/Uri;
    :catchall_116
    move-exception v0

    .line 1223
    if-eqz v8, :cond_11c

    .line 1224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1226
    :cond_11c
    throw v0
.end method

.method private doMoveObject(III)I
    .registers 29
    .param p1, "handle"    # I
    .param p2, "storageID"    # I
    .param p3, "parent"    # I

    .prologue
    .line 1296
    const/16 v16, 0x0

    .line 1297
    .local v16, "c":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 1298
    .local v21, "path_handle":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 1299
    .local v7, "whereArgs":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1302
    .local v17, "curMime":Ljava/lang/String;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/LGMtpDatabase;->DATA_MIME_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v16

    .line 1303
    if-eqz v16, :cond_3c

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1304
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1305
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_3b} :catch_46
    .catchall {:try_start_10 .. :try_end_3b} :catchall_58

    move-result-object v17

    .line 1311
    :cond_3c
    if-eqz v16, :cond_41

    .line 1312
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1316
    :cond_41
    if-nez v21, :cond_5f

    .line 1317
    const/16 v2, 0x2009

    .line 1391
    :goto_45
    return v2

    .line 1307
    :catch_46
    move-exception v19

    .line 1308
    .local v19, "e":Landroid/os/RemoteException;
    :try_start_47
    const-string v2, "LGMtpDatabase"

    const-string v3, "RemoteException in getObjectFilePath"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_58

    .line 1311
    if-eqz v16, :cond_55

    .line 1312
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1309
    :cond_55
    const/16 v2, 0x2002

    goto :goto_45

    .line 1310
    .end local v19    # "e":Landroid/os/RemoteException;
    :catchall_58
    move-exception v2

    .line 1311
    if-eqz v16, :cond_5e

    .line 1312
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1314
    :cond_5e
    throw v2

    .line 1320
    :cond_5f
    const/16 v22, 0x0

    .line 1321
    .local v22, "path_parent":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v2

    .line 1323
    .local v13, "whereArgs_parent":[Ljava/lang/String;
    if-eqz p3, :cond_b5

    .line 1325
    :try_start_6d
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v11, Landroid/mtp/LGMtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v12, "_id=?"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v8 .. v15}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v16

    .line 1326
    if-eqz v16, :cond_92

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 1327
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_91} :catch_9c
    .catchall {:try_start_6d .. :try_end_91} :catchall_ae

    move-result-object v22

    .line 1333
    :cond_92
    if-eqz v16, :cond_97

    .line 1334
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1342
    :cond_97
    :goto_97
    if-nez v22, :cond_be

    .line 1343
    const/16 v2, 0x2009

    goto :goto_45

    .line 1329
    :catch_9c
    move-exception v19

    .line 1330
    .restart local v19    # "e":Landroid/os/RemoteException;
    :try_start_9d
    const-string v2, "LGMtpDatabase"

    const-string v3, "RemoteException in getObjectFilePath"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_ae

    .line 1333
    if-eqz v16, :cond_ab

    .line 1334
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1331
    :cond_ab
    const/16 v2, 0x2002

    goto :goto_45

    .line 1332
    .end local v19    # "e":Landroid/os/RemoteException;
    :catchall_ae
    move-exception v2

    .line 1333
    if-eqz v16, :cond_b4

    .line 1334
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1336
    :cond_b4
    throw v2

    .line 1339
    :cond_b5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/mtp/LGMtpDatabase;->getStoragePath(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_97

    .line 1348
    :cond_be
    const/4 v2, 0x0

    const/16 v3, 0x13

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1fe

    .line 1349
    new-instance v20, Ljava/io/File;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1350
    .local v20, "file":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    const-string v2, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v18, "dir":Ljava/io/File;
    const-string v2, "LGMtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rename "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v23

    .line 1353
    .local v23, "success":Z
    if-nez v23, :cond_135

    .line 1354
    const-string v2, "LGMtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to move = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const/16 v2, 0x2002

    goto/16 :goto_45

    .line 1358
    :cond_135
    const-string v2, "LGMtpDatabase"

    const-string v3, "Success to move"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1360
    .local v5, "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v2, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1363
    if-eqz v17, :cond_177

    .line 1364
    const-string v2, "bucket_id"

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1365
    const-string v2, "bucket_display_name"

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_177
    const/16 v24, 0x0

    .line 1371
    .local v24, "updated":I
    if-eqz v17, :cond_1a2

    :try_start_17b
    const-string v2, "image"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_194
    .catch Landroid/os/RemoteException; {:try_start_17b .. :try_end_194} :catch_1ef

    move-result v24

    .line 1384
    :goto_195
    if-nez v24, :cond_1fa

    .line 1385
    const-string v2, "LGMtpDatabase"

    const-string v3, "Unable to update path "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const/16 v2, 0x2002

    goto/16 :goto_45

    .line 1373
    :cond_1a2
    if-eqz v17, :cond_1bf

    :try_start_1a4
    const-string v2, "video"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 1375
    goto :goto_195

    :cond_1bf
    if-eqz v17, :cond_1dc

    const-string v2, "audio"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 1377
    goto :goto_195

    .line 1378
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v6, "_id=?"

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1ed
    .catch Landroid/os/RemoteException; {:try_start_1a4 .. :try_end_1ed} :catch_1ef

    move-result v24

    goto :goto_195

    .line 1381
    :catch_1ef
    move-exception v19

    .line 1382
    .restart local v19    # "e":Landroid/os/RemoteException;
    const-string v2, "LGMtpDatabase"

    const-string v3, "RemoteException in mMediaProvider.update"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_195

    .line 1388
    .end local v19    # "e":Landroid/os/RemoteException;
    :cond_1fa
    const/16 v2, 0x2001

    goto/16 :goto_45

    .line 1391
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v18    # "dir":Ljava/io/File;
    .end local v20    # "file":Ljava/io/File;
    .end local v23    # "success":Z
    .end local v24    # "updated":I
    :cond_1fe
    const/16 v2, 0x2005

    goto/16 :goto_45
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .registers 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I
    .param p4, "succeeded"    # Z

    .prologue
    .line 468
    if-eqz p4, :cond_76

    .line 471
    const v4, 0xba05

    if-ne p3, v4, :cond_6e

    .line 473
    move-object v2, p1

    .line 474
    .local v2, "name":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 475
    .local v1, "lastSlash":I
    if-ltz v1, :cond_16

    .line 476
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    :cond_16
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 480
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 483
    :cond_29
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 484
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 488
    const-string v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    :try_start_5b
    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    .line 491
    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 490
    invoke-interface {v4, v5, v6, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_64} :catch_65

    .line 501
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_64
    return-void

    .line 492
    .restart local v1    # "lastSlash":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :catch_65
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LGMtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 496
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_6e
    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_64

    .line 499
    :cond_76
    invoke-direct {p0, p2}, Landroid/mtp/LGMtpDatabase;->deleteFile(I)I

    goto :goto_64
.end method

.method private getDeviceProperty(I[J[C)I
    .registers 15
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .prologue
    .line 1004
    sparse-switch p1, :sswitch_data_c6

    .line 1054
    const/16 v8, 0x200a

    :goto_5
    return v8

    .line 1008
    :sswitch_6
    iget-object v8, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1009
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 1010
    .local v3, "length":I
    const/16 v8, 0xff

    if-le v3, v8, :cond_1c

    .line 1011
    const/16 v3, 0xff

    .line 1013
    :cond_1c
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v3, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1014
    const/4 v8, 0x0

    aput-char v8, p3, v3

    .line 1015
    const/16 v8, 0x2001

    goto :goto_5

    .line 1017
    .end local v3    # "length":I
    .end local v6    # "value":Ljava/lang/String;
    :sswitch_27
    const-string v8, "My LG Mobile"

    .line 1018
    const/4 v4, 0x0

    .line 1019
    .local v4, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 1020
    iget-object v8, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lg_device_name"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1025
    :goto_3c
    if-nez v4, :cond_40

    .line 1026
    const-string v4, "My LG Mobile"

    .line 1029
    :cond_40
    const-string v8, "ro.build.target_operator"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "VZW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 1030
    iget-object v8, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1033
    :cond_5a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 1034
    .local v5, "name_length":I
    const/16 v8, 0xff

    if-le v5, v8, :cond_64

    .line 1035
    const/16 v5, 0xff

    .line 1038
    :cond_64
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v5, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1039
    const/4 v8, 0x0

    aput-char v8, p3, v5

    .line 1040
    const/16 v8, 0x2001

    goto :goto_5

    .line 1022
    .end local v5    # "name_length":I
    :cond_6f
    iget-object v8, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lg_device_name"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3c

    .line 1044
    .end local v4    # "name":Ljava/lang/String;
    :sswitch_7c
    iget-object v8, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    .line 1045
    const-string v9, "window"

    .line 1044
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 1045
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1046
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v7

    .line 1047
    .local v7, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 1048
    .local v1, "height":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1049
    .local v2, "imageSize":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1050
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    aput-char v9, p3, v8

    .line 1051
    const/16 v8, 0x2001

    goto/16 :goto_5

    .line 1004
    nop

    :sswitch_data_c6
    .sparse-switch
        0x5003 -> :sswitch_7c
        0xd401 -> :sswitch_6
        0xd402 -> :sswitch_27
    .end sparse-switch
.end method

.method private getMediaScanner(Landroid/content/Context;)Landroid/media/MediaScanner;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    :try_start_0
    const-string v1, "com.lge.media.MediaScannerEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 270
    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 271
    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 275
    :goto_1e
    return-object v1

    .line 273
    :catch_1f
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LGMtpDatabase"

    const-string v2, "Error while loading MediaScannerEx."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    new-instance v1, Landroid/media/MediaScanner;

    invoke-direct {v1, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    goto :goto_1e
.end method

.method private getNumObjects(III)I
    .registers 8
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/LGMtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_27

    .line 653
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_11
    .catchall {:try_start_1 .. :try_end_a} :catchall_20

    move-result v2

    .line 658
    if-eqz v0, :cond_10

    .line 659
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_10
    :goto_10
    return v2

    .line 655
    :catch_11
    move-exception v1

    .line 656
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_12
    const-string v2, "LGMtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_20

    .line 658
    if-eqz v0, :cond_1e

    .line 659
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 662
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    const/4 v2, -0x1

    goto :goto_10

    .line 657
    :catchall_20
    move-exception v2

    .line 658
    if-eqz v0, :cond_26

    .line 659
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_26
    throw v2

    .line 658
    :cond_27
    if-eqz v0, :cond_1e

    .line 659
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1e
.end method

.method private getObjectFilePath(I[C[J)I
    .registers 16
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .prologue
    const/16 v11, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1113
    if-nez p1, :cond_23

    .line 1115
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1116
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, p2, v0

    .line 1117
    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    .line 1118
    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    move v0, v11

    .line 1139
    :goto_22
    return v0

    .line 1121
    :cond_23
    const/4 v8, 0x0

    .line 1123
    .local v8, "c":Landroid/database/Cursor;
    :try_start_24
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 1124
    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1123
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1125
    if-eqz v8, :cond_76

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1126
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1127
    .local v10, "path":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1128
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    .line 1131
    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    aput-wide v2, p3, v0

    .line 1132
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p3, v0
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_6f} :catch_7e
    .catchall {:try_start_24 .. :try_end_6f} :catchall_8e

    .line 1141
    if-eqz v8, :cond_74

    .line 1142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_74
    move v0, v11

    .line 1133
    goto :goto_22

    .line 1141
    .end local v10    # "path":Ljava/lang/String;
    :cond_76
    if-eqz v8, :cond_7b

    .line 1142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1135
    :cond_7b
    const/16 v0, 0x2009

    goto :goto_22

    .line 1137
    :catch_7e
    move-exception v9

    .line 1138
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_7f
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8e

    .line 1141
    if-eqz v8, :cond_8b

    .line 1142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1139
    :cond_8b
    const/16 v0, 0x2002

    goto :goto_22

    .line 1140
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_8e
    move-exception v0

    .line 1141
    if-eqz v8, :cond_94

    .line 1142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1144
    :cond_94
    throw v0
.end method

.method private getObjectFormat(I)I
    .registers 13
    .param p1, "handle"    # I

    .prologue
    const/4 v10, -0x1

    .line 1148
    const/4 v8, 0x0

    .line 1150
    .local v8, "c":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    .line 1151
    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1150
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1152
    if-eqz v8, :cond_2f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1153
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_28} :catch_36
    .catchall {:try_start_2 .. :try_end_28} :catchall_45

    move-result v0

    .line 1161
    if-eqz v8, :cond_2e

    .line 1162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1159
    :cond_2e
    :goto_2e
    return v0

    .line 1161
    :cond_2f
    if-eqz v8, :cond_34

    .line 1162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_34
    move v0, v10

    .line 1155
    goto :goto_2e

    .line 1157
    :catch_36
    move-exception v9

    .line 1158
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_37
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_45

    .line 1161
    if-eqz v8, :cond_43

    .line 1162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_43
    move v0, v10

    .line 1159
    goto :goto_2e

    .line 1160
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_45
    move-exception v0

    .line 1161
    if-eqz v8, :cond_4b

    .line 1162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1164
    :cond_4b
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .registers 21
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .prologue
    .line 1074
    const/4 v10, 0x0

    .line 1076
    .local v10, "c":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/LGMtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 1077
    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1076
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1078
    if-eqz v10, :cond_a5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1079
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, p2, v2

    .line 1080
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, p2, v2

    .line 1081
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, p2, v2

    .line 1084
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1085
    .local v14, "path":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 1086
    .local v13, "lastSlash":I
    if-ltz v13, :cond_8d

    add-int/lit8 v15, v13, 0x1

    .line 1087
    .local v15, "start":I
    :goto_50
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    .line 1088
    .local v12, "end":I
    sub-int v2, v12, v15

    const/16 v3, 0xff

    if-le v2, v3, :cond_5c

    .line 1089
    add-int/lit16 v12, v15, 0xff

    .line 1091
    :cond_5c
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v14, v15, v12, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1092
    sub-int v2, v12, v15

    const/4 v3, 0x0

    aput-char v3, p3, v2

    .line 1094
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, p4, v2

    .line 1095
    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, p4, v2

    .line 1097
    const/4 v2, 0x0

    aget-wide v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_86

    .line 1098
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v4, p4, v3

    aput-wide v4, p4, v2
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_86} :catch_8f
    .catchall {:try_start_1 .. :try_end_86} :catchall_9e

    .line 1105
    :cond_86
    if-eqz v10, :cond_8b

    .line 1106
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1100
    :cond_8b
    const/4 v2, 0x1

    .line 1109
    .end local v12    # "end":I
    .end local v13    # "lastSlash":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "start":I
    :goto_8c
    return v2

    .line 1086
    .restart local v13    # "lastSlash":I
    .restart local v14    # "path":Ljava/lang/String;
    :cond_8d
    const/4 v15, 0x0

    goto :goto_50

    .line 1102
    .end local v13    # "lastSlash":I
    .end local v14    # "path":Ljava/lang/String;
    :catch_8f
    move-exception v11

    .line 1103
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_90
    const-string v2, "LGMtpDatabase"

    const-string v3, "RemoteException in getObjectInfo"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_9e

    .line 1105
    if-eqz v10, :cond_9c

    .line 1106
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1109
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_9c
    :goto_9c
    const/4 v2, 0x0

    goto :goto_8c

    .line 1104
    :catchall_9e
    move-exception v2

    .line 1105
    if-eqz v10, :cond_a4

    .line 1106
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1108
    :cond_a4
    throw v2

    .line 1105
    :cond_a5
    if-eqz v10, :cond_9c

    .line 1106
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_9c
.end method

.method private getObjectList(III)[I
    .registers 15
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 604
    const/4 v0, 0x0

    .line 607
    .local v0, "c":Landroid/database/Cursor;
    iget-boolean v8, p0, Landroid/mtp/LGMtpDatabase;->mInstalledLGAirDrive:Z

    if-eqz v8, :cond_55

    iget-boolean v8, p0, Landroid/mtp/LGMtpDatabase;->mFirstCallGetObjectList:Z

    if-eqz v8, :cond_55

    .line 608
    iput-boolean v10, p0, Landroid/mtp/LGMtpDatabase;->mFirstCallGetObjectList:Z

    .line 609
    iget-object v8, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 610
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    const-string v9, "count"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 611
    .local v1, "count":I
    add-int/lit8 v1, v1, 0x1

    .line 612
    const/4 v8, 0x1

    if-eq v1, v8, :cond_23

    const/4 v8, 0x3

    if-ne v1, v8, :cond_4d

    .line 613
    :cond_23
    const-string v8, "LGMtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sendBroadcast mtp used : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 615
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "com.lge.android.intent.action.MTP_FILE_USE_COUNT"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string v8, "com.lge.intent.extra.MTP_FILE_USE_COUNT"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    iget-object v8, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 619
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4d
    const-string v8, "count"

    invoke-interface {v3, v8, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 620
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 625
    .end local v1    # "count":I
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_55
    :try_start_55
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/LGMtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_58} :catch_80
    .catchall {:try_start_55 .. :try_end_58} :catchall_8f

    move-result-object v0

    .line 626
    if-nez v0, :cond_62

    .line 641
    if-eqz v0, :cond_60

    .line 642
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_60
    move-object v6, v7

    .line 645
    :cond_61
    :goto_61
    return-object v6

    .line 629
    :cond_62
    :try_start_62
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 630
    .restart local v1    # "count":I
    if-lez v1, :cond_96

    .line 631
    new-array v6, v1, [I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6a} :catch_80
    .catchall {:try_start_62 .. :try_end_6a} :catchall_8f

    .line 632
    .local v6, "result":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6b
    if-lt v4, v1, :cond_73

    .line 641
    if-eqz v0, :cond_61

    .line 642
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_61

    .line 633
    :cond_73
    :try_start_73
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 634
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    aput v8, v6, v4
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7d} :catch_80
    .catchall {:try_start_73 .. :try_end_7d} :catchall_8f

    .line 632
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 638
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v6    # "result":[I
    :catch_80
    move-exception v2

    .line 639
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_81
    const-string v8, "LGMtpDatabase"

    const-string v9, "RemoteException in getObjectList"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_8f

    .line 641
    if-eqz v0, :cond_8d

    .line 642
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_8d
    :goto_8d
    move-object v6, v7

    .line 645
    goto :goto_61

    .line 640
    :catchall_8f
    move-exception v7

    .line 641
    if-eqz v0, :cond_95

    .line 642
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_95
    throw v7

    .line 641
    .restart local v1    # "count":I
    :cond_96
    if-eqz v0, :cond_8d

    .line 642
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_8d
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .registers 15
    .param p1, "handle"    # J
    .param p3, "format"    # I
    .param p4, "property"    # J
    .param p6, "groupCode"    # I
    .param p7, "depth"    # I

    .prologue
    const/4 v4, 0x0

    .line 868
    if-eqz p6, :cond_c

    .line 869
    new-instance v1, Landroid/mtp/MtpPropertyList;

    const v2, 0xa807

    invoke-direct {v1, v4, v2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 896
    :goto_b
    return-object v1

    .line 873
    :cond_c
    const-wide v2, 0xffffffffL

    cmp-long v1, p4, v2

    if-nez v1, :cond_50

    .line 874
    if-nez p3, :cond_22

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_22

    .line 876
    long-to-int v1, p1

    invoke-direct {p0, v1}, Landroid/mtp/LGMtpDatabase;->getObjectFormat(I)I

    move-result p3

    .line 878
    :cond_22
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/LGMtpPropertyGroup;

    .line 879
    .local v0, "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    if-nez v0, :cond_4a

    .line 880
    invoke-direct {p0, p3}, Landroid/mtp/LGMtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v5

    .line 881
    .local v5, "propertyList":[I
    new-instance v0, Landroid/mtp/LGMtpPropertyGroup;

    .end local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    .line 882
    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    .line 881
    invoke-direct/range {v0 .. v5}, Landroid/mtp/LGMtpPropertyGroup;-><init>(Landroid/mtp/LGMtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 883
    .restart local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    .end local v5    # "propertyList":[I
    :cond_4a
    :goto_4a
    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p7}, Landroid/mtp/LGMtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v1

    goto :goto_b

    .line 886
    .end local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    :cond_50
    new-instance v6, Ljava/lang/Integer;

    long-to-int v1, p4

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 887
    .local v6, "propertyValue":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/LGMtpPropertyGroup;

    .line 888
    .restart local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    if-nez v0, :cond_4a

    .line 889
    const/4 v1, 0x1

    new-array v5, v1, [I

    long-to-int v1, p4

    aput v1, v5, v4

    .line 890
    .restart local v5    # "propertyList":[I
    new-instance v0, Landroid/mtp/LGMtpPropertyGroup;

    .end local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    .line 891
    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    .line 890
    invoke-direct/range {v0 .. v5}, Landroid/mtp/LGMtpPropertyGroup;-><init>(Landroid/mtp/LGMtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 892
    .restart local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a
.end method

.method private getObjectReferences(I)[I
    .registers 16
    .param p1, "handle"    # I

    .prologue
    const/4 v13, 0x0

    .line 1230
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 1231
    .local v2, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1233
    .local v8, "c":Landroid/database/Cursor;
    :try_start_9
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_3e
    .catchall {:try_start_9 .. :try_end_16} :catchall_4d

    move-result-object v8

    .line 1234
    if-nez v8, :cond_20

    .line 1249
    if-eqz v8, :cond_1e

    .line 1250
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1e
    move-object v12, v13

    .line 1253
    :cond_1f
    :goto_1f
    return-object v12

    .line 1237
    :cond_20
    :try_start_20
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1238
    .local v9, "count":I
    if-lez v9, :cond_54

    .line 1239
    new-array v12, v9, [I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_3e
    .catchall {:try_start_20 .. :try_end_28} :catchall_4d

    .line 1240
    .local v12, "result":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_29
    if-lt v11, v9, :cond_31

    .line 1249
    if-eqz v8, :cond_1f

    .line 1250
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1f

    .line 1241
    :cond_31
    :try_start_31
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1242
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v12, v11
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3b} :catch_3e
    .catchall {:try_start_31 .. :try_end_3b} :catchall_4d

    .line 1240
    add-int/lit8 v11, v11, 0x1

    goto :goto_29

    .line 1246
    .end local v9    # "count":I
    .end local v11    # "i":I
    .end local v12    # "result":[I
    :catch_3e
    move-exception v10

    .line 1247
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_3f
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in getObjectList"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4d

    .line 1249
    if-eqz v8, :cond_4b

    .line 1250
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    move-object v12, v13

    .line 1253
    goto :goto_1f

    .line 1248
    :catchall_4d
    move-exception v0

    .line 1249
    if-eqz v8, :cond_53

    .line 1250
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1252
    :cond_53
    throw v0

    .line 1249
    .restart local v9    # "count":I
    :cond_54
    if-eqz v8, :cond_4b

    .line 1250
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4b
.end method

.method private getStoragePath(I)Ljava/lang/String;
    .registers 8
    .param p1, "storageID"    # I

    .prologue
    .line 1473
    const/4 v2, 0x0

    .line 1475
    .local v2, "storagePath":Ljava/lang/String;
    iget-object v3, p0, Landroid/mtp/LGMtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1486
    :goto_11
    return-object v2

    .line 1475
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1476
    .local v1, "storageKey":Ljava/lang/String;
    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    .line 1478
    .local v0, "storage":Landroid/mtp/MtpStorage;
    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v4

    if-ne v4, p1, :cond_b

    .line 1480
    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1481
    const-string v3, "LGMtpDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : return storagePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private getSupportedCaptureFormats()[I
    .registers 2

    .prologue
    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .registers 2

    .prologue
    .line 856
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .registers 3
    .param p1, "format"    # I

    .prologue
    .line 829
    sparse-switch p1, :sswitch_data_10

    .line 851
    sget-object v0, Landroid/mtp/LGMtpDatabase;->FILE_PROPERTIES:[I

    :goto_5
    return-object v0

    .line 835
    :sswitch_6
    sget-object v0, Landroid/mtp/LGMtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_5

    .line 844
    :sswitch_9
    sget-object v0, Landroid/mtp/LGMtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_5

    .line 849
    :sswitch_c
    sget-object v0, Landroid/mtp/LGMtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_5

    .line 829
    nop

    :sswitch_data_10
    .sparse-switch
        0x3008 -> :sswitch_6
        0x3009 -> :sswitch_6
        0x300a -> :sswitch_9
        0x300b -> :sswitch_9
        0x300c -> :sswitch_9
        0x3801 -> :sswitch_c
        0x3804 -> :sswitch_c
        0x3807 -> :sswitch_c
        0x380b -> :sswitch_c
        0xb901 -> :sswitch_6
        0xb902 -> :sswitch_6
        0xb903 -> :sswitch_6
        0xb982 -> :sswitch_9
        0xb984 -> :sswitch_9
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .registers 2

    .prologue
    .line 666
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3804
        0x3807
        0x380b
        0xb901
        0xb902
        0xb903
        0xb982
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x300a
        0x300c
        0xba83
        0xba85
        0xba86
    .end array-data
.end method

.method private getThumbnailData(I[B[I)I
    .registers 22
    .param p1, "handle"    # I
    .param p2, "outData"    # [B
    .param p3, "length"    # [I

    .prologue
    .line 1399
    const/4 v10, 0x0

    .line 1401
    .local v10, "c":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/LGMtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 1402
    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1401
    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1404
    if-eqz v10, :cond_b4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 1405
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1406
    .local v17, "path":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1408
    .local v14, "format":I
    const/4 v15, 0x0

    .line 1409
    .local v15, "getData":Z
    const/4 v9, 0x0

    .line 1410
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 1412
    .local v11, "data":[B
    const/16 v1, 0x3801

    if-eq v14, v1, :cond_46

    .line 1413
    const/16 v1, 0x380b

    if-eq v14, v1, :cond_46

    .line 1414
    const/16 v1, 0x3804

    if-eq v14, v1, :cond_46

    .line 1415
    const/16 v1, 0x3807

    if-ne v14, v1, :cond_7e

    .line 1417
    :cond_46
    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1422
    :goto_4d
    if-eqz v9, :cond_68

    .line 1423
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1424
    .local v16, "miniOutStream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    move-object/from16 v0, v16

    invoke-virtual {v9, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1425
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_60} :catch_9c
    .catchall {:try_start_1 .. :try_end_60} :catchall_bc

    .line 1427
    :try_start_60
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1428
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_66} :catch_86
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_66} :catch_9c
    .catchall {:try_start_60 .. :try_end_66} :catchall_bc

    move-result-object v11

    .line 1429
    const/4 v15, 0x1

    .line 1435
    .end local v16    # "miniOutStream":Ljava/io/ByteArrayOutputStream;
    :cond_68
    :goto_68
    if-eqz v15, :cond_ac

    .line 1436
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6c
    array-length v3, v11

    move-object/from16 v0, p2

    invoke-static {v11, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1437
    const/4 v1, 0x0

    array-length v2, v11

    aput v2, p3, v1
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_76} :catch_9c
    .catchall {:try_start_6c .. :try_end_76} :catchall_bc

    .line 1450
    if-eqz v10, :cond_7b

    .line 1451
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1439
    :cond_7b
    const/16 v1, 0x2001

    .line 1448
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "data":[B
    .end local v14    # "format":I
    .end local v15    # "getData":Z
    .end local v17    # "path":Ljava/lang/String;
    :goto_7d
    return v1

    .line 1419
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "data":[B
    .restart local v14    # "format":I
    .restart local v15    # "getData":Z
    .restart local v17    # "path":Ljava/lang/String;
    :cond_7e
    const/4 v1, 0x3

    :try_start_7f
    move-object/from16 v0, v17

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_4d

    .line 1430
    .restart local v16    # "miniOutStream":Ljava/io/ByteArrayOutputStream;
    :catch_86
    move-exception v13

    .line 1431
    .local v13, "ex":Ljava/io/IOException;
    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "got exception ex "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_9b} :catch_9c
    .catchall {:try_start_7f .. :try_end_9b} :catchall_bc

    goto :goto_68

    .line 1446
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "data":[B
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v14    # "format":I
    .end local v15    # "getData":Z
    .end local v16    # "miniOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "path":Ljava/lang/String;
    :catch_9c
    move-exception v12

    .line 1447
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_9d
    const-string v1, "LGMtpDatabase"

    const-string v2, "RemoteException in getThumbnailData"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_bc

    .line 1450
    if-eqz v10, :cond_a9

    .line 1451
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1448
    :cond_a9
    const/16 v1, 0x2002

    goto :goto_7d

    .line 1450
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "data":[B
    .restart local v14    # "format":I
    .restart local v15    # "getData":Z
    .restart local v17    # "path":Ljava/lang/String;
    :cond_ac
    if-eqz v10, :cond_b1

    .line 1451
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1441
    :cond_b1
    const/16 v1, 0x2009

    goto :goto_7d

    .line 1450
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "data":[B
    .end local v14    # "format":I
    .end local v15    # "getData":Z
    .end local v17    # "path":Ljava/lang/String;
    :cond_b4
    if-eqz v10, :cond_b9

    .line 1451
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1444
    :cond_b9
    const/16 v1, 0x2009

    goto :goto_7d

    .line 1449
    :catchall_bc
    move-exception v1

    .line 1450
    if-eqz v10, :cond_c2

    .line 1451
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1453
    :cond_c2
    throw v1
.end method

.method private inStorageRoot(Ljava/lang/String;)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 389
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "canonical":Ljava/lang/String;
    iget-object v3, p0, Landroid/mtp/LGMtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 399
    .end local v0    # "canonical":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    :goto_19
    const/4 v3, 0x0

    :goto_1a
    return v3

    .line 391
    .restart local v0    # "canonical":Ljava/lang/String;
    .restart local v1    # "f":Ljava/io/File;
    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 392
    .local v2, "root":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_29

    move-result v4

    if-eqz v4, :cond_13

    .line 393
    const/4 v3, 0x1

    goto :goto_1a

    .end local v0    # "canonical":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "root":Ljava/lang/String;
    :catch_29
    move-exception v3

    goto :goto_19
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_6

    const/4 v0, 0x1

    .line 367
    :cond_5
    :goto_5
    return v0

    .line 354
    :cond_6
    if-nez p1, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    .line 356
    :cond_a
    const/4 v0, 0x0

    .line 357
    .local v0, "allowed":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 358
    .local v2, "pathLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    if-nez v0, :cond_5

    .line 359
    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 360
    .local v3, "subdir":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 361
    .local v4, "subdirLength":I
    if-ge v4, v2, :cond_30

    .line 362
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_30

    .line 363
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 364
    const/4 v0, 0x1

    .line 358
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 312
    const-string v1, "device-properties"

    .line 313
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 314
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 316
    .local v9, "databaseFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 322
    .local v8, "c":Landroid/database/Cursor;
    :try_start_19
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_51

    .line 324
    const-string v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "value"

    aput-object v4, v2, v3

    .line 325
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 324
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 326
    if-eqz v8, :cond_51

    .line 327
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 328
    .local v10, "e":Landroid/content/SharedPreferences$Editor;
    :goto_48
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_61

    .line 333
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_51} :catch_6f
    .catchall {:try_start_19 .. :try_end_51} :catchall_82

    .line 339
    .end local v10    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_51
    if-eqz v8, :cond_56

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_56
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 342
    :cond_5b
    :goto_5b
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 344
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_60
    return-void

    .line 329
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_61
    const/4 v1, 0x1

    :try_start_62
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 330
    .local v11, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 331
    .local v12, "value":Ljava/lang/String;
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6e} :catch_6f
    .catchall {:try_start_62 .. :try_end_6e} :catchall_82

    goto :goto_48

    .line 336
    .end local v10    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :catch_6f
    move-exception v10

    .line 337
    .local v10, "e":Ljava/lang/Exception;
    :try_start_70
    const-string v1, "LGMtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_82

    .line 339
    if-eqz v8, :cond_7c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_7c
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_5b

    .line 338
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_82
    move-exception v1

    .line 339
    if-eqz v8, :cond_88

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_88
    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 341
    :cond_8d
    throw v1
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1459
    const/4 v0, 0x0

    .line 1461
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_c} :catch_11

    move-result-object v0

    .line 1465
    :goto_d
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .line 1463
    :catch_11
    move-exception v2

    const-string v2, "LGMtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_6

    .line 383
    :cond_5
    :goto_5
    return v1

    .line 378
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 379
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 380
    const/4 v1, 0x1

    goto :goto_5

    .line 378
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .registers 21
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 900
    const/4 v9, 0x0

    .line 903
    .local v9, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 904
    .local v15, "path":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 906
    .local v6, "whereArgs":[Ljava/lang/String;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/LGMtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    .line 907
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 906
    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 908
    if-eqz v9, :cond_2f

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 909
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2e} :catch_39
    .catchall {:try_start_c .. :try_end_2e} :catchall_49

    move-result-object v15

    .line 915
    :cond_2f
    if-eqz v9, :cond_34

    .line 916
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 919
    :cond_34
    if-nez v15, :cond_50

    .line 920
    const/16 v1, 0x2009

    .line 989
    :goto_38
    return v1

    .line 911
    :catch_39
    move-exception v10

    .line 912
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_3a
    const-string v1, "LGMtpDatabase"

    const-string v2, "RemoteException in getObjectFilePath"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_49

    .line 915
    if-eqz v9, :cond_46

    .line 916
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 913
    :cond_46
    const/16 v1, 0x2002

    goto :goto_38

    .line 914
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_49
    move-exception v1

    .line 915
    if-eqz v9, :cond_4f

    .line 916
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 918
    :cond_4f
    throw v1

    .line 924
    :cond_50
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/mtp/LGMtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 925
    const/16 v1, 0x200d

    goto :goto_38

    .line 929
    :cond_5b
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    .local v14, "oldFile":Ljava/io/File;
    const/16 v1, 0x2f

    invoke-virtual {v15, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 931
    .local v11, "lastSlash":I
    const/4 v1, 0x1

    if-gt v11, v1, :cond_6c

    .line 932
    const/16 v1, 0x2002

    goto :goto_38

    .line 934
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 935
    .local v13, "newPath":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-lt v1, v2, :cond_95

    .line 936
    const/4 v1, 0x0

    const/16 v2, 0xfe

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 938
    :cond_95
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 939
    .local v12, "newFile":Ljava/io/File;
    invoke-virtual {v14, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v16

    .line 940
    .local v16, "success":Z
    if-nez v16, :cond_c8

    .line 941
    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "renaming "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/16 v1, 0x2002

    goto/16 :goto_38

    .line 946
    :cond_c8
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 947
    .local v4, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v4, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v1, "_display_name"

    move-object/from16 v0, p2

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/16 v17, 0x0

    .line 955
    .local v17, "updated":I
    :try_start_db
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v5, "_id=?"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_db .. :try_end_ec} :catch_114

    move-result v17

    .line 959
    :goto_ed
    if-nez v17, :cond_11d

    .line 960
    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to update path for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 963
    const/16 v1, 0x2002

    goto/16 :goto_38

    .line 956
    :catch_114
    move-exception v10

    .line 957
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v1, "LGMtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ed

    .line 967
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_11d
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 969
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_145

    const-string v1, "."

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_145

    .line 972
    :try_start_137
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v3, "unhide"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v13, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_145
    .catch Landroid/os/RemoteException; {:try_start_137 .. :try_end_145} :catch_149

    .line 989
    :cond_145
    :goto_145
    const/16 v1, 0x2001

    goto/16 :goto_38

    .line 974
    :catch_149
    move-exception v1

    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to unhide/rescan for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_145

    .line 979
    :cond_15f
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 980
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_145

    .line 982
    :try_start_17f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v3, "unhide"

    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v1, v2, v3, v5, v7}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_191
    .catch Landroid/os/RemoteException; {:try_start_17f .. :try_end_191} :catch_192

    goto :goto_145

    .line 984
    :catch_192
    move-exception v1

    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to unhide/rescan for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_145
.end method

.method private sessionEnded()V
    .registers 4

    .prologue
    .line 1282
    iget-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_13

    .line 1283
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1284
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    .line 1288
    :cond_13
    iget-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mInstalledLGAirDrive:Z

    if-eqz v0, :cond_21

    .line 1289
    const-string v0, "LGMtpDatabase"

    const-string v1, "session ended. clear flag for checking getObjectList method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mFirstCallGetObjectList:Z

    .line 1293
    :cond_21
    return-void
.end method

.method private sessionStarted()V
    .registers 2

    .prologue
    .line 1277
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    .line 1278
    const-string v0, "com.lge.remote.lgairdrive"

    invoke-direct {p0, v0}, Landroid/mtp/LGMtpDatabase;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mInstalledLGAirDrive:Z

    .line 1279
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .registers 7
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1059
    packed-switch p1, :pswitch_data_20

    .line 1069
    const/16 v1, 0x200a

    :goto_5
    return v1

    .line 1063
    :pswitch_6
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1064
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1065
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0x2001

    goto :goto_5

    .line 1066
    :cond_1c
    const/16 v1, 0x2002

    goto :goto_5

    .line 1059
    nop

    :pswitch_data_20
    .packed-switch 0xd401
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .registers 7
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 994
    packed-switch p2, :pswitch_data_c

    .line 999
    const v0, 0xa80a

    :goto_6
    return v0

    .line 996
    :pswitch_7
    invoke-direct {p0, p1, p5}, Landroid/mtp/LGMtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 994
    :pswitch_data_c
    .packed-switch 0xdc07
        :pswitch_7
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .registers 13
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .prologue
    .line 1257
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    .line 1258
    iget-object v6, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v8, p1

    invoke-static {v6, v8, v9}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1259
    .local v3, "uri":Landroid/net/Uri;
    array-length v0, p2

    .line 1260
    .local v0, "count":I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1261
    .local v5, "valuesList":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-lt v2, v0, :cond_1d

    .line 1267
    :try_start_10
    iget-object v6, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v7, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    invoke-interface {v6, v7, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_32

    move-result v6

    if-lez v6, :cond_3a

    .line 1268
    const/16 v6, 0x2001

    .line 1273
    :goto_1c
    return v6

    .line 1262
    :cond_1d
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1263
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1264
    aput-object v4, v5, v2

    .line 1261
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1270
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_32
    move-exception v1

    .line 1271
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "LGMtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1273
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3a
    const/16 v6, 0x2002

    goto :goto_1c
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .registers 4
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 297
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method public callFinalize()V
    .registers 1

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/mtp/LGMtpDatabase;->native_finalize()V

    .line 265
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 289
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 291
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .registers 4
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 304
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public setServer(Landroid/mtp/LGMtpServer;)V
    .registers 6
    .param p1, "server"    # Landroid/mtp/LGMtpServer;

    .prologue
    .line 247
    iput-object p1, p0, Landroid/mtp/LGMtpDatabase;->mServer:Landroid/mtp/LGMtpServer;

    .line 251
    :try_start_2
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_1a

    .line 257
    :goto_9
    if-eqz p1, :cond_19

    .line 258
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    :cond_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_9
.end method
