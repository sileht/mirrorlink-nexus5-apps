.class public Lcom/lge/cic/eden/db/table/MediaInfoTable;
.super Ljava/lang/Object;
.source "MediaInfoTable.java"

# interfaces
.implements Lcom/lge/cic/eden/db/table/TableInfo;


# static fields
.field public static final ACTIVITY_ID:Ljava/lang/String; = "ACTIVITY_ID"

.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field public static final BUCKET_ID:Ljava/lang/String; = "BUCKET_ID"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "CONTENT_TYPE"

.field public static final DATE_MODIFIED:Ljava/lang/String; = "DATE_MODIFIED"

.field public static final DATE_TAKEN:Ljava/lang/String; = "DATE_TAKEN"

.field public static final DELETE_FLAG:Ljava/lang/String; = "DELETE_FLAG"

.field public static final FILE_PATH:Ljava/lang/String; = "FILE_PATH"

.field public static final HEIGHT:Ljava/lang/String; = "HEIGHT"

.field public static final IS_FAVORITE:Ljava/lang/String; = "IS_FAVORITE"

.field public static final LATITUDE:Ljava/lang/String; = "LATITUDE"

.field public static final LONGITUDE:Ljava/lang/String; = "LONGITUDE"

.field public static final MEDIA_ID:Ljava/lang/String; = "MEDIA_ID"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "MEDIA_TYPE"

.field public static final MIME_TYPE:Ljava/lang/String; = "MIME_TYPE"

.field public static final ORIENTATION:Ljava/lang/String; = "ORIENTATION"

.field public static final PHOTO_NICENESSSCORE:Ljava/lang/String; = "PHOTO_NICENESSSCORE"

.field public static final PHOTO_STATE:Ljava/lang/String; = "PHOTO_STATE"

.field public static final REPRESENTATIVE_ID:Ljava/lang/String; = "REPRESENTATIVE_ID"

.field public static final ROI_POINT:Ljava/lang/String; = "ROI_POINT"

.field public static final SCENE_TYPE:Ljava/lang/String; = "SCENE_TYPE"

.field public static final SET_TIME_DELETE_FLAG:Ljava/lang/String; = "SET_TIME_DELETE_FLAG"

.field public static final SIMILAR_COUNT:Ljava/lang/String; = "SIMILAR_COUNT"

.field public static final SIZE:Ljava/lang/String; = "SIZE"

.field public static final STORAGE_ID:Ljava/lang/String; = "STORAGE_ID"

.field public static final TABLE_NAME:Ljava/lang/String; = "MEDIA_INFO"

.field public static final TABLE_URI:Landroid/net/Uri;

.field public static final TITLE:Ljava/lang/String; = "TITLE"

.field public static final VISIBILITY_TYPE:Ljava/lang/String; = "VISIBILITY_TYPE"

.field public static final WIDTH:Ljava/lang/String; = "WIDTH"

.field public static final columnList:[Ljava/lang/String;

.field private static final instance:Lcom/lge/cic/eden/utils/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/cic/eden/utils/Singleton",
            "<",
            "Lcom/lge/cic/eden/db/table/TableInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final primaryColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    const-string v0, "content://com.lge.cic.eden.provider/MediaInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    .line 43
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    .line 44
    const-string v1, "MEDIA_ID"

    aput-object v1, v0, v3

    .line 45
    const-string v1, "ACTIVITY_ID"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 46
    const-string v2, "CONTENT_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 47
    const-string v2, "FILE_PATH"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 48
    const-string v2, "DATE_TAKEN"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 49
    const-string v2, "DATE_MODIFIED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 50
    const-string v2, "MIME_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 51
    const-string v2, "TITLE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 52
    const-string v2, "LATITUDE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 53
    const-string v2, "LONGITUDE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 54
    const-string v2, "ORIENTATION"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 55
    const-string v2, "BUCKET_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 56
    const-string v2, "MEDIA_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 57
    const-string v2, "WIDTH"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 58
    const-string v2, "HEIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 59
    const-string v2, "STORAGE_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 60
    const-string v2, "IS_FAVORITE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 61
    const-string v2, "SIZE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 63
    const-string v2, "REPRESENTATIVE_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 64
    const-string v2, "SIMILAR_COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 65
    const-string v2, "SCENE_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 66
    const-string v2, "PHOTO_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 67
    const-string v2, "VISIBILITY_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 68
    const-string v2, "PHOTO_NICENESSSCORE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 69
    const-string v2, "ROI_POINT"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 71
    const-string v2, "DELETE_FLAG"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 72
    const-string v2, "SET_TIME_DELETE_FLAG"

    aput-object v2, v0, v1

    .line 43
    sput-object v0, Lcom/lge/cic/eden/db/table/MediaInfoTable;->columnList:[Ljava/lang/String;

    .line 75
    new-array v0, v4, [Ljava/lang/String;

    .line 76
    const-string v1, "MEDIA_ID"

    aput-object v1, v0, v3

    .line 75
    sput-object v0, Lcom/lge/cic/eden/db/table/MediaInfoTable;->primaryColumns:[Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/lge/cic/eden/db/table/MediaInfoTable$1;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/table/MediaInfoTable$1;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/table/MediaInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    .line 86
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static get()Lcom/lge/cic/eden/db/table/TableInfo;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/lge/cic/eden/db/table/MediaInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    invoke-virtual {v0}, Lcom/lge/cic/eden/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    return-object v0
.end method


# virtual methods
.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    sget-object v0, Lcom/lge/cic/eden/db/table/MediaInfoTable;->columnList:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreateStatement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "MEDIA_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "MEDIA_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "FILE_PATH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "DATE_TAKEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "DATE_MODIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "MIME_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "LATITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "LONGITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "BUCKET_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "MEDIA_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "WIDTH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "HEIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "STORAGE_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "IS_FAVORITE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "SIZE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "REPRESENTATIVE_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "SIMILAR_COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "SCENE_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "PHOTO_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "VISIBILITY_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "PHOTO_NICENESSSCORE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FLOAT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "ROI_POINT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, "DELETE_FLAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "SET_TIME_DELETE_FLAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "PRIMARY KEY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MEDIA_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, "FOREIGN KEY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ACTIVITY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, ") REFERENCES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ACTIVITY_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ACTIVITY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDropStatement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    const-string v0, "DROP TABLE IF EXISTS MEDIA_INFO"

    return-object v0
.end method

.method public getPrimaryColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lcom/lge/cic/eden/db/table/MediaInfoTable;->primaryColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const-string v0, "MEDIA_INFO"

    return-object v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 112
    sget-object v0, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    return-object v0
.end method
