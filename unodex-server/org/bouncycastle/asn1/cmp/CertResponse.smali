.class public Lorg/bouncycastle/asn1/cmp/CertResponse;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

.field private certifiedKeyPair:Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

.field private rspInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private status:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/asn1/cmp/CertResponse;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_10

    if-eqz p2, :cond_19

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->status:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'certReqId\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'status\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->status:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v0, v1, :cond_22

    :goto_21
    return-void

    :cond_22
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v0, v1, :cond_3d

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    :goto_3a
    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_21

    :cond_3d
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v1, :cond_4c

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    goto :goto_21

    :cond_4c
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    goto :goto_3a
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertResponse;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/cmp/CertResponse;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CertResponse;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getCertReqId()Lorg/bouncycastle/asn1/ASN1Integer;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getCertifiedKeyPair()Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    return-object v0
.end method

.method public getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->status:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->status:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    if-nez v1, :cond_1d

    :goto_13
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v1, :cond_23

    :goto_17
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_1d
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_13

    :cond_23
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_17
.end method
