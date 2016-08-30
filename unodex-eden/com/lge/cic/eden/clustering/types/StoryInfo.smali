.class public Lcom/lge/cic/eden/clustering/types/StoryInfo;
.super Ljava/lang/Object;
.source "StoryInfo.java"


# instance fields
.field public storyId:Ljava/lang/String;

.field public storyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 18
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/lge/cic/eden/clustering/types/StoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-eqz p1, :cond_1d

    .line 13
    const-string v0, "STORY_ID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/types/StoryInfo;->storyId:Ljava/lang/String;

    .line 14
    const-string v0, "STORY_NAME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/types/StoryInfo;->storyName:Ljava/lang/String;

    .line 16
    :cond_1d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "storyId"    # Ljava/lang/String;
    .param p2, "storyName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/types/StoryInfo;->storyId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/lge/cic/eden/clustering/types/StoryInfo;->storyName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 26
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "STORY_ID"

    iget-object v2, p0, Lcom/lge/cic/eden/clustering/types/StoryInfo;->storyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "STORY_NAME"

    iget-object v2, p0, Lcom/lge/cic/eden/clustering/types/StoryInfo;->storyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-object v0
.end method
