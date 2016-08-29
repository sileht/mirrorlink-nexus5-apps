.class Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/operator/InputDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient;

.field final synthetic val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$dataCipher:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient$1;->this$0:Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient;

    iput-object p2, p0, Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient$1;->val$dataCipher:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient$1;->val$dataCipher:Ljava/lang/Object;

    instance-of v0, v0, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-nez v0, :cond_10

    new-instance v1, Lorg/bouncycastle/crypto/io/CipherInputStream;

    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient$1;->val$dataCipher:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/StreamCipher;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;)V

    return-object v1

    :cond_10
    new-instance v1, Lorg/bouncycastle/crypto/io/CipherInputStream;

    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient$1;->val$dataCipher:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V

    return-object v1
.end method
