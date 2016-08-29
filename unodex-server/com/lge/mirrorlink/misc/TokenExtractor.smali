.class public Lcom/lge/mirrorlink/misc/TokenExtractor;
.super Ljava/lang/Object;
.source "TokenExtractor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tokenize(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "Message"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 9
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 10
    :cond_5
    return-object v3

    .line 13
    :cond_6
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 15
    .local v2, "tokenList":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 16
    .local v0, "i":I
    :goto_12
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 17
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 21
    :cond_21
    return-object v2
.end method
