.class public abstract Lcom/lge/database/LGCollatorManager;
.super Ljava/lang/Object;
.source "LGCollatorManager.java"


# static fields
.field public static final NUMERIC:I = 0x7

.field public static final TAG:Ljava/lang/String; = "LGCollatorManager"

.field public static VALUE_OFF:I

.field public static VALUE_ON:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x11

    const/16 v7, 0x10

    .line 46
    :try_start_4
    const-string v4, "libcore.icu.RuleBasedCollatorICU"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    .local v0, "c":Ljava/lang/Class;
    const-string v4, "VALUE_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 50
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 52
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/lge/database/LGCollatorManager;->VALUE_OFF:I

    .line 55
    const-string v4, "VALUE_ON"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 56
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/lge/database/LGCollatorManager;->VALUE_ON:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3c} :catch_57
    .catchall {:try_start_4 .. :try_end_3c} :catchall_95

    .line 65
    sget v4, Lcom/lge/database/LGCollatorManager;->VALUE_OFF:I

    if-nez v4, :cond_49

    .line 66
    const-string v4, "LGCollatorManager"

    const-string v5, "set default value for VALUE_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sput v7, Lcom/lge/database/LGCollatorManager;->VALUE_OFF:I

    .line 69
    :cond_49
    sget v4, Lcom/lge/database/LGCollatorManager;->VALUE_ON:I

    if-nez v4, :cond_56

    .line 70
    const-string v4, "LGCollatorManager"

    const-string v5, "set default value for VALUE_ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sput v8, Lcom/lge/database/LGCollatorManager;->VALUE_ON:I

    .line 74
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_56
    :goto_56
    return-void

    .line 59
    :catch_57
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v4, "LGCollatorManager"

    const-string v5, "VALUE_OFF and VALUE_ON is not supported for libcore.icu.RuleBasedCollatorICU"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v4, "LGCollatorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_58 .. :try_end_7a} :catchall_95

    .line 65
    sget v4, Lcom/lge/database/LGCollatorManager;->VALUE_OFF:I

    if-nez v4, :cond_87

    .line 66
    const-string v4, "LGCollatorManager"

    const-string v5, "set default value for VALUE_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sput v7, Lcom/lge/database/LGCollatorManager;->VALUE_OFF:I

    .line 69
    :cond_87
    sget v4, Lcom/lge/database/LGCollatorManager;->VALUE_ON:I

    if-nez v4, :cond_56

    .line 70
    const-string v4, "LGCollatorManager"

    const-string v5, "set default value for VALUE_ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sput v8, Lcom/lge/database/LGCollatorManager;->VALUE_ON:I

    goto :goto_56

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_95
    move-exception v4

    .line 65
    sget v5, Lcom/lge/database/LGCollatorManager;->VALUE_OFF:I

    if-nez v5, :cond_a3

    .line 66
    const-string v5, "LGCollatorManager"

    const-string v6, "set default value for VALUE_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sput v7, Lcom/lge/database/LGCollatorManager;->VALUE_OFF:I

    .line 69
    :cond_a3
    sget v5, Lcom/lge/database/LGCollatorManager;->VALUE_ON:I

    if-nez v5, :cond_b0

    .line 70
    const-string v5, "LGCollatorManager"

    const-string v6, "set default value for VALUE_ON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sput v8, Lcom/lge/database/LGCollatorManager;->VALUE_ON:I

    .line 73
    :cond_b0
    throw v4
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setNumeric(Ljava/text/Collator;I)Z
    .registers 14
    .param p0, "col"    # Ljava/text/Collator;
    .param p1, "value"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 85
    if-nez p0, :cond_c

    .line 86
    const-string v7, "LGCollatorManager"

    const-string v8, "collator is null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_b
    return v6

    .line 102
    :cond_c
    :try_start_c
    const-string v8, "java.text.Collator"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    .local v0, "c":Ljava/lang/Class;
    const-string v8, "icuColl"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 104
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 107
    .local v5, "o":Ljava/lang/Object;
    const-string v8, "libcore.icu.RuleBasedCollatorICU"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 108
    .local v1, "cICU":Ljava/lang/Class;
    const-string v8, "setAttribute"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 109
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 110
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_52} :catch_54

    move v6, v7

    .line 111
    goto :goto_b

    .line 112
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "cICU":Ljava/lang/Class;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "o":Ljava/lang/Object;
    :catch_54
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "LGCollatorManager"

    const-string v8, "setNumeric is not supported."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v7, "LGCollatorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method
