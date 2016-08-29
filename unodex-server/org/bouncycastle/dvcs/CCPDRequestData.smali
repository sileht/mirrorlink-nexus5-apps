.class public Lorg/bouncycastle/dvcs/CCPDRequestData;
.super Lorg/bouncycastle/dvcs/DVCSRequestData;
.source "Unknown"


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/dvcs/Data;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    invoke-direct {p0}, Lorg/bouncycastle/dvcs/CCPDRequestData;->initDigest()V

    return-void
.end method

.method private initDigest()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/dvcs/CCPDRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessageImprint()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string/jumbo v1, "DVCSRequest.data.messageImprint should be specified for CCPD service"

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMessageImprint()Lorg/bouncycastle/dvcs/MessageImprint;
    .registers 3

    new-instance v0, Lorg/bouncycastle/dvcs/MessageImprint;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/CCPDRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessageImprint()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/MessageImprint;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;)V

    return-object v0
.end method
