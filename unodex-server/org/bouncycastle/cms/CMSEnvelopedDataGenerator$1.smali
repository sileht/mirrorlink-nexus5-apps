.class Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/cms/CMSTypedData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSProcessable;Ljava/lang/String;ILjava/security/Provider;Ljava/security/Provider;)Lorg/bouncycastle/cms/CMSEnvelopedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

.field final synthetic val$content:Lorg/bouncycastle/cms/CMSProcessable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;Lorg/bouncycastle/cms/CMSProcessable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator$1;->this$0:Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator$1;->val$content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator$1;->val$content:Lorg/bouncycastle/cms/CMSProcessable;

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator$1;->val$content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v0, p1}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    return-void
.end method
