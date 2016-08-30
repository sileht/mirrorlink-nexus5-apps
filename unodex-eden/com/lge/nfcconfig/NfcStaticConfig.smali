.class public Lcom/lge/nfcconfig/NfcStaticConfig;
.super Ljava/lang/Object;
.source "NfcStaticConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcStaticConfig"

.field private static sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;


# instance fields
.field mConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/nfcconfig/NfcStaticConfig;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useConfigKeys"    # [Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/nfcconfig/NfcStaticConfig;->mConfigMap:Ljava/util/HashMap;

    .line 23
    invoke-static {p1}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance(Landroid/content/Context;)Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    .line 25
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigure;
    invoke-direct {p0, v0, p2}, Lcom/lge/nfcconfig/NfcStaticConfig;->setConfigureMap(Lcom/lge/nfcconfig/NfcConfigure;[Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/nfcconfig/NfcStaticConfig;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/lge/nfcconfig/NfcStaticConfig;

    invoke-direct {v0, p0}, Lcom/lge/nfcconfig/NfcStaticConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    .line 65
    :cond_b
    sget-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Ljava/lang/String;)Lcom/lge/nfcconfig/NfcStaticConfig;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useConfigKeys"    # [Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    if-nez v0, :cond_b

    .line 70
    new-instance v0, Lcom/lge/nfcconfig/NfcStaticConfig;

    invoke-direct {v0, p0, p1}, Lcom/lge/nfcconfig/NfcStaticConfig;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    .line 72
    :cond_b
    sget-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    return-object v0
.end method

.method private setConfigureMap(Lcom/lge/nfcconfig/NfcConfigure;[Ljava/lang/String;)V
    .registers 11
    .param p1, "config"    # Lcom/lge/nfcconfig/NfcConfigure;
    .param p2, "useConfigKeys"    # [Ljava/lang/String;

    .prologue
    .line 30
    const/4 v3, 0x0

    .line 31
    .local v3, "usekeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_a

    array-length v4, p2

    if-lez v4, :cond_a

    .line 32
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 35
    :cond_a
    const-class v4, Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    .local v1, "classFields":[Ljava/lang/reflect/Field;
    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-lt v5, v6, :cond_16

    .line 55
    return-void

    .line 36
    :cond_16
    aget-object v0, v1, v5

    .line 38
    .local v0, "classField":Ljava/lang/reflect/Field;
    if-nez v0, :cond_1e

    .line 36
    :cond_1a
    :goto_1a
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_13

    .line 42
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_35

    const-string v4, "m"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 44
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    :cond_35
    if-eqz v3, :cond_3d

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 49
    :cond_3d
    iget-object v7, p0, Lcom/lge/nfcconfig/NfcStaticConfig;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_51
    invoke-virtual {v7, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .end local v2    # "name":Ljava/lang/String;
    :catch_55
    move-exception v4

    goto :goto_1a

    .restart local v2    # "name":Ljava/lang/String;
    :cond_57
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_5d} :catch_55

    goto :goto_51
.end method


# virtual methods
.method public getConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcStaticConfig;->mConfigMap:Ljava/util/HashMap;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lge/nfcconfig/NfcStaticConfig;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lge/nfcconfig/NfcStaticConfig;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    const-string v0, ""

    goto :goto_14
.end method
