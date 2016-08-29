.class public Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private final gx1:Ljava/math/BigInteger;

.field private final gx2:Ljava/math/BigInteger;

.field private final knowledgeProofForX1:[Ljava/math/BigInteger;

.field private final knowledgeProofForX2:[Ljava/math/BigInteger;

.field private final participantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "participantId"

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "gx1"

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "gx2"

    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "knowledgeProofForX1"

    invoke-static {p4, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "knowledgeProofForX2"

    invoke-static {p5, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->participantId:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->gx1:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->gx2:Ljava/math/BigInteger;

    array-length v0, p4

    invoke-static {p4, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->knowledgeProofForX1:[Ljava/math/BigInteger;

    array-length v0, p5

    invoke-static {p5, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->knowledgeProofForX2:[Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getGx1()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->gx1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGx2()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->gx2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getKnowledgeProofForX1()[Ljava/math/BigInteger;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->knowledgeProofForX1:[Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->knowledgeProofForX1:[Ljava/math/BigInteger;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getKnowledgeProofForX2()[Ljava/math/BigInteger;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->knowledgeProofForX2:[Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->knowledgeProofForX2:[Ljava/math/BigInteger;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->participantId:Ljava/lang/String;

    return-object v0
.end method
