.class public Lcom/lge/nfcconfig/NfcConfigListParser;
.super Ljava/lang/Object;
.source "NfcConfigListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    }
.end annotation


# static fields
.field private static final ATTR_NAME_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_NAME_DEVICE:Ljava/lang/String; = "device"

.field private static final ATTR_NAME_OPERATOR:Ljava/lang/String; = "operator"

.field private static final ATTR_NAME_TARGETMODEL:Ljava/lang/String; = "targetdevice"

.field private static final DBG:Z = false

.field private static final FILE_PATH_COMMON_PROFILE:Ljava/lang/String;

.field private static final FILE_PATH_DEFAULT_PROFILE:Ljava/lang/String;

.field private static final NFC_CONFIG_BLANK:Ljava/lang/String; = ""

.field private static final NFC_CONFIG_FALSE:Ljava/lang/String; = "false"

.field private static final NFC_CONFIG_FILE_POSTFIX:Ljava/lang/String; = ".xml"

.field private static final NFC_CONFIG_FILE_PREFIX:Ljava/lang/String; = "config"

.field private static final NFC_CONFIG_INITVALUE:Ljava/lang/String; = "INITVALUE"

.field private static final NFC_CONFIG_TRUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "NfcConfigListParser"

.field private static final TAG_NAME_CONFIG:Ljava/lang/String; = "Config"

.field private static configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigListParser$Config;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultConfig:Lcom/lge/nfcconfig/NfcConfigListParser$Config;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParserUtil;->NFC_CONFIG_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigListParser;->FILE_PATH_DEFAULT_PROFILE:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParserUtil;->NFC_CONFIG_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "config_COM.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigListParser;->FILE_PATH_COMMON_PROFILE:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigListParser;->sDefaultConfig:Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConfigFileName()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 125
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->FILE_PATH_COMMON_PROFILE:Ljava/lang/String;

    .line 126
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentOperator()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "operator":Ljava/lang/String;
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentCountry()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "country":Ljava/lang/String;
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentDevice()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "device":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {p0, v3, v0, v1}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 131
    invoke-direct {p0, v3, v0, v1}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_22
    :goto_22
    return-object v2

    .line 132
    :cond_23
    new-instance v4, Ljava/io/File;

    invoke-direct {p0, v3, v0, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 133
    invoke-direct {p0, v3, v0, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    goto :goto_22

    :cond_37
    new-instance v4, Ljava/io/File;

    invoke-direct {p0, v3, v6, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 135
    invoke-direct {p0, v3, v6, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    goto :goto_22

    :cond_4b
    new-instance v4, Ljava/io/File;

    invoke-direct {p0, v6, v0, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 137
    invoke-direct {p0, v6, v0, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_22
.end method

.method private getDefaultConfig(Lcom/lge/nfcconfig/NfcConfigListParser$Config;)Z
    .registers 9
    .param p1, "config"    # Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .prologue
    .line 219
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/lge/nfcconfig/NfcConfigListParser;->FILE_PATH_DEFAULT_PROFILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "Config"

    invoke-static {v5, v6}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeList(Ljava/io/File;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 221
    .local v2, "headNodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_11

    const/4 v5, 0x0

    .line 236
    :goto_10
    return v5

    .line 223
    :cond_11
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v3, v5, :cond_1a

    .line 236
    const/4 v5, 0x1

    goto :goto_10

    .line 224
    :cond_1a
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 226
    .local v1, "headChildNodeList":Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_27

    .line 223
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 228
    :cond_27
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_28
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_24

    .line 229
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 231
    .local v0, "childNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_37

    .line 228
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 233
    :cond_37
    invoke-direct {p0, p1, v0}, Lcom/lge/nfcconfig/NfcConfigListParser;->setConfigValue(Lcom/lge/nfcconfig/NfcConfigListParser$Config;Lorg/w3c/dom/Node;)V

    goto :goto_34
.end method

.method private makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "device"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "config"

    .line 107
    .local v0, "fileName":Ljava/lang/String;
    if-eqz p1, :cond_1b

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_1b
    if-eqz p2, :cond_34

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_34
    if-eqz p3, :cond_4d

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigParserUtil;->NFC_CONFIG_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseConfigFile(Ljava/util/List;Ljava/io/File;)Z
    .registers 12
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigListParser$Config;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "configList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/nfcconfig/NfcConfigListParser$Config;>;"
    const/4 v7, 0x0

    .line 176
    if-nez p1, :cond_4

    .line 216
    :cond_3
    :goto_3
    return v7

    .line 178
    :cond_4
    const-string v8, "Config"

    invoke-static {p2, v8}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeList(Ljava/io/File;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 180
    .local v4, "headNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_3

    .line 182
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v5, v7, :cond_15

    .line 216
    const/4 v7, 0x1

    goto :goto_3

    .line 183
    :cond_15
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 185
    .local v3, "headNode":Lorg/w3c/dom/Node;
    if-nez v3, :cond_1e

    .line 182
    :cond_1b
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 187
    :cond_1e
    instance-of v7, v3, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_1b

    .line 190
    :try_start_22
    sget-object v7, Lcom/lge/nfcconfig/NfcConfigListParser;->sDefaultConfig:Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    invoke-virtual {v7}, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    :try_end_2a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_22 .. :try_end_2a} :catch_53

    .line 197
    .local v2, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    :goto_2a
    const-string v7, "operator"

    invoke-static {v3, v7}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    .line 198
    const-string v7, "country"

    invoke-static {v3, v7}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    .line 199
    const-string v7, "device"

    invoke-static {v3, v7}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    .line 201
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 203
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1b

    .line 205
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_49
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_5a

    .line 212
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 194
    .end local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v2    # "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .end local v6    # "j":I
    :catch_53
    move-exception v7

    new-instance v2, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    invoke-direct {v2, p0}, Lcom/lge/nfcconfig/NfcConfigListParser$Config;-><init>(Lcom/lge/nfcconfig/NfcConfigListParser;)V

    .restart local v2    # "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    goto :goto_2a

    .line 206
    .restart local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v6    # "j":I
    :cond_5a
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 208
    .local v0, "cNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_63

    .line 205
    :goto_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 210
    :cond_63
    invoke-direct {p0, v2, v0}, Lcom/lge/nfcconfig/NfcConfigListParser;->setConfigValue(Lcom/lge/nfcconfig/NfcConfigListParser$Config;Lorg/w3c/dom/Node;)V

    goto :goto_60
.end method

.method private searchConfig()Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 274
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    if-nez v2, :cond_7

    move-object v0, v1

    .line 283
    :goto_6
    return-object v0

    .line 276
    :cond_7
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_15

    move-object v0, v1

    .line 283
    goto :goto_6

    .line 276
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 277
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 278
    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 279
    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6
.end method

.method private searchConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .registers 9
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 317
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    if-nez v3, :cond_7

    move-object v0, v2

    .line 331
    :goto_6
    return-object v0

    .line 319
    :cond_7
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_21

    .line 326
    invoke-direct {p0, p1}, Lcom/lge/nfcconfig/NfcConfigListParser;->searchConfigByOperator(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v1

    .local v1, "tmpConfig":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    if-nez v1, :cond_42

    .line 327
    invoke-direct {p0, p2}, Lcom/lge/nfcconfig/NfcConfigListParser;->searchConfigByCounty(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v1

    if-nez v1, :cond_42

    move-object v0, v2

    .line 328
    goto :goto_6

    .line 319
    .end local v1    # "tmpConfig":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 320
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    iget-object v4, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 321
    iget-object v4, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 322
    iget-object v4, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_6

    .end local v0    # "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .restart local v1    # "tmpConfig":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    :cond_42
    move-object v0, v1

    .line 331
    goto :goto_6
.end method

.method private searchConfigByCounty(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .registers 6
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 302
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 311
    :goto_5
    return-object v0

    .line 304
    :cond_6
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_17

    .line 311
    invoke-direct {p0}, Lcom/lge/nfcconfig/NfcConfigListParser;->searchConfig()Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v0

    goto :goto_5

    .line 304
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 305
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 306
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 307
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5
.end method

.method private searchConfigByOperator(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .registers 7
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 288
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    if-nez v2, :cond_7

    move-object v0, v1

    .line 297
    :goto_6
    return-object v0

    .line 290
    :cond_7
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_15

    move-object v0, v1

    .line 297
    goto :goto_6

    .line 290
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 291
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 292
    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 293
    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6
.end method

.method private setConfigValue(Lcom/lge/nfcconfig/NfcConfigListParser$Config;Lorg/w3c/dom/Node;)V
    .registers 11
    .param p1, "config"    # Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .param p2, "childNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 145
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 171
    :cond_4
    :goto_4
    return-void

    .line 149
    :cond_5
    instance-of v4, p2, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_4

    .line 150
    invoke-static {p2}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "value":Ljava/lang/String;
    const-string v4, "targetdevice"

    invoke-static {p2, v4}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "targetModelName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 154
    .local v0, "f":Ljava/lang/reflect/Field;
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "valueString":Ljava/lang/String;
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3a

    const-string v7, "m"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 156
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    :cond_3a
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 160
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentDevice()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->isTargetModel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 161
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_51} :catch_52

    goto :goto_4

    .end local v3    # "valueString":Ljava/lang/String;
    :catch_52
    move-exception v7

    .line 152
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public clearConfigList()V
    .registers 2

    .prologue
    .line 346
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 347
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 348
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    .line 350
    :cond_c
    return-void
.end method

.method public getConfigListFile()Z
    .registers 4

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 258
    .local v0, "confFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->FILE_PATH_DEFAULT_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 260
    new-instance v2, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    invoke-direct {v2, p0}, Lcom/lge/nfcconfig/NfcConfigListParser$Config;-><init>(Lcom/lge/nfcconfig/NfcConfigListParser;)V

    sput-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->sDefaultConfig:Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 261
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->sDefaultConfig:Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    invoke-direct {p0, v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Lcom/lge/nfcconfig/NfcConfigListParser$Config;)Z

    move-result v1

    .line 265
    :cond_1c
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    invoke-direct {p0}, Lcom/lge/nfcconfig/NfcConfigListParser;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    if-eqz v2, :cond_35

    .line 267
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/lge/nfcconfig/NfcConfigListParser;->parseConfigFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v1

    .line 270
    :cond_35
    return v1
.end method

.method public getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "tagname"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v1, ""

    .line 242
    .local v1, "resultValue":Ljava/lang/String;
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->sDefaultConfig:Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    if-eqz v2, :cond_2b

    .line 244
    :try_start_6
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->sDefaultConfig:Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "m"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 245
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_2c

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->sDefaultConfig:Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :cond_2b
    :goto_2b
    return-object v1

    .line 245
    .restart local v0    # "f":Ljava/lang/reflect/Field;
    :cond_2c
    const-string v1, ""
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_2f

    goto :goto_2b

    .end local v0    # "f":Ljava/lang/reflect/Field;
    :catch_2f
    move-exception v2

    goto :goto_2b
.end method

.method public searchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .registers 7
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "device"    # Ljava/lang/String;

    .prologue
    .line 334
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 343
    :goto_5
    return-object v0

    .line 336
    :cond_6
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_17

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/lge/nfcconfig/NfcConfigListParser;->searchConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v0

    goto :goto_5

    .line 336
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 337
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 338
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 339
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5
.end method
