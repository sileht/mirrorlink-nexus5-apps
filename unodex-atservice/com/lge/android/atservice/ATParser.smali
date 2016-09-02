.class public Lcom/lge/android/atservice/ATParser;
.super Ljava/lang/Object;
.source "ATParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/ATParser$ParserPhase;,
        Lcom/lge/android/atservice/ATParser$AtCmdStatus;,
        Lcom/lge/android/atservice/ATParser$AtCmdAction;
    }
.end annotation


# static fields
.field private static final LGATCMD_PATTERN:Ljava/lang/String; = "[Aa][Tt][%][a-zA-Z]+[?=]?[?]?[0-9a-zA-Z]?[,[0-9a-zA-Z]+]*"

.field private static final MTCCMD_START_PATTERN:Ljava/lang/String; = "AT+MTC="


# instance fields
.field private currStatus:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

.field private doneFlag:Z

.field private mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

.field private mAtCmd:Ljava/lang/String;

.field private mAtFunc:I

.field private mAtParams:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;->NONE:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    iput-object v0, p0, Lcom/lge/android/atservice/ATParser;->mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    .line 41
    sget-object v0, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->ERROR:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    iput-object v0, p0, Lcom/lge/android/atservice/ATParser;->currStatus:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    .line 38
    return-void
.end method


# virtual methods
.method public getAction()Lcom/lge/android/atservice/ATParser$AtCmdAction;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/android/atservice/ATParser;->mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    return-object v0
.end method

.method public getAtCmdStatus()Lcom/lge/android/atservice/ATParser$AtCmdStatus;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/android/atservice/ATParser;->currStatus:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/android/atservice/ATParser;->mAtCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/android/atservice/ATParser;->mAtParams:[Ljava/lang/String;

    return-object v0
.end method

.method public isParsingDone()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/lge/android/atservice/ATParser;->doneFlag:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)Lcom/lge/android/atservice/ATParser$AtCmdStatus;
    .registers 14
    .param p1, "newline"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x1e

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x2

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Parse string: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 69
    sget-object v3, Lcom/lge/android/atservice/ATParser$AtCmdAction;->NONE:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    .line 70
    iput-object v10, p0, Lcom/lge/android/atservice/ATParser;->mAtCmd:Ljava/lang/String;

    .line 71
    iput-object v10, p0, Lcom/lge/android/atservice/ATParser;->mAtParams:[Ljava/lang/String;

    .line 73
    const-string/jumbo v3, "[Aa][Tt][%][a-zA-Z]+[?=]?[?]?[0-9a-zA-Z]?[,[0-9a-zA-Z]+]*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 74
    const-string/jumbo v3, "AT+MTC="

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 73
    if-eqz v3, :cond_115

    .line 75
    :cond_37
    const-string/jumbo v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 76
    sget-object v3, Lcom/lge/android/atservice/ATParser$AtCmdAction;->ASSIGN:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    .line 83
    :goto_44
    const-string/jumbo v3, "[+%=?]"

    const/4 v5, 0x3

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "tokens":[Ljava/lang/String;
    sget-boolean v3, Lcom/lge/android/atservice/Debug;->mDebug:Z

    if-eqz v3, :cond_83

    .line 86
    array-length v5, v2

    move v3, v4

    :goto_52
    if-ge v3, v5, :cond_83

    aget-object v1, v2, v3

    .line 87
    .local v1, "str":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 77
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_70
    const-string/jumbo v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 78
    sget-object v3, Lcom/lge/android/atservice/ATParser$AtCmdAction;->QUERY:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    goto :goto_44

    .line 80
    :cond_7e
    sget-object v3, Lcom/lge/android/atservice/ATParser$AtCmdAction;->NONE:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    goto :goto_44

    .line 91
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_83
    aget-object v3, v2, v4

    const-string/jumbo v5, "AT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 92
    aget-object v3, v2, v9

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtCmd:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtCmd:Ljava/lang/String;

    const-string/jumbo v5, "MTC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 94
    iget-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    sget-object v4, Lcom/lge/android/atservice/ATParser$AtCmdAction;->RANGE:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    if-ne v3, v4, :cond_a7

    .line 95
    sget-object v3, Lcom/lge/android/atservice/ATParser$AtCmdAction;->ASSIGN:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    .line 97
    :cond_a7
    array-length v3, v2

    if-le v3, v8, :cond_b5

    .line 98
    aget-object v3, v2, v8

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtParams:[Ljava/lang/String;

    .line 120
    :cond_b5
    :goto_b5
    sget-object v3, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->OK:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->currStatus:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    .line 138
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_b9
    :goto_b9
    iget-object v3, p0, Lcom/lge/android/atservice/ATParser;->currStatus:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    return-object v3

    .line 101
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_bc
    iget-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    sget-object v5, Lcom/lge/android/atservice/ATParser$AtCmdAction;->ASSIGN:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    if-ne v3, v5, :cond_fa

    .line 102
    aget-object v3, v2, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_fa

    .line 103
    const/16 v3, 0x100

    new-array v0, v3, [C

    .line 104
    .local v0, "buffer":[C
    aget-object v3, v2, v8

    aget-object v5, v2, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 105
    aget-char v3, v0, v4

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_fa

    .line 106
    sget-object v3, Lcom/lge/android/atservice/ATParser$AtCmdAction;->RANGE:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtAct:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    .line 107
    aget-object v3, v2, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_10d

    .line 108
    new-instance v3, Ljava/lang/String;

    aget-object v4, v2, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v0, v9, v4}, Ljava/lang/String;-><init>([CII)V

    aput-object v3, v2, v8

    .line 116
    .end local v0    # "buffer":[C
    :cond_fa
    :goto_fa
    array-length v3, v2

    if-le v3, v8, :cond_b5

    aget-object v3, v2, v8

    if-eqz v3, :cond_b5

    .line 117
    aget-object v3, v2, v8

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->mAtParams:[Ljava/lang/String;

    goto :goto_b5

    .line 110
    .restart local v0    # "buffer":[C
    :cond_10d
    aput-object v10, v2, v8

    goto :goto_fa

    .line 122
    .end local v0    # "buffer":[C
    :cond_110
    sget-object v3, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->ERROR:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->currStatus:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    goto :goto_b9

    .line 126
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_115
    const-string/jumbo v3, "OK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 127
    sget-object v3, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->OK:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->currStatus:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    .line 128
    iput-boolean v9, p0, Lcom/lge/android/atservice/ATParser;->doneFlag:Z

    goto :goto_b9

    .line 129
    :cond_125
    const-string/jumbo v3, "ERROR"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_140

    .line 130
    const-string/jumbo v3, "+CME ERROR"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 129
    if-nez v3, :cond_140

    .line 131
    const-string/jumbo v3, "+CMS ERROR"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 129
    if-eqz v3, :cond_b9

    .line 132
    :cond_140
    sget-object v3, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->ERROR:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    iput-object v3, p0, Lcom/lge/android/atservice/ATParser;->currStatus:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    .line 134
    iput-boolean v9, p0, Lcom/lge/android/atservice/ATParser;->doneFlag:Z

    goto/16 :goto_b9
.end method
