.class public Lorg/bouncycastle/eac/EACCertificateBuilder;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final ZeroArray:[B


# instance fields
.field private certificateEffectiveDate:Lorg/bouncycastle/asn1/eac/PackedDate;

.field private certificateExpirationDate:Lorg/bouncycastle/asn1/eac/PackedDate;

.field private certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

.field private certificateHolderReference:Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

.field private certificationAuthorityReference:Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

.field private publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lorg/bouncycastle/eac/EACCertificateBuilder;->ZeroArray:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;Lorg/bouncycastle/asn1/eac/CertificateHolderReference;Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;Lorg/bouncycastle/asn1/eac/PackedDate;Lorg/bouncycastle/asn1/eac/PackedDate;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificationAuthorityReference:Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    iput-object p2, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    iput-object p3, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderReference:Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    iput-object p4, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    iput-object p5, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateEffectiveDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    iput-object p6, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateExpirationDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    return-void
.end method

.method private buildBody()Lorg/bouncycastle/asn1/eac/CertificateBody;
    .registers 9

    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/16 v0, 0x29

    sget-object v2, Lorg/bouncycastle/eac/EACCertificateBuilder;->ZeroArray:[B

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(I[B)V

    new-instance v0, Lorg/bouncycastle/asn1/eac/CertificateBody;

    iget-object v2, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificationAuthorityReference:Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    iget-object v3, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    iget-object v4, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderReference:Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    iget-object v5, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    iget-object v6, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateEffectiveDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    iget-object v7, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateExpirationDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/asn1/eac/CertificateBody;-><init>(Lorg/bouncycastle/asn1/DERApplicationSpecific;Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;Lorg/bouncycastle/asn1/eac/CertificateHolderReference;Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;Lorg/bouncycastle/asn1/eac/PackedDate;Lorg/bouncycastle/asn1/eac/PackedDate;)V

    return-object v0
.end method


# virtual methods
.method public build(Lorg/bouncycastle/eac/operator/EACSigner;)Lorg/bouncycastle/eac/EACCertificateHolder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/eac/EACException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/eac/EACCertificateBuilder;->buildBody()Lorg/bouncycastle/asn1/eac/CertificateBody;

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/eac/operator/EACSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string/jumbo v2, "DER"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance v1, Lorg/bouncycastle/eac/EACCertificateHolder;

    new-instance v2, Lorg/bouncycastle/asn1/eac/CVCertificate;

    invoke-interface {p1}, Lorg/bouncycastle/eac/operator/EACSigner;->getSignature()[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/asn1/eac/CVCertificate;-><init>(Lorg/bouncycastle/asn1/eac/CertificateBody;[B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/eac/EACCertificateHolder;-><init>(Lorg/bouncycastle/asn1/eac/CVCertificate;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object v1

    :catch_24
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
