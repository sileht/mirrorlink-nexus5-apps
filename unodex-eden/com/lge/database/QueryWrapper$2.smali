.class Lcom/lge/database/QueryWrapper$2;
.super Landroid/util/LruCache;
.source "QueryWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/database/QueryWrapper;->getInstance(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Lcom/lge/database/QueryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/lge/database/QueryWrapper$QueryObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(ILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p2, p0, Lcom/lge/database/QueryWrapper$2;->val$mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 180
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/lge/database/QueryWrapper$QueryObject;

    check-cast p4, Lcom/lge/database/QueryWrapper$QueryObject;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lge/database/QueryWrapper$2;->entryRemoved(ZLjava/lang/String;Lcom/lge/database/QueryWrapper$QueryObject;Lcom/lge/database/QueryWrapper$QueryObject;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/lge/database/QueryWrapper$QueryObject;Lcom/lge/database/QueryWrapper$QueryObject;)V
    .registers 8
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Lcom/lge/database/QueryWrapper$QueryObject;
    .param p4, "newValue"    # Lcom/lge/database/QueryWrapper$QueryObject;

    .prologue
    .line 182
    invoke-virtual {p3}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 183
    iget-object v0, p0, Lcom/lge/database/QueryWrapper$2;->val$mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Drop Table IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    const-string v0, "QueryWrapper"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 185
    const-string v0, "QueryWrapper"

    const-string v1, "Memorytable is droped because exceed max managing size or release QueryWrapper"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3a
    return-void
.end method
