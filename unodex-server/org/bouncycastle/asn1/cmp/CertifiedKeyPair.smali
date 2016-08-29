.class public Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

.field private privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

.field private publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v0, v1, :cond_17

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v0, v1, :cond_3a

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    move-result-object v0

    :goto_37
    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    goto :goto_16

    :cond_3a
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    move-result-object v0

    goto :goto_37

    :cond_51
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    goto :goto_16
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;-><init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;Lorg/bouncycastle/asn1/crmf/EncryptedValue;Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;Lorg/bouncycastle/asn1/crmf/EncryptedValue;Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_c

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'certOrEncCert\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getCertOrEncCert()Lorg/bouncycastle/asn1/cmp/CertOrEncCert;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    return-object v0
.end method

.method public getPrivateKey()Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    return-object v0
.end method

.method public getPublicationInfo()Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    if-nez v1, :cond_19

    :goto_f
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    if-nez v1, :cond_25

    :goto_13
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_19
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_f

    :cond_25
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_13
.end method
