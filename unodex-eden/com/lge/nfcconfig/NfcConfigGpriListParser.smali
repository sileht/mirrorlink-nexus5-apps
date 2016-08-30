.class public Lcom/lge/nfcconfig/NfcConfigGpriListParser;
.super Ljava/lang/Object;
.source "NfcConfigGpriListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;,
        Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;
    }
.end annotation


# static fields
.field private static final APPLY_AUTOPROFILE:Ljava/lang/Boolean;

.field private static final ATTR_NAME_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_NAME_DEFAULT:Ljava/lang/String; = "nfc_default"

.field private static final ATTR_NAME_GID:Ljava/lang/String; = "gid"

.field private static final ATTR_NAME_IMSI:Ljava/lang/String; = "imsi"

.field private static final ATTR_NAME_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_NAME_MNC:Ljava/lang/String; = "mnc"

.field private static final ATTR_NAME_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_OPERATOR:Ljava/lang/String; = "operator"

.field private static final ATTR_NAME_SPN:Ljava/lang/String; = "spn"

.field private static final DBG:Z = false

.field private static final FILE_PATH_CUPSS_PROFILE:Ljava/lang/String;

.field private static final FILE_PATH_CUPSS_PROFILE_OPEN:Ljava/lang/String;

.field private static final NFC_CONFIG_BLANK:Ljava/lang/String; = ""

.field private static final NFC_CONFIG_NO:Ljava/lang/String; = "no"

.field private static final NFC_CONFIG_YES:Ljava/lang/String; = "yes"

.field private static final TAG:Ljava/lang/String; = "NfcConfigGpriListParser"

.field private static final TAG_NAME_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_NAME_PROFILE:Ljava/lang/String; = "profile"

.field private static final TAG_NAME_SIMINFO:Ljava/lang/String; = "siminfo"

.field private static openGpriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static targetGpriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 17
    const-string v0, "ro.lge.autoprofile"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->APPLY_AUTOPROFILE:Ljava/lang/Boolean;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/config/config_nfc.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_CUPSS_PROFILE:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/config/config_nfcopen.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_CUPSS_PROFILE_OPEN:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetGpriList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openGpriList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSameGpriConfig(Ljava/util/List;Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    .registers 8
    .param p2, "priconfig"    # Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    .param p3, "mcc"    # Ljava/lang/String;
    .param p4, "mnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;",
            ">;",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "priList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 142
    iput-object p3, p2, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mcc:Ljava/lang/String;

    .line 143
    iput-object p4, p2, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mnc:Ljava/lang/String;

    move-object v0, p2

    .line 144
    :goto_f
    return-object v0

    .line 136
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    .line 137
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mcc:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mnc:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_f
.end method

.method private parseGpriFile(Ljava/util/List;Ljava/io/File;)Z
    .registers 18
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "priList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;>;"
    const-string v13, "profile"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeList(Ljava/io/File;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 75
    .local v4, "headNodeList":Lorg/w3c/dom/NodeList;
    if-nez v4, :cond_c

    const/4 v13, 0x0

    .line 133
    :goto_b
    return v13

    .line 77
    :cond_c
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lt v5, v13, :cond_15

    .line 133
    const/4 v13, 0x1

    goto :goto_b

    .line 78
    :cond_15
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 80
    .local v3, "headNode":Lorg/w3c/dom/Node;
    if-nez v3, :cond_1e

    .line 77
    :cond_1b
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 82
    :cond_1e
    instance-of v13, v3, Lorg/w3c/dom/Element;

    if-eqz v13, :cond_1b

    .line 83
    new-instance v12, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;-><init>(Lcom/lge/nfcconfig/NfcConfigGpriListParser;Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;)V

    .line 84
    .local v12, "priconfig":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 86
    .local v2, "childNodes":Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_1b

    .line 88
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2f
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lt v7, v13, :cond_3b

    .line 127
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 89
    :cond_3b
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 91
    .local v1, "cNode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_44

    .line 88
    :cond_41
    :goto_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 93
    :cond_44
    instance-of v13, v1, Lorg/w3c/dom/Element;

    if-eqz v13, :cond_41

    .line 94
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "siminfo"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 96
    const-string v13, "mcc"

    invoke-static {v1, v13}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "mcc":Ljava/lang/String;
    const-string v13, "mnc"

    invoke-static {v1, v13}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "mnc":Ljava/lang/String;
    iget-object v13, v12, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->detailConfig:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6e

    .line 100
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12, v8, v9}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->getSameGpriConfig(Ljava/util/List;Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    move-result-object v12

    .line 103
    :cond_6e
    new-instance v11, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;

    const/4 v13, 0x0

    invoke-direct {v11, p0, v13}, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;-><init>(Lcom/lge/nfcconfig/NfcConfigGpriListParser;Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;)V

    .line 105
    .local v11, "priDetail":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;
    const-string v13, "operator"

    invoke-static {v1, v13}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->operator:Ljava/lang/String;

    .line 106
    const-string v13, "country"

    invoke-static {v1, v13}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->country:Ljava/lang/String;

    .line 107
    const-string v13, "gid"

    invoke-static {v1, v13}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->gid:Ljava/lang/String;

    .line 108
    const-string v13, "spn"

    invoke-static {v1, v13}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->spn:Ljava/lang/String;

    .line 109
    const-string v13, "imsi"

    invoke-static {v1, v13}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->imsi:Ljava/lang/String;

    .line 111
    iget-object v13, v12, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->detailConfig:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 114
    .end local v8    # "mcc":Ljava/lang/String;
    .end local v9    # "mnc":Ljava/lang/String;
    .end local v11    # "priDetail":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;
    :cond_a2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "item"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_41

    .line 116
    const-string v13, "name"

    invoke-static {v1, v13}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "item_name":Ljava/lang/String;
    if-eqz v6, :cond_41

    const-string v13, "nfc_default"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_41

    .line 119
    invoke-static {v1}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "no"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d6

    .line 120
    invoke-static {v1}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "disabled"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_df

    :cond_d6
    const-string v10, "no"

    .line 121
    .local v10, "nfc_default":Ljava/lang/String;
    :goto_d8
    iget-object v13, v12, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->detailConfig:Ljava/util/List;

    invoke-direct {p0, v13, v10}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->setDefaultValue(Ljava/util/List;Ljava/lang/String;)Z

    goto/16 :goto_41

    .line 120
    .end local v10    # "nfc_default":Ljava/lang/String;
    :cond_df
    const-string v10, "yes"

    goto :goto_d8
.end method

.method private searchGPRI(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    .registers 8
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;"
        }
    .end annotation

    .prologue
    .local p1, "targetList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;>;"
    const/4 v1, 0x0

    .line 188
    if-eqz p2, :cond_5

    if-nez p3, :cond_7

    :cond_5
    move-object v0, v1

    .line 199
    :goto_6
    return-object v0

    .line 190
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    :cond_17
    move-object v0, v1

    .line 199
    goto :goto_6

    .line 191
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    .line 192
    .local v0, "list":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mnc:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mcc:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_6
.end method

.method private searchGPRI(Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "detailConfig"    # Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;
    .param p2, "gid"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "spn"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->gid:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 203
    iget-object v2, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->gid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 205
    iget-object v2, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->nfc_default:Ljava/lang/String;

    .line 229
    :goto_24
    return-object v2

    .line 207
    :cond_25
    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->imsi:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 208
    iget-object v2, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->imsi:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5a

    iget-object v2, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->imsi:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "subImsi":Ljava/lang/String;
    :goto_49
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 213
    iget-object v2, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->nfc_default:Ljava/lang/String;

    goto :goto_24

    .line 209
    .end local v1    # "subImsi":Ljava/lang/String;
    :cond_5a
    iget-object v1, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->imsi:Ljava/lang/String;

    goto :goto_49

    .line 216
    .end local v0    # "index":I
    :cond_5d
    const-string v2, ""

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    iget-object v2, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->spn:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 217
    iget-object v2, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->spn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 219
    iget-object v2, p1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->nfc_default:Ljava/lang/String;

    goto :goto_24

    .line 229
    :cond_82
    const/4 v2, 0x0

    goto :goto_24
.end method

.method private setDefaultValue(Ljava/util/List;Ljava/lang/String;)Z
    .registers 7
    .param p2, "nfc_default"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "detailConfig":Ljava/util/List;, "Ljava/util/List<Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 154
    :goto_7
    return v1

    .line 149
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    .line 154
    const/4 v1, 0x1

    goto :goto_7

    .line 149
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;

    .line 150
    .local v0, "tmp":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->nfc_default:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 151
    iput-object p2, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->nfc_default:Ljava/lang/String;

    goto :goto_c
.end method


# virtual methods
.method public clearGpriList()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 283
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetGpriList:Ljava/util/List;

    if-eqz v1, :cond_18

    .line 284
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetGpriList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_30

    .line 287
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetGpriList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 288
    sput-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetGpriList:Ljava/util/List;

    .line 291
    :cond_18
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openGpriList:Ljava/util/List;

    if-eqz v1, :cond_2f

    .line 292
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openGpriList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 295
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openGpriList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 296
    sput-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openGpriList:Ljava/util/List;

    .line 298
    :cond_2f
    return-void

    .line 284
    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    .line 285
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->detailConfig:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_b

    .line 292
    .end local v0    # "config":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    .line 293
    .restart local v0    # "config":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->detailConfig:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_22
.end method

.method public getGpriListFile()Z
    .registers 4

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 160
    .local v0, "confFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_CUPSS_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetGpriList:Ljava/util/List;

    if-eqz v2, :cond_19

    .line 164
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetGpriList:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->parseGpriFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v1

    .line 170
    :cond_19
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->APPLY_AUTOPROFILE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 172
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_CUPSS_PROFILE_OPEN:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetGpriList:Ljava/util/List;

    if-eqz v2, :cond_39

    .line 176
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openGpriList:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->parseGpriFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v1

    .line 185
    :cond_38
    :goto_38
    return v1

    .line 179
    :cond_39
    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    :goto_3c
    goto :goto_38

    :cond_3d
    const/4 v1, 0x0

    goto :goto_3c
.end method

.method public searchGPRI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "spn"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v2, "yes"

    .line 234
    .local v2, "result":Ljava/lang/String;
    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    move-object v3, v2

    .line 280
    :goto_7
    return-object v3

    .line 236
    :cond_8
    sget-object v4, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetGpriList:Ljava/util/List;

    if-nez v4, :cond_e

    move-object v3, v2

    goto :goto_7

    .line 238
    :cond_e
    sget-object v4, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetGpriList:Ljava/util/List;

    invoke-direct {p0, v4, p1, p2}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->searchGPRI(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    move-result-object v1

    .line 240
    .local v1, "list":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    if-eqz v1, :cond_22

    .line 241
    iget-object v4, v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->detailConfig:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_30

    .line 257
    :cond_22
    sget-object v4, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->APPLY_AUTOPROFILE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 259
    sget-object v4, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openGpriList:Ljava/util/List;

    if-nez v4, :cond_5d

    move-object v3, v2

    goto :goto_7

    .line 241
    :cond_30
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;

    .line 242
    .local v0, "detailConfig":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;
    iget-object v5, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->gid:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 243
    iget-object v5, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->imsi:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 244
    iget-object v5, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->spn:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 246
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->nfc_default:Ljava/lang/String;

    .line 248
    :cond_56
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->searchGPRI(Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1c

    goto :goto_7

    .line 261
    .end local v0    # "detailConfig":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;
    .end local v3    # "value":Ljava/lang/String;
    :cond_5d
    sget-object v4, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openGpriList:Ljava/util/List;

    invoke-direct {p0, v4, p1, p2}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->searchGPRI(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    move-result-object v1

    .line 263
    if-nez v1, :cond_67

    move-object v3, v2

    .line 265
    goto :goto_7

    .line 268
    :cond_67
    iget-object v4, v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->detailConfig:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_75

    :cond_73
    move-object v3, v2

    .line 280
    goto :goto_7

    .line 268
    :cond_75
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;

    .line 275
    .restart local v0    # "detailConfig":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->searchGPRI(Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_6d

    goto :goto_7
.end method
