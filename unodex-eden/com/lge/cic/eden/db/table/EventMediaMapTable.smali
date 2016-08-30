.class public Lcom/lge/cic/eden/db/table/EventMediaMapTable;
.super Ljava/lang/Object;
.source "EventMediaMapTable.java"

# interfaces
.implements Lcom/lge/cic/eden/db/table/TableInfo;


# static fields
.field public static final ACTIVITY_ID:Ljava/lang/String; = "ACTIVITY_ID"

.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field public static final DELETE_FLAG:Ljava/lang/String; = "DELETE_FLAG"

.field public static final EVENT_ID:Ljava/lang/String; = "EVENT_ID"

.field public static final MEDIA_ID:Ljava/lang/String; = "MEDIA_ID"

.field public static final STORAGE_ID:Ljava/lang/String; = "STORAGE_ID"

.field public static final TABLE_NAME:Ljava/lang/String; = "EVENT_MEDIA_MAP"

.field public static final TABLE_URI:Landroid/net/Uri;

.field public static final VISIBILITY:Ljava/lang/String; = "VISIBILITY"

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

    .line 11
    const-string v0, "content://com.lge.cic.eden.provider/EventMediaMap"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 23
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 24
    const-string v1, "EVENT_ID"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 25
    const-string v2, "MEDIA_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 26
    const-string v2, "ACTIVITY_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 27
    const-string v2, "STORAGE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 28
    const-string v2, "VISIBILITY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 29
    const-string v2, "DELETE_FLAG"

    aput-object v2, v0, v1

    .line 22
    sput-object v0, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->columnList:[Ljava/lang/String;

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    .line 33
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 32
    sput-object v0, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->primaryColumns:[Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/lge/cic/eden/db/table/EventMediaMapTable$1;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/table/EventMediaMapTable$1;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    .line 43
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lge/cic/eden/db/table/TableInfo;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    invoke-virtual {v0}, Lcom/lge/cic/eden/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    return-object v0
.end method


# virtual methods
.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->columnList:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreateStatement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "EVENT_MEDIA_MAP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "EVENT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "MEDIA_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "STORAGE_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "VISIBILITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "DELETE_FLAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDropStatement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "DROP TABLE IF EXISTS EVENT_MEDIA_MAP"

    return-object v0
.end method

.method public getPrimaryColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->primaryColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string v0, "EVENT_MEDIA_MAP"

    return-object v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 68
    sget-object v0, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    return-object v0
.end method
