.class Lorg/bouncycastle/cms/CMSAuthenticatedDataParser$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/cms/AuthAttributesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser$1;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthAttributes()Lorg/bouncycastle/asn1/ASN1Set;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser$1;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;

    # invokes: Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;
    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->access$000(Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;)Lorg/bouncycastle/asn1/ASN1Set;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t parse authenticated attributes!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
