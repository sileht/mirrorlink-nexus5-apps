.class Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;
.super Ljava/lang/Object;
.source "DatabaseBridge.java"

# interfaces
.implements Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper",
        "<TT;>;"
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
    iput-object p1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    iput-object p2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;->val$clazz:Ljava/lang/Class;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapRow(Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;
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
    .line 344
    const/4 v1, 0x0

    .line 346
    .local v1, "obj":Lcom/lge/cic/eden/db/type/ColumnInfo;, "TT;"
    :try_start_1
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    iget-object v3, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;->val$clazz:Ljava/lang/Class;

    # invokes: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->createData(Ljava/lang/Class;Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;
    invoke-static {v2, v3, p1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$0(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/Class;Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_8} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_8} :catch_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_8} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_8} :catch_46

    move-result-object v1

    .line 358
    :goto_9
    return-object v1

    .line 347
    :catch_a
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    # getter for: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_9

    .line 349
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_19
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/InstantiationException;
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    # getter for: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_9

    .line 351
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_28
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/IllegalAccessException;
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    # getter for: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_9

    .line 353
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_37
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    # getter for: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_9

    .line 355
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_46
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;->this$0:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    # getter for: Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public bridge synthetic mapRow(Landroid/content/ContentValues;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;->mapRow(Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;

    move-result-object v0

    return-object v0
.end method
