.class public Lcom/lge/nfcconfig/NfcConfigTargetListParser;
.super Ljava/lang/Object;
.source "NfcConfigTargetListParser.java"


# static fields
.field private static final DBG:Z = false

.field private static final FILE_PATH_PROFILE:Ljava/lang/String;

.field private static final NFC_CONFIG_BLANK:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "NfcConfigTargetListParser"

.field private static final TAG_NAME_TARGET:Ljava/lang/String; = "Target"

.field private static targetlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParserUtil;->NFC_CONFIG_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "target_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->FILE_PATH_PROFILE:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTargetList()V
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 97
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    .line 100
    :cond_c
    return-void
.end method

.method public static getTargetListFile()Z
    .registers 3

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 44
    .local v0, "confFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->FILE_PATH_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 46
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->parseTargetListFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v1

    .line 49
    :cond_15
    return v1
.end method

.method public static isTargetModel(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "device"    # Ljava/lang/String;
    .param p1, "targetModelName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 61
    const-string v5, "~"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->searchTargetIndex(Ljava/lang/String;)I

    move-result v2

    .line 62
    .local v2, "targetModel":I
    invoke-static {p0}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->searchTargetIndex(Ljava/lang/String;)I

    move-result v1

    .line 63
    .local v1, "presentModel":I
    const-string v5, "~"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "directionIndex":I
    if-eqz p1, :cond_24

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 81
    :cond_23
    :goto_23
    return v3

    .line 69
    :cond_24
    if-ne v0, v7, :cond_2b

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_23

    .line 72
    :cond_2b
    if-eq v1, v7, :cond_2f

    if-ne v2, v7, :cond_33

    .line 73
    :cond_2f
    if-gtz v0, :cond_23

    move v3, v4

    goto :goto_23

    .line 75
    :cond_33
    if-eq v2, v1, :cond_23

    .line 78
    if-nez v0, :cond_3b

    .line 79
    if-gt v2, v1, :cond_23

    move v3, v4

    goto :goto_23

    .line 81
    :cond_3b
    if-lt v2, v1, :cond_23

    move v3, v4

    goto :goto_23
.end method

.method public static isTargetOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "targetOpName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 84
    if-eqz p1, :cond_c

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 93
    :cond_b
    :goto_b
    return v0

    .line 88
    :cond_c
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 89
    :cond_1c
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 91
    :cond_22
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static parseTargetListFile(Ljava/util/List;Ljava/io/File;)Z
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "Target"

    invoke-static {p1, v4}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeList(Ljava/io/File;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 26
    .local v1, "headNodeList":Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_a

    const/4 v4, 0x0

    .line 38
    :goto_9
    return v4

    .line 28
    :cond_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v2, v4, :cond_13

    .line 38
    const/4 v4, 0x1

    goto :goto_9

    .line 29
    :cond_13
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 31
    .local v0, "headNode":Lorg/w3c/dom/Node;
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_24

    .line 32
    invoke-static {v0}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "target":Ljava/lang/String;
    sget-object v4, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .end local v3    # "target":Ljava/lang/String;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method public static searchTargetIndex(Ljava/lang/String;)I
    .registers 3
    .param p0, "targetname"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 58
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .end local v0    # "i":I
    :cond_f
    return v0

    .line 53
    .restart local v0    # "i":I
    :cond_10
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
