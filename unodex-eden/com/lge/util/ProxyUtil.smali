.class public Lcom/lge/util/ProxyUtil;
.super Ljava/lang/Object;
.source "ProxyUtil.java"


# static fields
.field private static final PRIVATE_PERMITTED:Z = true

.field private static final TAG:Ljava/lang/String; = "[LGSF]:ProxyUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkField(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 61
    instance-of v0, p0, Ljava/lang/NoSuchFieldException;

    if-eqz v0, :cond_6

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static checkMethod(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v0, p0, Ljava/lang/NoSuchMethodException;

    if-eqz v0, :cond_6

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static getConstValue(Ljava/lang/Class;Ljava/lang/String;I)I
    .registers 7
    .param p0, "className"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/lge/util/ProxyUtil;->loadField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "field":Ljava/lang/Object;
    const/4 v1, 0x0

    :try_start_5
    invoke-static {v0, v1}, Lcom/lge/util/ProxyUtil;->getField(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_e} :catch_10

    move-result p2

    .line 153
    .end local p2    # "defaultVal":I
    :goto_f
    return p2

    .line 151
    .restart local p2    # "defaultVal":I
    :catch_10
    move-exception v1

    const-string v1, "[LGSF]:ProxyUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " has not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "field"    # Ljava/lang/Object;
    .param p1, "receiver"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/lge/util/ProxyUtil;->checkField(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object v1, p0

    .line 102
    check-cast v1, Ljava/lang/NoSuchFieldException;

    .line 103
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 106
    .end local v1    # "ex":Ljava/lang/NoSuchFieldException;
    :cond_f
    const/4 v3, 0x0

    .local v3, "re":Ljava/lang/Object;
    move-object v2, p0

    .line 107
    check-cast v2, Ljava/lang/reflect/Field;

    .line 109
    .local v2, "f":Ljava/lang/reflect/Field;
    :try_start_13
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 110
    const-string v4, "[LGSF]:ProxyUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " is get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_34

    .line 115
    return-object v3

    .line 111
    .end local v3    # "re":Ljava/lang/Object;
    :catch_34
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "method"    # Ljava/lang/Object;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lcom/lge/util/ProxyUtil;->checkMethod(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    move-object v2, p0

    .line 74
    check-cast v2, Ljava/lang/NoSuchMethodException;

    .line 75
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 78
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_f
    const/4 v4, 0x0

    .local v4, "re":Ljava/lang/Object;
    move-object v3, p0

    .line 79
    check-cast v3, Ljava/lang/reflect/Method;

    .line 81
    .local v3, "m":Ljava/lang/reflect/Method;
    :try_start_13
    invoke-virtual {v3, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 82
    const-string v5, "[LGSF]:ProxyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " is called"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_33} :catch_34
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_40

    .line 92
    .end local v4    # "re":Ljava/lang/Object;
    :cond_33
    return-object v4

    .line 83
    :catch_34
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 85
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v5, v0, Landroid/os/RemoteException;

    if-eqz v5, :cond_33

    .line 86
    check-cast v0, Landroid/os/RemoteException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 88
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_40
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static loadField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/util/ProxyUtil;->setToAccessible(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 56
    :goto_8
    return-object v1

    .line 54
    :catch_9
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "[LGSF]:ProxyUtil"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Ljava/lang/NoSuchFieldException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static varargs loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/util/ProxyUtil;->setToAccessible(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 37
    :goto_8
    return-object v1

    .line 35
    :catch_9
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "[LGSF]:ProxyUtil"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static setField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p0, "field"    # Ljava/lang/Object;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p0}, Lcom/lge/util/ProxyUtil;->checkField(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object v1, p0

    .line 125
    check-cast v1, Ljava/lang/NoSuchFieldException;

    .line 126
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v1    # "ex":Ljava/lang/NoSuchFieldException;
    :cond_f
    move-object v2, p0

    .line 129
    check-cast v2, Ljava/lang/reflect/Field;

    .line 131
    .local v2, "f":Ljava/lang/reflect/Field;
    :try_start_12
    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    const-string v3, "[LGSF]:ProxyUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " is set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_31} :catch_32

    .line 137
    return-void

    .line 133
    :catch_32
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static setToAccessible(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 22
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/AccessibleObject;

    .line 23
    .local v0, "ao":Ljava/lang/reflect/AccessibleObject;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    :cond_f
    return-object v0
.end method
