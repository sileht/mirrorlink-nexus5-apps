.class public Lcom/lge/telephony/msim/BaseRuntimeLoader;
.super Ljava/lang/Object;
.source "BaseRuntimeLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseRuntimeLoader"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveClassFromClassList([Ljava/lang/String;)Ljava/lang/Class;
    .registers 8
    .param p0, "adaptorList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 17
    array-length v3, p0

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_19

    .line 26
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error!! don\'t load any class from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_19
    aget-object v1, p0, v2

    .line 19
    .local v1, "msimClassName":Ljava/lang/String;
    :try_start_1b
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_1e} :catch_20

    move-result-object v0

    .line 20
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0

    .line 23
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_20
    move-exception v4

    const-string v4, "BaseRuntimeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "don\'t search"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static getActiveConstructorFromClassList([Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 9
    .param p0, "paramType"    # [Ljava/lang/Class;
    .param p1, "adaptorList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 33
    :try_start_1
    invoke-static {p1}, Lcom/lge/telephony/msim/BaseRuntimeLoader;->getActiveClassFromClassList([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_8} :catch_20

    move-result-object v3

    .line 50
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    return-object v3

    .line 43
    :catch_a
    move-exception v2

    .line 44
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    const-string v4, "BaseRuntimeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ClassNotFoundException "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 47
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_20
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "BaseRuntimeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NoSuchMethodException "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static getActiveDefaultConstructorFromClassList([Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 2
    .param p0, "adaptorList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/lge/telephony/msim/BaseRuntimeLoader;->getActiveConstructorFromClassList([Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method
