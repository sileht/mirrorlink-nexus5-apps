.class public Lcom/lge/cic/eden/db/table/ActivityEventMapTable;
.super Ljava/lang/Object;
.source "ActivityEventMapTable.java"

# interfaces
.implements Lcom/lge/cic/eden/db/table/TableInfo;


# static fields
.field public static final ACTIVITY_ID:Ljava/lang/String; = "ACTIVITY_ID"

.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field public static final DELETE_FLAG:Ljava/lang/String; = "DELETE_FLAG"

.field public static final EVENT_ID:Ljava/lang/String; = "EVENT_ID"

.field public static final TABLE_NAME:Ljava/lang/String; = "ACTIVITY_EVENT_MAP"

.field public static final TABLE_URI:Landroid/net/Uri;

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
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    const-string v0, "content://com.lge.cic.eden.provider/ActivityEventMap"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->TABLE_URI:Landroid/net/Uri;

    .line 17
    new-array v0, v5, [Ljava/lang/String;

    .line 18
    const-string v1, "ACTIVITY_ID"

    aput-object v1, v0, v2

    .line 19
    const-string v1, "EVENT_ID"

    aput-object v1, v0, v3

    .line 20
    const-string v1, "DELETE_FLAG"

    aput-object v1, v0, v4

    .line 17
    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->columnList:[Ljava/lang/String;

    .line 23
    new-array v0, v5, [Ljava/lang/String;

    .line 24
    const-string v1, "ACTIVITY_ID"

    aput-object v1, v0, v2

    .line 25
    const-string v1, "EVENT_ID"

    aput-object v1, v0, v3

    .line 26
    const-string v1, "DELETE_FLAG"

    aput-object v1, v0, v4

    .line 23
    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->primaryColumns:[Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/lge/cic/eden/db/table/ActivityEventMapTable$1;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable$1;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    .line 36
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lge/cic/eden/db/table/TableInfo;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    invoke-virtual {v0}, Lcom/lge/cic/eden/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    return-object v0
.end method


# virtual methods
.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->columnList:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreateStatement()Ljava/lang/String;
    .registers 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACTIVITY_EVENT_MAP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "EVENT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "DELETE_FLAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "PRIMARY KEY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACTIVITY_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "FOREIGN KEY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACTIVITY_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") REFERENCES "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    const-string v2, "ACTIVITY_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACTIVITY_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "FOREIGN KEY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") REFERENCES "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    const-string v2, "EVENT_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDropStatement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    const-string v0, "DROP TABLE IF EXISTS ACTIVITY_EVENT_MAP"

    return-object v0
.end method

.method public getPrimaryColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->primaryColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "ACTIVITY_EVENT_MAP"

    return-object v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->TABLE_URI:Landroid/net/Uri;

    return-object v0
.end method
