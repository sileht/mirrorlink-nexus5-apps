.class public Lorg/bouncycastle/ocsp/OCSPRespGenerator;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final INTERNAL_ERROR:I = 0x2

.field public static final MALFORMED_REQUEST:I = 0x1

.field public static final SIG_REQUIRED:I = 0x5

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_LATER:I = 0x3

.field public static final UNAUTHORIZED:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(ILjava/lang/Object;)Lorg/bouncycastle/ocsp/OCSPResp;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_10

    instance-of v0, p2, Lorg/bouncycastle/ocsp/BasicOCSPResp;

    if-nez v0, :cond_20

    new-instance v0, Lorg/bouncycastle/ocsp/OCSPException;

    const-string/jumbo v1, "unknown response object"

    invoke-direct {v0, v1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lorg/bouncycastle/ocsp/OCSPResp;

    new-instance v1, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    new-instance v2, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lorg/bouncycastle/asn1/ocsp/ResponseBytes;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/ocsp/OCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponse;)V

    return-object v0

    :cond_20
    check-cast p2, Lorg/bouncycastle/ocsp/BasicOCSPResp;

    :try_start_22
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p2}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_42

    new-instance v1, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    sget-object v2, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    new-instance v0, Lorg/bouncycastle/ocsp/OCSPResp;

    new-instance v2, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    new-instance v3, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lorg/bouncycastle/asn1/ocsp/ResponseBytes;)V

    invoke-direct {v0, v2}, Lorg/bouncycastle/ocsp/OCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponse;)V

    return-object v0

    :catch_42
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    const-string/jumbo v2, "can\'t encode object."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
