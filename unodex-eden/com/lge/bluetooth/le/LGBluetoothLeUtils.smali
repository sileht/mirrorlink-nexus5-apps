.class public Lcom/lge/bluetooth/le/LGBluetoothLeUtils;
.super Ljava/lang/Object;
.source "LGBluetoothLeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAdapterStateOn(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)V
    .registers 3
    .param p0, "adapter"    # Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    .prologue
    .line 146
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->getState()I

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_12

    .line 147
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ble Quietmode Adapter is not turned ON"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_12
    return-void
.end method

.method static equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Landroid/util/SparseArray",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p1, "otherArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 94
    if-ne p0, p1, :cond_6

    move v1, v3

    .line 111
    :goto_5
    return v1

    .line 97
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v1, v4

    .line 98
    goto :goto_5

    .line 100
    :cond_c
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_18

    move v1, v4

    .line 101
    goto :goto_5

    .line 105
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_21

    move v1, v3

    .line 111
    goto :goto_5

    .line 106
    :cond_21
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-ne v1, v2, :cond_3d

    .line 107
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3f

    :cond_3d
    move v1, v4

    .line 108
    goto :goto_5

    .line 105
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;[B>;",
            "Ljava/util/Map",
            "<TT;[B>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    .local p1, "otherMap":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 118
    if-ne p0, p1, :cond_5

    .line 136
    :cond_4
    :goto_4
    return v2

    .line 121
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 122
    goto :goto_4

    .line 124
    :cond_b
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_17

    move v2, v3

    .line 125
    goto :goto_4

    .line 127
    :cond_17
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 128
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    move v2, v3

    .line 129
    goto :goto_4

    .line 131
    :cond_27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 132
    .local v0, "key":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    move v2, v3

    .line 133
    goto :goto_4
.end method

.method static toString(Landroid/util/SparseArray;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    if-nez p0, :cond_5

    .line 51
    const-string v2, "null"

    .line 62
    :goto_4
    return-object v2

    .line 53
    :cond_5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 54
    const-string v2, "{}"

    goto :goto_4

    .line 56
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v1, v2, :cond_29

    .line 61
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 59
    :cond_29
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method static toString(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    if-nez p0, :cond_5

    .line 70
    const-string v4, "null"

    .line 87
    :goto_4
    return-object v4

    .line 72
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 73
    const-string v4, "{}"

    goto :goto_4

    .line 75
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 78
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;[B>;>;"
    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_30

    .line 86
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 79
    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 81
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 83
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20
.end method
