.class Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/openssl/PEMEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;->build([C)Lorg/bouncycastle/openssl/PEMEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;

.field final synthetic val$iv:[B

.field final synthetic val$password:[C


# direct methods
.method constructor <init>(Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;[B[C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    iput-object p2, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$iv:[B

    iput-object p3, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$password:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    # getter for: Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;
    invoke-static {v0}, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;->access$100(Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Lorg/bouncycastle/jcajce/JcaJceHelper;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$password:[C

    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    # getter for: Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;->algorithm:Ljava/lang/String;
    invoke-static {v0}, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;->access$000(Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$iv:[B

    const/4 v0, 0x1

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/openssl/jcajce/PEMUtilities;->crypt(ZLorg/bouncycastle/jcajce/JcaJceHelper;[B[CLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    # getter for: Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;->algorithm:Ljava/lang/String;
    invoke-static {v0}, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;->access$000(Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIV()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$iv:[B

    return-object v0
.end method
