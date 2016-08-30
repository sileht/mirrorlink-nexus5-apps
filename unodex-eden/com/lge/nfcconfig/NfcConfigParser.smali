.class public final Lcom/lge/nfcconfig/NfcConfigParser;
.super Ljava/lang/Object;
.source "NfcConfigParser.java"


# static fields
.field private static final DBG:Z = true

.field private static final NFC_CONFIG_BLANK:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "NfcConfigParser"


# instance fields
.field private mGpriListParser:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

.field private mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

.field private mTargetListParser:Lcom/lge/nfcconfig/NfcConfigTargetListParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "device"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mGpriListParser:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    .line 26
    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mTargetListParser:Lcom/lge/nfcconfig/NfcConfigTargetListParser;

    .line 27
    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    .line 30
    invoke-static {p3}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->setCurrentDevice(Ljava/lang/String;)V

    .line 31
    invoke-static {p2}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->setCurrentCountry(Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->setCurrentOperator(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    invoke-direct {v0}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;-><init>()V

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mGpriListParser:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    .line 35
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigTargetListParser;

    invoke-direct {v0}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;-><init>()V

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mTargetListParser:Lcom/lge/nfcconfig/NfcConfigTargetListParser;

    .line 36
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigListParser;

    invoke-direct {v0}, Lcom/lge/nfcconfig/NfcConfigListParser;-><init>()V

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    .line 37
    return-void
.end method


# virtual methods
.method public clearConfigList()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    invoke-virtual {v0}, Lcom/lge/nfcconfig/NfcConfigListParser;->clearConfigList()V

    .line 85
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    .line 86
    return-void
.end method

.method public clearGpriList()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mGpriListParser:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mGpriListParser:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    invoke-virtual {v0}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->clearGpriList()V

    .line 99
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mGpriListParser:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    .line 100
    return-void
.end method

.method public clearTargetList()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mTargetListParser:Lcom/lge/nfcconfig/NfcConfigTargetListParser;

    if-eqz v0, :cond_7

    .line 90
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->clearTargetList()V

    .line 92
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mTargetListParser:Lcom/lge/nfcconfig/NfcConfigTargetListParser;

    .line 93
    return-void
.end method

.method public getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "tagname"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    if-eqz v0, :cond_b

    .line 60
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    invoke-virtual {v0, p1}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public parseConfigFile()Z
    .registers 3

    .prologue
    .line 41
    const-string v0, "NfcConfigParser"

    const-string v1, "===================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mGpriListParser:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mGpriListParser:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    invoke-virtual {v0}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->getGpriListFile()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 43
    const-string v0, "NfcConfigParser"

    const-string v1, "NfcConfigGpriListParser complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1a
    const-string v0, "NfcConfigParser"

    const-string v1, "===================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mTargetListParser:Lcom/lge/nfcconfig/NfcConfigTargetListParser;

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->getTargetListFile()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 47
    const-string v0, "NfcConfigParser"

    const-string v1, "NfcConfigTargetListParser complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_32
    const-string v0, "NfcConfigParser"

    const-string v1, "===================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    invoke-virtual {v0}, Lcom/lge/nfcconfig/NfcConfigListParser;->getConfigListFile()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 51
    const-string v0, "NfcConfigParser"

    const-string v1, "NfcConfigListParser complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_4c
    const-string v0, "NfcConfigParser"

    const-string v1, "===================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public searchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .registers 5
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "device"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    if-eqz v0, :cond_b

    .line 66
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mListParser:Lcom/lge/nfcconfig/NfcConfigListParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/nfcconfig/NfcConfigListParser;->searchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v0

    .line 68
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public searchGPRI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "spn"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mGpriListParser:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    if-eqz v0, :cond_1f

    .line 73
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser;->mGpriListParser:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    .line 74
    if-eqz p3, :cond_16

    move-object v3, p3

    .line 75
    :goto_9
    if-eqz p4, :cond_19

    move-object v4, p4

    .line 76
    :goto_c
    if-eqz p5, :cond_1c

    move-object v5, p5

    :goto_f
    move-object v1, p1

    move-object v2, p2

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->searchGPRI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_15
    return-object v0

    .line 74
    :cond_16
    const-string v3, ""

    goto :goto_9

    .line 75
    :cond_19
    const-string v4, ""

    goto :goto_c

    .line 76
    :cond_1c
    const-string v5, ""

    goto :goto_f

    .line 78
    :cond_1f
    const/4 v0, 0x0

    goto :goto_15
.end method
