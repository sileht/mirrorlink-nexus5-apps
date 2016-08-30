.class Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;
.super Ljava/lang/Object;
.source "DatabaseBridge.java"

# interfaces
.implements Lcom/lge/cic/eden/db/helper/DatabaseBridge$KeyedRowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lge/cic/eden/db/helper/DatabaseBridge$KeyedRowMapper",
        "<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/Class;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    iput-object p2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->val$clazz:Ljava/lang/Class;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic mapKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/lge/cic/eden/db/type/ColumnInfo;

    invoke-virtual {p0, p1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->mapKey(Lcom/lge/cic/eden/db/type/ColumnInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mapKey(Lcom/lge/cic/eden/db/type/ColumnInfo;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "value":Lcom/lge/cic/eden/db/type/ColumnInfo;, "TT;"
    move-object v0, p1

    .line 220
    .local v0, "base":Lcom/lge/cic/eden/db/type/ColumnInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 222
    .local v2, "isFirst":Z
    invoke-virtual {v0}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getPrimaryColumns()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_d
    if-lt v4, v6, :cond_14

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 222
    :cond_14
    aget-object v3, v5, v4

    .line 223
    .local v3, "key":Ljava/lang/String;
    if-eqz v2, :cond_1f

    .line 224
    const/4 v2, 0x0

    .line 228
    :goto_19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 226
    :cond_1f
    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19
.end method

.method public mapValue(Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;
    .registers 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 237
    .local v1, "obj":Lcom/lge/cic/eden/db/type/ColumnInfo;, "TT;"
    :try_start_1
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    iget-object v3, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->val$clazz:Ljava/lang/Class;

    # invokes: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->createData(Ljava/lang/Class;Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;
    invoke-static {v2, v3, p1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$0(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/Class;Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_8} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_8} :catch_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_8} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_8} :catch_46

    move-result-object v1

    .line 249
    :goto_9
    return-object v1

    .line 238
    :catch_a
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    # getter for: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_9

    .line 240
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_19
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/InstantiationException;
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    # getter for: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_9

    .line 242
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_28
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/IllegalAccessException;
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    # getter for: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_9

    .line 244
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_37
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    # getter for: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_9

    .line 246
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_46
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    # getter for: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public bridge synthetic mapValue(Landroid/content/ContentValues;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;->mapValue(Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;

    move-result-object v0

    return-object v0
.end method
