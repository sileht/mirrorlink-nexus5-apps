.class public Lcom/lge/cic/eden/db/table/ActivityInfoTable;
.super Ljava/lang/Object;
.source "ActivityInfoTable.java"

# interfaces
.implements Lcom/lge/cic/eden/db/table/TableInfo;


# static fields
.field public static final ACTIVITYINFO_URI:Landroid/net/Uri;

.field public static final ACTIVITY_ID:Ljava/lang/String; = "ACTIVITY_ID"

.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field public static final DELETE_FLAG:Ljava/lang/String; = "A_DELETE_FLAG"

.field public static final END_LATITUDE:Ljava/lang/String; = "A_END_LATITUDE"

.field public static final END_LONGITUDE:Ljava/lang/String; = "A_END_LONGITUDE"

.field public static final END_TIME:Ljava/lang/String; = "A_END_TIME"

.field public static final GEOADMINAREA:Ljava/lang/String; = "A_GEOADMINAREA"

.field public static final GEOCOUNTRYNAME:Ljava/lang/String; = "A_GEOCOUNTRYNAME"

.field public static final GEOLOCALITY:Ljava/lang/String; = "A_GEOLOCALITY"

.field public static final GEOTHOROUGHFARE:Ljava/lang/String; = "A_GEOTHOROUGHFARE"

.field public static final LOCALE:Ljava/lang/String; = "A_LOCALE"

.field public static final RETRY_COUNT:Ljava/lang/String; = "A_RETRYCOUNT"

.field public static final START_LATITUDE:Ljava/lang/String; = "A_START_LATITUDE"

.field public static final START_LONGITUDE:Ljava/lang/String; = "A_START_LONGITUDE"

.field public static final START_TIME:Ljava/lang/String; = "A_START_TIME"

.field public static final TABLE_NAME:Ljava/lang/String; = "ACTIVITY_INFO"

.field public static final VISIBILITY:Ljava/lang/String; = "A_VISIBILITY"

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

    .line 11
    const-string v0, "content://com.lge.cic.eden.provider/ActivityInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->ACTIVITYINFO_URI:Landroid/net/Uri;

    .line 29
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    const-string v1, "ACTIVITY_ID"

    aput-object v1, v0, v3

    .line 31
    const-string v1, "A_START_TIME"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 32
    const-string v2, "A_END_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 33
    const-string v2, "A_START_LATITUDE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 34
    const-string v2, "A_START_LONGITUDE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 35
    const-string v2, "A_END_LATITUDE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 36
    const-string v2, "A_END_LONGITUDE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 37
    const-string v2, "A_LOCALE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 38
    const-string v2, "A_GEOCOUNTRYNAME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 39
    const-string v2, "A_GEOADMINAREA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 40
    const-string v2, "A_GEOLOCALITY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 41
    const-string v2, "A_GEOTHOROUGHFARE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 42
    const-string v2, "A_VISIBILITY"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 43
    const-string v2, "A_RETRYCOUNT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 44
    const-string v2, "A_DELETE_FLAG"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->columnList:[Ljava/lang/String;

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    .line 48
    const-string v1, "ACTIVITY_ID"

    aput-object v1, v0, v3

    .line 47
    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->primaryColumns:[Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/lge/cic/eden/db/table/ActivityInfoTable$1;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/table/ActivityInfoTable$1;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    .line 58
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lge/cic/eden/db/table/TableInfo;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    invoke-virtual {v0}, Lcom/lge/cic/eden/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    return-object v0
.end method


# virtual methods
.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->columnList:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreateStatement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "ACTIVITY_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "A_START_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "A_END_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "A_START_LATITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "A_START_LONGITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "A_END_LATITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "A_END_LONGITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "A_LOCALE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "A_GEOCOUNTRYNAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "A_GEOADMINAREA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "A_GEOLOCALITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "A_GEOTHOROUGHFARE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "A_VISIBILITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "A_RETRYCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "A_DELETE_FLAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "PRIMARY KEY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ACTIVITY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDropStatement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    const-string v0, "DROP TABLE IF EXISTS ACTIVITY_INFO"

    return-object v0
.end method

.method public getPrimaryColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->primaryColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const-string v0, "ACTIVITY_INFO"

    return-object v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->ACTIVITYINFO_URI:Landroid/net/Uri;

    return-object v0
.end method
