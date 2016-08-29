.class public Lorg/bouncycastle/asn1/DLTaggedObject;
.super Lorg/bouncycastle/asn1/ASN1TaggedObject;
.source "Unknown"


# static fields
.field private static final ZERO_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/DLTaggedObject;->ZERO_BYTES:[B

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->empty:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    sget-object v2, Lorg/bouncycastle/asn1/DLTaggedObject;->ZERO_BYTES:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_24

    const/16 v0, 0x80

    :cond_24
    iget v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, v0, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeImplicitObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    goto :goto_d

    :cond_2d
    iget v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, v0, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_d
.end method

.method encodedLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->empty:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-nez v1, :cond_29

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_29
    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method isConstructed()Z
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->empty:Z

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v0

    return v0

    :cond_19
    return v1
.end method
