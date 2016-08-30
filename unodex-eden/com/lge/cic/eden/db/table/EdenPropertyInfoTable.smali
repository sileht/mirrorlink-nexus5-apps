.class public Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;
.super Ljava/lang/Object;
.source "EdenPropertyInfoTable.java"

# interfaces
.implements Lcom/lge/cic/eden/db/table/TableInfo;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field public static final HOME_ADMINAREA:Ljava/lang/String; = "HOME_ADMINAREA"

.field public static final HOME_COUNTRY:Ljava/lang/String; = "HOME_COUNTRY"

.field public static final HOME_LATITUDE:Ljava/lang/String; = "HOME_LATITUDE"

.field public static final HOME_LOCALITY:Ljava/lang/String; = "HOME_LOCALITY"

.field public static final HOME_LONGITUDE:Ljava/lang/String; = "HOME_LONGITUDE"

.field public static final HOME_THOROUGHFARE:Ljava/lang/String; = "HOME_THOROUGHFARE"

.field public static final MAX_ACTIVITY_ID:Ljava/lang/String; = "MAX_ACTIVITY_ID"

.field public static final MAX_EVENT_ID:Ljava/lang/String; = "MAX_EVENT_ID"

.field public static final POI_ANALYSIS_FLAG:Ljava/lang/String; = "POI_ANALYSIS_FLAG"

.field public static final POI_NAME:Ljava/lang/String; = "POI_NAME"

.field public static final TABLE_NAME:Ljava/lang/String; = "EDEN_PROPERTY_INFO"

.field public static final TABLE_URI:Landroid/net/Uri;

.field public static final _id:Ljava/lang/String; = "_id"

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
    const-string v0, "content://com.lge.cic.eden.provider/EdenPropertyInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->TABLE_URI:Landroid/net/Uri;

    .line 24
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 25
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 26
    const-string v1, "MAX_EVENT_ID"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 27
    const-string v2, "MAX_ACTIVITY_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 28
    const-string v2, "POI_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 29
    const-string v2, "HOME_COUNTRY"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 30
    const-string v2, "HOME_ADMINAREA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 31
    const-string v2, "HOME_LOCALITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 32
    const-string v2, "HOME_THOROUGHFARE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 33
    const-string v2, "HOME_LATITUDE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 34
    const-string v2, "HOME_LONGITUDE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 35
    const-string v2, "POI_ANALYSIS_FLAG"

    aput-object v2, v0, v1

    .line 24
    sput-object v0, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->columnList:[Ljava/lang/String;

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    .line 39
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 38
    sput-object v0, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->primaryColumns:[Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable$1;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable$1;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    .line 49
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static get()Lcom/lge/cic/eden/db/table/TableInfo;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    invoke-virtual {v0}, Lcom/lge/cic/eden/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    return-object v0
.end method


# virtual methods
.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->columnList:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreateStatement()Ljava/lang/String;
    .registers 4

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "EDEN_PROPERTY_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "MAX_EVENT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "MAX_ACTIVITY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "POI_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "HOME_COUNTRY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "HOME_ADMINAREA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "HOME_LOCALITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "HOME_THOROUGHFARE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "HOME_LATITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "HOME_LONGITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "POI_ANALYSIS_FLAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDropStatement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const-string v0, "DROP TABLE IF EXISTS EDEN_PROPERTY_INFO"

    return-object v0
.end method

.method public getPrimaryColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    sget-object v0, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->primaryColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string v0, "EDEN_PROPERTY_INFO"

    return-object v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 75
    sget-object v0, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->TABLE_URI:Landroid/net/Uri;

    return-object v0
.end method
