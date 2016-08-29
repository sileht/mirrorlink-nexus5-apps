.class public Lorg/bouncycastle/asn1/BEROutputStream;
.super Lorg/bouncycastle/asn1/DEROutputStream;
.source "Unknown"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_13

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Primitive;

    if-nez v0, :cond_17

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "object not BEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BEROutputStream;->writeNull()V

    :goto_16
    return-void

    :cond_17
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V

    goto :goto_16

    :cond_1d
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V

    goto :goto_16
.end method
