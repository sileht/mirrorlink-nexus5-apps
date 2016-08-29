.class Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestObject"
.end annotation


# instance fields
.field certId:Lorg/bouncycastle/cert/ocsp/CertificateID;

.field extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field final synthetic this$0:Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .registers 4

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->this$0:Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->certId:Lorg/bouncycastle/cert/ocsp/CertificateID;

    iput-object p3, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

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

    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->certId:Lorg/bouncycastle/cert/ocsp/CertificateID;

    invoke-virtual {v1}, Lorg/bouncycastle/cert/ocsp/CertificateID;->toASN1Object()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ocsp/Request;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-object v0
.end method
