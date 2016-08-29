.class Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/operator/DigestCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Lorg/bouncycastle/cms/CMSAuthenticatedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;

.field final synthetic val$digestCalculator:Lorg/bouncycastle/operator/DigestCalculator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;Lorg/bouncycastle/operator/DigestCalculator;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator$1;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator$1;->val$digestCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator$1;->val$digestCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    return-object v0
.end method
