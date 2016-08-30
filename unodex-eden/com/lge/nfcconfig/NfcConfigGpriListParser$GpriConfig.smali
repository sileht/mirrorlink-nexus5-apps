.class Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
.super Ljava/lang/Object;
.source "NfcConfigGpriListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigGpriListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpriConfig"
.end annotation


# instance fields
.field detailConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;",
            ">;"
        }
    .end annotation
.end field

.field mcc:Ljava/lang/String;

.field mnc:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/nfcconfig/NfcConfigGpriListParser;


# direct methods
.method private constructor <init>(Lcom/lge/nfcconfig/NfcConfigGpriListParser;)V
    .registers 3

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->this$0:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mcc:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mnc:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->detailConfig:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/nfcconfig/NfcConfigGpriListParser;Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;-><init>(Lcom/lge/nfcconfig/NfcConfigGpriListParser;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mcc : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mnc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->detailConfig:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_36

    .line 53
    return-object v0

    .line 50
    :cond_36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;

    .line 51
    .local v1, "tmp":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method
