.class Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/ocsp/OCSPReqGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestObject"
.end annotation


# instance fields
.field certId:Lorg/bouncycastle/ocsp/CertificateID;

.field extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field final synthetic this$0:Lorg/bouncycastle/ocsp/OCSPReqGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/ocsp/OCSPReqGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 4

    iput-object p1, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;->this$0:Lorg/bouncycastle/ocsp/OCSPReqGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;->certId:Lorg/bouncycastle/ocsp/CertificateID;

    iput-object p3, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method


# virtual methods
.method public toRequest()Lorg/bouncycastle/asn1/ocsp/Request;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/Request;

    iget-object v1, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;->certId:Lorg/bouncycastle/ocsp/CertificateID;

    invoke-virtual {v1}, Lorg/bouncycastle/ocsp/CertificateID;->toASN1Object()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ocsp/Request;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-object v0
.end method
