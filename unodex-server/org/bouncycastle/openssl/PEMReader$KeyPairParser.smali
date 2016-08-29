.class abstract Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "KeyPairParser"
.end annotation


# instance fields
.field protected symProvider:Ljava/lang/String;

.field final synthetic this$0:Lorg/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;->this$0:Lorg/bouncycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;->symProvider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected readKeyPair(Lorg/bouncycastle/util/io/pem/PemObject;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v1

    move v6, v0

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v2

    if-nez v6, :cond_5c

    :goto_18
    :try_start_18
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1f} :catch_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1f} :catch_b3

    move-result-object v0

    return-object v0

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/util/io/pem/PemHeader;

    invoke-virtual {v1}, Lorg/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "Proc-Type"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    :cond_34
    invoke-virtual {v1}, Lorg/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "DEK-Info"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    :goto_41
    move-object v1, v4

    move v2, v6

    :goto_43
    move-object v4, v1

    move v6, v2

    goto :goto_c

    :cond_46
    invoke-virtual {v1}, Lorg/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "4,ENCRYPTED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v6, 0x1

    move-object v1, v4

    move v2, v6

    goto :goto_43

    :cond_57
    invoke-virtual {v1}, Lorg/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_41

    :cond_5c
    iget-object v1, p0, Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;->this$0:Lorg/bouncycastle/openssl/PEMReader;

    # getter for: Lorg/bouncycastle/openssl/PEMReader;->pFinder:Lorg/bouncycastle/openssl/PasswordFinder;
    invoke-static {v1}, Lorg/bouncycastle/openssl/PEMReader;->access$400(Lorg/bouncycastle/openssl/PEMReader;)Lorg/bouncycastle/openssl/PasswordFinder;

    move-result-object v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;->this$0:Lorg/bouncycastle/openssl/PEMReader;

    # getter for: Lorg/bouncycastle/openssl/PEMReader;->pFinder:Lorg/bouncycastle/openssl/PasswordFinder;
    invoke-static {v1}, Lorg/bouncycastle/openssl/PEMReader;->access$400(Lorg/bouncycastle/openssl/PEMReader;)Lorg/bouncycastle/openssl/PasswordFinder;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v3

    if-eqz v3, :cond_94

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;->symProvider:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/openssl/PEMReader;->crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B

    move-result-object v2

    goto :goto_18

    :cond_8b
    new-instance v0, Lorg/bouncycastle/openssl/PasswordException;

    const-string/jumbo v1, "No password finder specified, but a password is required"

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    new-instance v0, Lorg/bouncycastle/openssl/PasswordException;

    const-string/jumbo v1, "Password is null, but a password is required"

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_9d
    move-exception v0

    if-nez v6, :cond_aa

    new-instance v1, Lorg/bouncycastle/openssl/PEMException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_aa
    new-instance v1, Lorg/bouncycastle/openssl/PEMException;

    const-string/jumbo v2, "exception decoding - please check password and data."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_b3
    move-exception v0

    if-nez v6, :cond_c0

    new-instance v1, Lorg/bouncycastle/openssl/PEMException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_c0
    new-instance v1, Lorg/bouncycastle/openssl/PEMException;

    const-string/jumbo v2, "exception decoding - please check password and data."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
