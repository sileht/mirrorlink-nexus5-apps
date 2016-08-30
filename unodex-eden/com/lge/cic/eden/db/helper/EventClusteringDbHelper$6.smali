.class Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$6;
.super Ljava/lang/Object;
.source "EventClusteringDbHelper.java"

# interfaces
.implements Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getInvisibleEventIdsInEventMediaMap()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$6;->this$0:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapRow(Landroid/content/ContentValues;)Ljava/lang/Integer;
    .registers 8
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 514
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 515
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .line 516
    .local v0, "id":I
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 517
    .local v3, "temp":Ljava/lang/Integer;
    if-eqz v3, :cond_1f

    .line 518
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 520
    :cond_1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 523
    .end local v0    # "id":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "temp":Ljava/lang/Integer;
    :goto_23
    return-object v4

    :cond_24
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_23
.end method

.method public bridge synthetic mapRow(Landroid/content/ContentValues;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$6;->mapRow(Landroid/content/ContentValues;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
