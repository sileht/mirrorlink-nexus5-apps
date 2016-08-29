.class public Lorg/bouncycastle/eac/EACCertificateRequestHolder;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/eac/CVCertificateRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->parseBytes([B)Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/eac/EACCertificateRequestHolder;-><init>(Lorg/bouncycastle/asn1/eac/CVCertificateRequest;)V

    return-void
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/eac/CVCertificateRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CVCertificateRequest;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_24
    .catch Lorg/bouncycastle/asn1/ASN1ParsingException; {:try_start_0 .. :try_end_3} :catch_43

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lorg/bouncycastle/eac/EACIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "malformed data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_24
    move-exception v0

    new-instance v1, Lorg/bouncycastle/eac/EACIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "malformed data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-nez v1, :cond_6a

    new-instance v1, Lorg/bouncycastle/eac/EACIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "malformed data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6a
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method


# virtual methods
.method public getPublicKeyDataObject()Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getPublicKey()Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    move-result-object v0

    return-object v0
.end method

.method public isInnerSignatureValid(Lorg/bouncycastle/eac/operator/EACSignatureVerifier;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/eac/EACException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/eac/operator/EACSignatureVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getCertificateBody()Lorg/bouncycastle/asn1/eac/CertificateBody;

    move-result-object v1

    const-string/jumbo v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getInnerSignature()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/eac/operator/EACSignatureVerifier;->verify([B)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_22

    move-result v0

    return v0

    :catch_22
    move-exception v0

    new-instance v1, Lorg/bouncycastle/eac/EACException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to process signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/eac/CVCertificateRequest;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    return-object v0
.end method
