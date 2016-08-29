.class public Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private attributes:Ljava/util/List;

.field private leaveOffEmpty:Z

.field private publicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private subject:Lorg/bouncycastle/asn1/x500/X500Name;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->attributes:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->leaveOffEmpty:Z

    iput-object p1, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p2, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->publicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->attributes:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/Attribute;

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/asn1/pkcs/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->attributes:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/Attribute;

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/DERSet;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/asn1/pkcs/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6e

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    iget-object v2, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v3, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->publicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    :goto_27
    :try_start_27
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string/jumbo v2, "DER"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance v1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {v2, v0, v3, v4}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;-><init>(Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>(Lorg/bouncycastle/asn1/pkcs/CertificationRequest;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_4f} :catch_7a

    return-object v1

    :cond_50
    iget-boolean v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->leaveOffEmpty:Z

    if-nez v0, :cond_63

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->publicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/DERSet;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    goto :goto_27

    :cond_63
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->publicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    goto :goto_27

    :cond_6e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_13

    :catch_7a
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot produce certification request signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLeaveOffEmptyAttributes(Z)Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
    .registers 2

    iput-boolean p1, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->leaveOffEmpty:Z

    return-object p0
.end method
