.class public Lorg/bouncycastle/dvcs/VSDRequestData;
.super Lorg/bouncycastle/dvcs/DVCSRequestData;
.source "Unknown"


# instance fields
.field private doc:Lorg/bouncycastle/cms/CMSSignedData;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/dvcs/Data;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    invoke-direct {p0}, Lorg/bouncycastle/dvcs/VSDRequestData;->initDocument()V

    return-void
.end method

.method private initDocument()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->doc:Lorg/bouncycastle/cms/CMSSignedData;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessage()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_29

    :try_start_d
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessage()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSSignedData;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->doc:Lorg/bouncycastle/cms/CMSSignedData;
    :try_end_1e
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_4

    :catch_1f
    move-exception v0

    new-instance v1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string/jumbo v2, "Can\'t read CMS SignedData from input"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_29
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string/jumbo v1, "DVCSRequest.data.message should be specified for VSD service"

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMessage()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessage()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getParsedMessage()Lorg/bouncycastle/cms/CMSSignedData;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->doc:Lorg/bouncycastle/cms/CMSSignedData;

    return-object v0
.end method
