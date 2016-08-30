.class public Lcom/lge/wfds/WfdsUtility;
.super Ljava/lang/Object;
.source "WfdsUtility.java"


# static fields
.field private static final macAddressPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "(?:[0-9a-f]{2}:){5}[0-9a-f]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lge/wfds/WfdsUtility;->macAddressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static isMacAddress(Ljava/lang/String;)Z
    .registers 3
    .param p0, "macString"    # Ljava/lang/String;

    .prologue
    .line 18
    if-eqz p0, :cond_10

    .line 19
    sget-object v1, Lcom/lge/wfds/WfdsUtility;->macAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 20
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 21
    const/4 v1, 0x1

    .line 24
    .end local v0    # "match":Ljava/util/regex/Matcher;
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method
