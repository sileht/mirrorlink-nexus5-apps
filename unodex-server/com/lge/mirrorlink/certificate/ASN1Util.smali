.class public Lcom/lge/mirrorlink/certificate/ASN1Util;
.super Ljava/lang/Object;
.source "ASN1Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_Cert"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDERIntValue([B)I
    .registers 10
    .param p0, "value"    # [B

    .prologue
    .line 19
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 20
    .local v2, "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    const-string/jumbo v6, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDERIntValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 21
    invoke-static {v2}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    instance-of v6, v2, Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v6, :cond_33

    .line 23
    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    move-object v3, v0

    .line 24
    .local v3, "objInt":Lorg/bouncycastle/asn1/DERInteger;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    return v6

    .line 25
    .end local v3    # "objInt":Lorg/bouncycastle/asn1/DERInteger;
    :cond_33
    instance-of v6, v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v6, :cond_49

    .line 26
    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object v4, v0

    .line 27
    .local v4, "objString":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 28
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    return v6

    .line 30
    .end local v4    # "objString":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v5    # "str":Ljava/lang/String;
    :cond_49
    const-string/jumbo v6, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDERIntValue:fail parse:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 31
    invoke-static {v2}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_67} :catch_69

    .line 35
    .end local v2    # "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    :goto_67
    const/4 v6, -0x1

    return v6

    .line 32
    :catch_69
    move-exception v1

    .line 33
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "getDERIntValue:IOException:"

    invoke-static {v6, v7, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_67
.end method

.method public static getDERStringValue([B)Ljava/lang/String;
    .registers 8
    .param p0, "value"    # [B

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 42
    .local v2, "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    const-string/jumbo v4, "MirrorLink_Cert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDERStringValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 43
    invoke-static {v2}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    instance-of v4, v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v4, :cond_34

    .line 45
    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object v3, v0

    .line 46
    .local v3, "objString":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    return-object v4

    .line 48
    .end local v3    # "objString":Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_34
    const-string/jumbo v4, "MirrorLink_Cert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDERStringValue:fail parse:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 49
    invoke-static {v2}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_52} :catch_54

    .line 53
    .end local v2    # "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    :goto_52
    const/4 v4, 0x0

    return-object v4

    .line 50
    :catch_54
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "getDERStringValue:IOException:"

    invoke-static {v4, v5, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_52
.end method
