.class public Lcom/lge/internal/os/ZygoteInitAO;
.super Ljava/lang/Object;
.source "ZygoteInitAO.java"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/internal/os/ZygoteInitAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    :try_start_0
    invoke-static {}, Lcom/lge/internal/os/ZygoteInitAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/internal/os/ZygoteInitAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/internal/os/ZygoteInitAO;

    invoke-direct {v0}, Lcom/lge/internal/os/ZygoteInitAO;-><init>()V

    sput-object v0, Lcom/lge/internal/os/ZygoteInitAO;->ajc$perSingletonInstance:Lcom/lge/internal/os/ZygoteInitAO;

    return-void
.end method

.method public static ajc$privMethod$com_lge_internal_os_ZygoteInitAO$com_lge_internal_os_ZygoteInitAO$rewriteIntArrayField(Ljava/lang/reflect/Field;I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/internal/os/ZygoteInitAO;->rewriteIntArrayField(Ljava/lang/reflect/Field;I)V

    return-void
.end method

.method public static ajc$privMethod$com_lge_internal_os_ZygoteInitAO$com_lge_internal_os_ZygoteInitAO$rewriteIntField(Ljava/lang/reflect/Field;I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/internal/os/ZygoteInitAO;->rewriteIntField(Ljava/lang/reflect/Field;I)V

    return-void
.end method

.method public static ajc$privMethod$com_lge_internal_os_ZygoteInitAO$com_lge_internal_os_ZygoteInitAO$rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/internal/os/ZygoteInitAO;->rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    return-void
.end method

.method public static aspectOf()Lcom/lge/internal/os/ZygoteInitAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/internal/os/ZygoteInitAO;->ajc$perSingletonInstance:Lcom/lge/internal/os/ZygoteInitAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_internal_os_ZygoteInitAO"

    sget-object v2, Lcom/lge/internal/os/ZygoteInitAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/internal/os/ZygoteInitAO;->ajc$perSingletonInstance:Lcom/lge/internal/os/ZygoteInitAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/internal/os/ZygoteInitAO;->ajc$perSingletonInstance:Lcom/lge/internal/os/ZygoteInitAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static rewriteIntArrayField(Ljava/lang/reflect/Field;I)V
    .registers 9
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "packageId"    # I

    .prologue
    .line 83
    const/16 v3, 0x9

    .line 85
    .local v3, "requiredModifiers":I
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/2addr v4, v3

    if-eq v4, v3, :cond_28

    .line 86
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Field "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 87
    const-string v6, " is not rewritable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_28
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, [I

    if-eq v4, v5, :cond_4f

    .line 91
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Field "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 92
    const-string v6, " is not an integer array"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_4f
    const/4 v4, 0x0

    :try_start_50
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 97
    .local v0, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    array-length v4, v0

    if-lt v2, v4, :cond_5b

    .line 104
    return-void

    .line 98
    :cond_5b
    aget v4, v0, v2

    const v5, 0xffffff

    and-int/2addr v4, v5

    shl-int/lit8 v5, p1, 0x18

    or-int/2addr v4, v5

    aput v4, v0, v2
    :try_end_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_66} :catch_69

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 100
    .end local v0    # "array":[I
    .end local v2    # "i":I
    :catch_69
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static rewriteIntField(Ljava/lang/reflect/Field;I)V
    .registers 10
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "packageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 58
    const/16 v3, 0x9

    .line 59
    .local v3, "requiredModifiers":I
    const/16 v0, 0x10

    .line 61
    .local v0, "bannedModifiers":I
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 62
    .local v2, "mod":I
    and-int v5, v2, v3

    if-ne v5, v3, :cond_10

    .line 63
    and-int v5, v2, v0

    if-eqz v5, :cond_2f

    .line 64
    :cond_10
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Field "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 65
    const-string v7, " is not rewritable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_5e

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    if-eq v5, v6, :cond_5e

    .line 69
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Field "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 70
    const-string v7, " is not an integer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_5e
    const/4 v5, 0x0

    :try_start_5f
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 75
    .local v4, "resId":I
    const/4 v5, 0x0

    const v6, 0xffffff

    and-int/2addr v6, v4

    shl-int/lit8 v7, p1, 0x18

    or-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_6e
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_6e} :catch_6f

    .line 80
    return-void

    .line 76
    .end local v4    # "resId":I
    :catch_6f
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .registers 15
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 22
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".R"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_17} :catch_21

    move-result-object v4

    .line 31
    :try_start_18
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 32
    .local v1, "declaredClasses":[Ljava/lang/Class;
    array-length v7, v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_93

    move v6, v5

    :goto_1e
    if-lt v6, v7, :cond_3f

    .line 55
    .end local v1    # "declaredClasses":[Ljava/lang/Class;
    :goto_20
    return-void

    .line 26
    :catch_21
    move-exception v4

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not find R class for package \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 32
    .restart local v1    # "declaredClasses":[Ljava/lang/Class;
    :cond_3f
    :try_start_3f
    aget-object v0, v1, v6
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_41} :catch_93

    .line 34
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "styleable"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_53
    if-lt v4, v9, :cond_59

    .line 32
    :cond_55
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1e

    .line 35
    :cond_59
    aget-object v3, v8, v4

    .line 36
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, [I

    if-ne v10, v11, :cond_66

    .line 37
    invoke-static {v3, p2}, Lcom/lge/internal/os/ZygoteInitAO;->ajc$privMethod$com_lge_internal_os_ZygoteInitAO$com_lge_internal_os_ZygoteInitAO$rewriteIntArrayField(Ljava/lang/reflect/Field;I)V

    .line 35
    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 42
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_69
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_6f
    if-ge v4, v9, :cond_55

    aget-object v3, v8, v4

    .line 43
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    invoke-static {v3, p2}, Lcom/lge/internal/os/ZygoteInitAO;->ajc$privMethod$com_lge_internal_os_ZygoteInitAO$com_lge_internal_os_ZygoteInitAO$rewriteIntField(Ljava/lang/reflect/Field;I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_76} :catch_79

    .line 42
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 46
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_79
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to rewrite R values for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_93} :catch_93

    .line 52
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "declaredClasses":[Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_93
    move-exception v2

    .line 53
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Failed to rewrite R values"

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public ajc$after$com_lge_internal_os_ZygoteInitAO$1$b91b262c()V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(private static void ZygoteInit.preloadClasses())"
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 14
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 15
    .local v0, "cl":Ljava/lang/ClassLoader;
    const-string v1, "com.lge"

    invoke-static {v0, v1, v2}, Lcom/lge/internal/os/ZygoteInitAO;->ajc$privMethod$com_lge_internal_os_ZygoteInitAO$com_lge_internal_os_ZygoteInitAO$rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 16
    const-string v1, "com.lge.internal"

    invoke-static {v0, v1, v2}, Lcom/lge/internal/os/ZygoteInitAO;->ajc$privMethod$com_lge_internal_os_ZygoteInitAO$com_lge_internal_os_ZygoteInitAO$rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 17
    return-void
.end method
