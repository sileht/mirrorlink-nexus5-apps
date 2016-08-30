.class Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;
.super Ljava/lang/Object;
.source "NfcConfigGpriListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigGpriListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpriDetailConfig"
.end annotation


# instance fields
.field country:Ljava/lang/String;

.field gid:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field nfc_default:Ljava/lang/String;

.field operator:Ljava/lang/String;

.field spn:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/nfcconfig/NfcConfigGpriListParser;


# direct methods
.method private constructor <init>(Lcom/lge/nfcconfig/NfcConfigGpriListParser;)V
    .registers 3

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->this$0:Lcom/lge/nfcconfig/NfcConfigGpriListParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->operator:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->country:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->gid:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->spn:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->imsi:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->nfc_default:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/nfcconfig/NfcConfigGpriListParser;Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;)V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;-><init>(Lcom/lge/nfcconfig/NfcConfigGpriListParser;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "operator : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " country : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    const-string v1, " gid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->gid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " imsi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string v1, " nfc_default : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriDetailConfig;->nfc_default:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
