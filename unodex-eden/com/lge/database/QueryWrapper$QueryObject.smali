.class Lcom/lge/database/QueryWrapper$QueryObject;
.super Ljava/lang/Object;
.source "QueryWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/database/QueryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryObject"
.end annotation


# instance fields
.field private mChangeCount:J

.field private mMemTableName:Ljava/lang/String;

.field private mQueryStr:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "mQueryStr"    # Ljava/lang/String;

    .prologue
    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput-object p1, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mQueryStr:Ljava/lang/String;

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mSelectionArgs:[Ljava/lang/String;

    .line 783
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mChangeCount:J

    .line 784
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mMemTableName:Ljava/lang/String;

    .line 785
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "mQueryStr"    # Ljava/lang/String;
    .param p2, "mSelectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput-object p1, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mQueryStr:Ljava/lang/String;

    .line 789
    iput-object p2, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mSelectionArgs:[Ljava/lang/String;

    .line 790
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mChangeCount:J

    .line 791
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mMemTableName:Ljava/lang/String;

    .line 792
    return-void
.end method


# virtual methods
.method public getChangeCount()J
    .registers 3

    .prologue
    .line 818
    iget-wide v0, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mChangeCount:J

    return-wide v0
.end method

.method public getMemTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mMemTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mQueryStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public setChangeCount(J)V
    .registers 4
    .param p1, "count"    # J

    .prologue
    .line 854
    iput-wide p1, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mChangeCount:J

    .line 855
    return-void
.end method

.method public setMemTableName(Ljava/lang/String;)V
    .registers 2
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mMemTableName:Ljava/lang/String;

    .line 846
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .registers 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/lge/database/QueryWrapper$QueryObject;->mQueryStr:Ljava/lang/String;

    .line 837
    return-void
.end method
