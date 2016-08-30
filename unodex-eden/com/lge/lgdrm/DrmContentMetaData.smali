.class public final Lcom/lge/lgdrm/DrmContentMetaData;
.super Ljava/lang/Object;
.source "DrmContentMetaData.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private metaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-string v0, "DrmCmtMeta"

    sput-object v0, Lcom/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->metaMap:Ljava/util/HashMap;

    .line 55
    return-void
.end method


# virtual methods
.method public getData(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->metaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataList()[I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "count":I
    const/16 v6, 0xe

    new-array v5, v6, [I

    .line 81
    .local v5, "tmp":[I
    iget-object v6, p0, Lcom/lge/lgdrm/DrmContentMetaData;->metaMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 82
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 91
    if-nez v0, :cond_35

    .line 92
    const/4 v3, 0x0

    .line 99
    :goto_19
    return-object v3

    .line 84
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 95
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_35
    new-array v3, v0, [I

    .line 97
    .local v3, "list":[I
    invoke-static {v5, v7, v3, v7, v0}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_19
.end method

.method public setData(ILjava/lang/String;)I
    .registers 6
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 159
    const/4 v1, 0x1

    if-lt p1, v1, :cond_8

    const/16 v1, 0xe

    if-lt p1, v1, :cond_10

    .line 160
    :cond_8
    sget-object v1, Lcom/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    const-string v2, "setData() : Type is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_f
    return v0

    .line 163
    :cond_10
    if-nez p2, :cond_1a

    .line 164
    sget-object v1, Lcom/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    const-string v2, "setData() : Value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 168
    :cond_1a
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->metaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    goto :goto_f
.end method
