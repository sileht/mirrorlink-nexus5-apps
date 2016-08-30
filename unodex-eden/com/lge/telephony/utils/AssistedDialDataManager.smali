.class public Lcom/lge/telephony/utils/AssistedDialDataManager;
.super Ljava/lang/Object;
.source "AssistedDialDataManager.java"


# static fields
.field static final AREACODEPATH:Ljava/lang/String; = "/etc/AreaCode.xml"

.field static final PATTERNPATH:Ljava/lang/String; = "/etc/Patterns.xml"

.field static final SIDPATH:Ljava/lang/String; = "/etc/SIDRange.xml"


# instance fields
.field dataParser:Lcom/lge/telephony/utils/AssistedDialDataParser;

.field private mAreaCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNode:Lorg/w3c/dom/Node;

.field private mSIDTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/SIDRangeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mAreaCodeMap:Ljava/util/HashMap;

    .line 15
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mSIDTable:Ljava/util/ArrayList;

    .line 24
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialDataManager;->initSIDTable()V

    .line 25
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialDataParser;

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mSIDTable:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1}, Lcom/lge/telephony/utils/AssistedDialDataParser;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->dataParser:Lcom/lge/telephony/utils/AssistedDialDataParser;

    .line 26
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialDataManager;->initAreaCodeInfo()V

    .line 27
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->dataParser:Lcom/lge/telephony/utils/AssistedDialDataParser;

    const-string v1, "/etc/Patterns.xml"

    invoke-virtual {v0, v1}, Lcom/lge/telephony/utils/AssistedDialDataParser;->parsePatternsXml(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mNode:Lorg/w3c/dom/Node;

    .line 28
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseXml returned "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mNode:Lorg/w3c/dom/Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method private initSIDTable()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mSIDTable:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 37
    const-string v0, "/etc/SIDRange.xml"

    invoke-static {v0}, Lcom/lge/telephony/utils/AssistedDialDataParser;->getSIDTable(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mSIDTable:Ljava/util/ArrayList;

    .line 39
    :cond_c
    return-void
.end method


# virtual methods
.method getAreaCodeMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mAreaCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method getPatternData()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/PatternPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->dataParser:Lcom/lge/telephony/utils/AssistedDialDataParser;

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mNode:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Lcom/lge/telephony/utils/AssistedDialDataParser;->getPatternMap(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getPatternDataFor(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p2, "tech"    # Ljava/lang/String;
    .param p3, "roaming"    # Ljava/lang/String;
    .param p4, "prop"    # Ljava/lang/String;
    .param p5, "point"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/PatternPair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/PatternPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "patternMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/utils/PatternPair;>;"
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->dataParser:Lcom/lge/telephony/utils/AssistedDialDataParser;

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mNode:Lorg/w3c/dom/Node;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/telephony/utils/AssistedDialDataParser;->getPatternMapFor(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method initAreaCodeInfo()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mAreaCodeMap:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 52
    const-string v0, "/etc/AreaCode.xml"

    invoke-static {v0}, Lcom/lge/telephony/utils/AssistedDialDataParser;->getAreaCodeMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->mAreaCodeMap:Ljava/util/HashMap;

    .line 54
    :cond_c
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataManager;->dataParser:Lcom/lge/telephony/utils/AssistedDialDataParser;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/utils/AssistedDialDataParser;->setContext(Landroid/content/Context;)V

    .line 33
    return-void
.end method
