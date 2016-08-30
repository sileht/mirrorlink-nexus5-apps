.class Lcom/lge/cic/eden/mediastore/MediaStoreHelper$4;
.super Ljava/lang/Object;
.source "MediaStoreHelper.java"

# interfaces
.implements Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->getMediaStoreImageInfoAfterSpecificMediaId(Ljava/lang/String;J)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper",
        "<",
        "Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/mediastore/MediaStoreHelper;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$4;->this$0:Lcom/lge/cic/eden/mediastore/MediaStoreHelper;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapRow(Landroid/database/Cursor;)Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 105
    new-instance v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;

    invoke-direct {v0, p1}, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public bridge synthetic mapRow(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$4;->mapRow(Landroid/database/Cursor;)Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;

    move-result-object v0

    return-object v0
.end method
