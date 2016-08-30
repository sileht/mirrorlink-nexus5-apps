.class public Lcom/lge/loader/LGContextHelper;
.super Ljava/lang/Object;
.source "LGContextHelper.java"


# static fields
.field private static LG_CONTEXT_CLASS:Ljava/lang/String; = null

.field private static LG_SYSTEM_SERVICE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LGContextHelper"

.field private static cls:Ljava/lang/Class;

.field private static constructor:Ljava/lang/reflect/Constructor;

.field private static mLGContext:Ljava/lang/Object;

.field private static methods:Ljava/lang/reflect/Method;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 17
    const-string v1, "com.lge.systemservice.core.LGContext"

    sput-object v1, Lcom/lge/loader/LGContextHelper;->LG_CONTEXT_CLASS:Ljava/lang/String;

    .line 18
    const-string v1, "getLGSystemService"

    sput-object v1, Lcom/lge/loader/LGContextHelper;->LG_SYSTEM_SERVICE:Ljava/lang/String;

    .line 23
    :try_start_8
    sget-object v1, Lcom/lge/loader/LGContextHelper;->LG_CONTEXT_CLASS:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/lge/loader/LGContextHelper;->cls:Ljava/lang/Class;

    .line 24
    sget-object v1, Lcom/lge/loader/LGContextHelper;->cls:Ljava/lang/Class;

    sget-object v2, Lcom/lge/loader/LGContextHelper;->LG_SYSTEM_SERVICE:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/lge/loader/LGContextHelper;->methods:Ljava/lang/reflect/Method;

    .line 25
    sget-object v1, Lcom/lge/loader/LGContextHelper;->cls:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/lge/loader/LGContextHelper;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_32} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_32} :catch_49
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_32} :catch_5f

    .line 33
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_32
    return-void

    .line 26
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_33
    move-exception v0

    .line 27
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "LGContextHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class Not Found - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 28
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_49
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "LGContextHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoSuchMethodException - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 30
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5f
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "LGContextHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NullPointerException - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lge/loader/LGContextHelper;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v1, Lcom/lge/loader/LGContextHelper;->mLGContext:Ljava/lang/Object;

    if-nez v1, :cond_14

    .line 42
    :try_start_4
    sget-object v1, Lcom/lge/loader/LGContextHelper;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/loader/LGContextHelper;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/lge/loader/LGContextHelper;->mLGContext:Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_14} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_14} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_14} :catch_4f

    .line 53
    :cond_14
    :goto_14
    :try_start_14
    sget-object v1, Lcom/lge/loader/LGContextHelper;->methods:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/lge/loader/LGContextHelper;->mLGContext:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_21} :catch_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_21} :catch_6b
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_21} :catch_70
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_21} :catch_75

    move-result-object v1

    .line 63
    :goto_22
    return-object v1

    .line 43
    :catch_23
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v1, "LGContextHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InstantiationException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 45
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_39
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "LGContextHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalAccessException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 47
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4f
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "LGContextHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InvocationTargetException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 54
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_65
    move-exception v0

    .line 55
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 63
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_69
    const/4 v1, 0x0

    goto :goto_22

    .line 56
    :catch_6b
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_69

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_70
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_69

    .line 60
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_75
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_69
.end method
