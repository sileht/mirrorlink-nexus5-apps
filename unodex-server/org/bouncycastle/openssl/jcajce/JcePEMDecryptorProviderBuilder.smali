.class public Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/JcaJceHelper;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    return-object v0
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/openssl/PEMDecryptorProvider;
    .registers 3

    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;-><init>(Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;[C)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
    .registers 3

    new-instance v0, Lorg/bouncycastle/jcajce/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
    .registers 3

    new-instance v0, Lorg/bouncycastle/jcajce/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    return-object p0
.end method