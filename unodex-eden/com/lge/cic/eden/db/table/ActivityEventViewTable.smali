.class public Lcom/lge/cic/eden/db/table/ActivityEventViewTable;
.super Ljava/lang/Object;
.source "ActivityEventViewTable.java"

# interfaces
.implements Lcom/lge/cic/eden/db/table/TableInfo;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field public static final TABLE_URI:Landroid/net/Uri;

.field public static final VIEW_NAME:Ljava/lang/String; = "ACTIVITY_EVENT_VIEW"

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


# instance fields
.field public final columnList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 11
    const-string v0, "content://com.lge.cic.eden.provider/ActivityEventView"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->TABLE_URI:Landroid/net/Uri;

    .line 15
    new-instance v0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable$1;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/table/ActivityEventViewTable$1;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 29
    const-string v2, "ACTIVITY_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 30
    const-string v2, "EVENT_ID"

    aput-object v2, v0, v1

    .line 28
    sput-object v0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->primaryColumns:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method protected constructor <init>()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v4, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->columnList:[Ljava/lang/String;

    array-length v4, v4

    sget-object v5, Lcom/lge/cic/eden/db/table/EventInfoTable;->columnList:[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->columnList:[Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, "i":I
    sget-object v5, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->columnList:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_15
    if-lt v4, v6, :cond_1d

    .line 40
    sget-object v4, Lcom/lge/cic/eden/db/table/EventInfoTable;->columnList:[Ljava/lang/String;

    array-length v5, v4

    :goto_1a
    if-lt v3, v5, :cond_2e

    .line 43
    return-void

    .line 36
    :cond_1d
    aget-object v0, v5, v4

    .line 37
    .local v0, "columnName":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->columnList:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v2

    .line 36
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_15

    .line 40
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_2e
    aget-object v0, v4, v3

    .line 41
    .restart local v0    # "columnName":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->columnList:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v2

    .line 40
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1a
.end method

.method public static get()Lcom/lge/cic/eden/db/table/TableInfo;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    invoke-virtual {v0}, Lcom/lge/cic/eden/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    return-object v0
.end method


# virtual methods
.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->columnList:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreateStatement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "CREATE VIEW [ACTIVITY_EVENT_VIEW] AS SELECT ACTIVITY_INFO.*, EVENT_INFO.* FROM ACTIVITY_INFO, EVENT_INFO, ACTIVITY_EVENT_MAP WHERE ACTIVITY_EVENT_MAP.ACTIVITY_ID = ACTIVITY_INFO.ACTIVITY_ID AND ACTIVITY_EVENT_MAP.EVENT_ID = EVENT_INFO.EVENT_ID;"

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
    const-string v0, "DROP VIEW IF EXISTS ACTIVITY_EVENT_VIEW"

    return-object v0
.end method

.method public getPrimaryColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->primaryColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string v0, "ACTIVITY_EVENT_VIEW"

    return-object v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->TABLE_URI:Landroid/net/Uri;

    return-object v0
.end method
