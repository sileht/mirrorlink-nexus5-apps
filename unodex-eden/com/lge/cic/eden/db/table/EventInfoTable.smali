.class public Lcom/lge/cic/eden/db/table/EventInfoTable;
.super Ljava/lang/Object;
.source "EventInfoTable.java"

# interfaces
.implements Lcom/lge/cic/eden/db/table/TableInfo;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field public static final DELETE_FLAG:Ljava/lang/String; = "E_DELETE_FLAG"

.field public static final END_LATITUDE:Ljava/lang/String; = "E_END_LATITUDE"

.field public static final END_LONGITUDE:Ljava/lang/String; = "E_END_LONGITUDE"

.field public static final END_TIME:Ljava/lang/String; = "E_END_TIME"

.field public static final EVENT_ID:Ljava/lang/String; = "EVENT_ID"

.field public static final EVENT_STATE:Ljava/lang/String; = "E_STATE"

.field public static final EVENT_TITLE:Ljava/lang/String; = "EVENT_TITLE"

.field public static final EVENT_TYPE:Ljava/lang/String; = "EVENT_TYPE"

.field public static final GEOADMINAREA:Ljava/lang/String; = "E_GEOADMINAREA"

.field public static final GEOCOUNTRYNAME:Ljava/lang/String; = "E_GEOCOUNTRYNAME"

.field public static final GEOLOCALITY:Ljava/lang/String; = "E_GEOLOCALITY"

.field public static final GEOTHOROUGHFARE:Ljava/lang/String; = "E_GEOTHOROUGHFARE"

.field public static final LOCALE:Ljava/lang/String; = "E_LOCALE"

.field public static final START_LATITUDE:Ljava/lang/String; = "E_START_LATITUDE"

.field public static final START_LONGITUDE:Ljava/lang/String; = "E_START_LONGITUDE"

.field public static final START_TIME:Ljava/lang/String; = "E_START_TIME"

.field public static final TABLE_NAME:Ljava/lang/String; = "EVENT_INFO"

.field public static final TABLE_URI:Landroid/net/Uri;

.field public static final VIEW_TYPE:Ljava/lang/String; = "E_VIEW_TYPE"

.field public static final VISIBILITY:Ljava/lang/String; = "E_VISIBILITY"

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
    const-string v0, "content://com.lge.cic.eden.provider/EventInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    .line 32
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    const-string v1, "EVENT_ID"

    aput-object v1, v0, v3

    .line 34
    const-string v1, "EVENT_TYPE"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 35
    const-string v2, "EVENT_TITLE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 36
    const-string v2, "E_START_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 37
    const-string v2, "E_END_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 38
    const-string v2, "E_START_LATITUDE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 39
    const-string v2, "E_START_LONGITUDE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 40
    const-string v2, "E_END_LATITUDE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 41
    const-string v2, "E_END_LONGITUDE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 42
    const-string v2, "E_LOCALE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 43
    const-string v2, "E_GEOCOUNTRYNAME"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 44
    const-string v2, "E_GEOADMINAREA"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 45
    const-string v2, "E_GEOLOCALITY"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 46
    const-string v2, "E_GEOTHOROUGHFARE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 47
    const-string v2, "E_VISIBILITY"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 48
    const-string v2, "E_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 49
    const-string v2, "E_VIEW_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 50
    const-string v2, "E_DELETE_FLAG"

    aput-object v2, v0, v1

    .line 32
    sput-object v0, Lcom/lge/cic/eden/db/table/EventInfoTable;->columnList:[Ljava/lang/String;

    .line 53
    new-array v0, v4, [Ljava/lang/String;

    .line 54
    const-string v1, "EVENT_ID"

    aput-object v1, v0, v3

    .line 53
    sput-object v0, Lcom/lge/cic/eden/db/table/EventInfoTable;->primaryColumns:[Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/lge/cic/eden/db/table/EventInfoTable$1;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/table/EventInfoTable$1;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/table/EventInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    .line 64
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lge/cic/eden/db/table/TableInfo;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/lge/cic/eden/db/table/EventInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    invoke-virtual {v0}, Lcom/lge/cic/eden/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    return-object v0
.end method


# virtual methods
.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/lge/cic/eden/db/table/EventInfoTable;->columnList:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreateStatement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "EVENT_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "EVENT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "EVENT_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "EVENT_TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "E_START_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "E_END_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "E_START_LATITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "E_START_LONGITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "E_END_LATITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "E_END_LONGITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "E_LOCALE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "E_GEOCOUNTRYNAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "E_GEOADMINAREA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "E_GEOLOCALITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "E_GEOTHOROUGHFARE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "E_VISIBILITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "E_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "E_VIEW_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "E_DELETE_FLAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "PRIMARY KEY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EVENT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDropStatement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    const-string v0, "DROP TABLE IF EXISTS EVENT_INFO"

    return-object v0
.end method

.method public getPrimaryColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    sget-object v0, Lcom/lge/cic/eden/db/table/EventInfoTable;->primaryColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string v0, "EVENT_INFO"

    return-object v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 89
    sget-object v0, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    return-object v0
.end method
