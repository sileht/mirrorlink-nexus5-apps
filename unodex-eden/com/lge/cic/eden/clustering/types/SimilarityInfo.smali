.class public Lcom/lge/cic/eden/clustering/types/SimilarityInfo;
.super Ljava/lang/Object;
.source "SimilarityInfo.java"


# instance fields
.field public similarity:D

.field public sourceId:I

.field public targetId:I


# direct methods
.method public constructor <init>(IID)V
    .registers 6
    .param p1, "sourceId"    # I
    .param p2, "targetId"    # I
    .param p3, "similarity"    # D

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->sourceId:I

    .line 21
    iput p2, p0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->targetId:I

    .line 22
    iput-wide p3, p0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->similarity:D

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-eqz p1, :cond_29

    .line 13
    const-string v0, "SOURCE_ID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->sourceId:I

    .line 14
    const-string v0, "TARGET_ID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->targetId:I

    .line 15
    const-string v0, "SIMILARITY"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->similarity:D

    .line 17
    :cond_29
    return-void
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 26
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "SOURCE_ID"

    iget v2, p0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->sourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    const-string v1, "TARGET_ID"

    iget v2, p0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->targetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    const-string v1, "SIMILARITY"

    iget-wide v2, p0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->similarity:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 31
    return-object v0
.end method
