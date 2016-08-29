.class Lorg/bouncycastle/cms/CMSAuthenticatedData$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/cms/AuthAttributesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthenticatedData;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/CMSAuthenticatedData;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthAttributes()Lorg/bouncycastle/asn1/ASN1Set;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedData;

    # getter for: Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;
    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthenticatedData;->access$000(Lorg/bouncycastle/cms/CMSAuthenticatedData;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0
.end method
