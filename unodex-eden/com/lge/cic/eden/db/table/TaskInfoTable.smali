.class public Lcom/lge/cic/eden/db/table/TaskInfoTable;
.super Ljava/lang/Object;
.source "TaskInfoTable.java"

# interfaces
.implements Lcom/lge/cic/eden/db/table/TableInfo;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field public static final TABLE_NAME:Ljava/lang/String; = "TASK_INFO"

.field public static final TABLE_URI:Landroid/net/Uri;

.field public static final TABLE_URI_LIMIT:Landroid/net/Uri;

.field public static final TASK_ID:Ljava/lang/String; = "TASK_ID"

.field public static final TASK_NAME:Ljava/lang/String; = "TASK_NAME"

.field public static final TASK_STATUS:Ljava/lang/String; = "TASK_STATUS"

.field public static final TASK_TYPE:Ljava/lang/String; = "TASK_TYPE"

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
    const-string v0, "content://com.lge.cic.eden.provider/TaskInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/table/TaskInfoTable;->TABLE_URI:Landroid/net/Uri;

    .line 11
    const-string v0, "content://com.lge.cic.eden.provider/TaskInfo?limit=0,1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/table/TaskInfoTable;->TABLE_URI_LIMIT:Landroid/net/Uri;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 19
    const-string v1, "TASK_ID"

    aput-object v1, v0, v3

    .line 20
    const-string v1, "TASK_NAME"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 21
    const-string v2, "TASK_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 22
    const-string v2, "TASK_STATUS"

    aput-object v2, v0, v1

    .line 18
    sput-object v0, Lcom/lge/cic/eden/db/table/TaskInfoTable;->columnList:[Ljava/lang/String;

    .line 25
    new-array v0, v4, [Ljava/lang/String;

    .line 26
    const-string v1, "TASK_ID"

    aput-object v1, v0, v3

    .line 25
    sput-object v0, Lcom/lge/cic/eden/db/table/TaskInfoTable;->primaryColumns:[Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/lge/cic/eden/db/table/TaskInfoTable$1;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/table/TaskInfoTable$1;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/table/TaskInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    .line 36
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static get()Lcom/lge/cic/eden/db/table/TableInfo;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/lge/cic/eden/db/table/TaskInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    invoke-virtual {v0}, Lcom/lge/cic/eden/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    return-object v0
.end method


# virtual methods
.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/lge/cic/eden/db/table/TaskInfoTable;->columnList:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreateStatement()Ljava/lang/String;
    .registers 4

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "TASK_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "TASK_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "TASK_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "TASK_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "TASK_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDropStatement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string v0, "DROP TABLE IF EXISTS TASK_INFO"

    return-object v0
.end method

.method public getPrimaryColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/lge/cic/eden/db/table/TaskInfoTable;->primaryColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const-string v0, "TASK_INFO"

    return-object v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcom/lge/cic/eden/db/table/TaskInfoTable;->TABLE_URI:Landroid/net/Uri;

    return-object v0
.end method
