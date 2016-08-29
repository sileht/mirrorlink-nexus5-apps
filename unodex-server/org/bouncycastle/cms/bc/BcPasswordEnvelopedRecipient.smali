.class public Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient;
.super Lorg/bouncycastle/cms/bc/BcPasswordRecipient;
.source "Unknown"


# direct methods
.method public constructor <init>([C)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/bc/BcPasswordRecipient;-><init>([C)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/cms/RecipientOperator;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0, p2}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createContentCipher(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v2, Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient$1;

    invoke-direct {v2, p0, p2, v0}, Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object v1
.end method
