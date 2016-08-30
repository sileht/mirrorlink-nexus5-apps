.class Lcom/lge/telephony/utils/PatternPair;
.super Ljava/lang/Object;
.source "PatternPair.java"


# instance fields
.field msFormat:Ljava/lang/String;

.field msPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "sPattern"    # Ljava/lang/String;
    .param p2, "sFormat"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/lge/telephony/utils/PatternPair;->msPattern:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/lge/telephony/utils/PatternPair;->msFormat:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/telephony/utils/PatternPair;->msFormat:Ljava/lang/String;

    return-object v0
.end method

.method getPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/telephony/utils/PatternPair;->msPattern:Ljava/lang/String;

    return-object v0
.end method
