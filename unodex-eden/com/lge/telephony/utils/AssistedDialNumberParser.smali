.class public Lcom/lge/telephony/utils/AssistedDialNumberParser;
.super Ljava/lang/Object;
.source "AssistedDialNumberParser.java"


# static fields
.field static final aGroupName:[Ljava/lang/String;


# instance fields
.field convertPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/PatternPair;",
            ">;"
        }
    .end annotation
.end field

.field mConditionedPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/PatternPair;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mDataManager:Lcom/lge/telephony/utils/AssistedDialDataManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_G1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_G2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_G3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_G4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_G5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->aGroupName:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialDataManager;

    invoke-direct {v0, p1}, Lcom/lge/telephony/utils/AssistedDialDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->mDataManager:Lcom/lge/telephony/utils/AssistedDialDataManager;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->mConditionedPattern:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 27
    return-void
.end method

.method private parseNumberWithPatternData(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 13
    .param p1, "dialStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/PatternPair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "patternData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/utils/PatternPair;>;"
    const/4 v1, 0x0

    .line 57
    .local v1, "index":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_8

    .line 84
    .end local p1    # "dialStr":Ljava/lang/String;
    :cond_7
    :goto_7
    return-object p1

    .line 58
    .restart local p1    # "dialStr":Ljava/lang/String;
    :cond_8
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/telephony/utils/PatternPair;

    .line 59
    .local v4, "pattern":Lcom/lge/telephony/utils/PatternPair;
    const-string v7, "AssistedDial"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "parseNumber : dialStr is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", currentPattern is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/lge/telephony/utils/PatternPair;->getPattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v4}, Lcom/lge/telephony/utils/PatternPair;->getPattern()Ljava/lang/String;

    move-result-object v5

    .local v5, "sSearch":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 62
    invoke-virtual {v4}, Lcom/lge/telephony/utils/PatternPair;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "sValue":Ljava/lang/String;
    const-string v7, "AssistedDial"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dialStr : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Matched Pattern : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v7, "ASIS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 68
    const-string v7, "ASIS"

    invoke-virtual {v6, v7, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 71
    .local v3, "numberPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 72
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 73
    const/4 v0, 0x1

    .local v0, "groupIndex":I
    :goto_79
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-le v0, v7, :cond_81

    .end local v0    # "groupIndex":I
    :cond_7f
    move-object p1, v6

    .line 77
    goto :goto_7

    .line 74
    .restart local v0    # "groupIndex":I
    :cond_81
    sget-object v7, Lcom/lge/telephony/utils/AssistedDialNumberParser;->aGroupName:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 80
    .end local v0    # "groupIndex":I
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "numberPattern":Ljava/util/regex/Pattern;
    .end local v6    # "sValue":Ljava/lang/String;
    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method parseNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v1, "AssistedDial"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Entered parseNumber : dialStr "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->mDataManager:Lcom/lge/telephony/utils/AssistedDialDataManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialDataManager;->getPatternData()Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    .local v0, "patternData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/utils/PatternPair;>;"
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->convertPattern:Ljava/util/ArrayList;

    .line 39
    if-nez v0, :cond_1f

    .line 43
    .end local p1    # "dialStr":Ljava/lang/String;
    :goto_1e
    return-object p1

    .restart local p1    # "dialStr":Ljava/lang/String;
    :cond_1f
    invoke-direct {p0, p1, v0}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumberWithPatternData(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e
.end method

.method parseNumberFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "dialStr"    # Ljava/lang/String;
    .param p2, "tech"    # Ljava/lang/String;
    .param p3, "roaming"    # Ljava/lang/String;
    .param p4, "prop"    # Ljava/lang/String;
    .param p5, "point"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseNumberFor : dialStr "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tech : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", roaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    const-string v2, ", prop : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", point : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->mDataManager:Lcom/lge/telephony/utils/AssistedDialDataManager;

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->mConditionedPattern:Ljava/util/ArrayList;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/telephony/utils/AssistedDialDataManager;->getPatternDataFor(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->mConditionedPattern:Ljava/util/ArrayList;

    .line 52
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->mConditionedPattern:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumberWithPatternData(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParser;->mDataManager:Lcom/lge/telephony/utils/AssistedDialDataManager;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/utils/AssistedDialDataManager;->setContext(Landroid/content/Context;)V

    .line 32
    return-void
.end method
