.class public Lorg/bouncycastle/cert/ocsp/RespData;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private data:Lorg/bouncycastle/asn1/ocsp/ResponseData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/ResponseData;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/RespData;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    return-void
.end method


# virtual methods
.method public getProducedAt()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RespData;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getProducedAt()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getResponderId()Lorg/bouncycastle/cert/ocsp/RespID;
    .registers 3

    new-instance v0, Lorg/bouncycastle/cert/ocsp/RespID;

    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/RespData;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponderID()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/RespID;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;)V

    return-object v0
.end method

.method public getResponseExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RespData;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0
.end method

.method public getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RespData;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/cert/ocsp/SingleResp;

    const/4 v0, 0x0

    :goto_d
    array-length v3, v2

    if-ne v0, v3, :cond_11

    return-object v2

    :cond_11
    new-instance v3, Lorg/bouncycastle/cert/ocsp/SingleResp;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/ocsp/SingleResp;-><init>(Lorg/bouncycastle/asn1/ocsp/SingleResponse;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public getVersion()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RespData;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
