.class final enum Lcom/lge/android/atservice/ATParser$ParserPhase;
.super Ljava/lang/Enum;
.source "ATParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/ATParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ParserPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/android/atservice/ATParser$ParserPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/android/atservice/ATParser$ParserPhase;

.field public static final enum DATA:Lcom/lge/android/atservice/ATParser$ParserPhase;

.field public static final enum IDLE:Lcom/lge/android/atservice/ATParser$ParserPhase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/lge/android/atservice/ATParser$ParserPhase;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/lge/android/atservice/ATParser$ParserPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/android/atservice/ATParser$ParserPhase;->IDLE:Lcom/lge/android/atservice/ATParser$ParserPhase;

    new-instance v0, Lcom/lge/android/atservice/ATParser$ParserPhase;

    const-string/jumbo v1, "DATA"

    invoke-direct {v0, v1, v3}, Lcom/lge/android/atservice/ATParser$ParserPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/android/atservice/ATParser$ParserPhase;->DATA:Lcom/lge/android/atservice/ATParser$ParserPhase;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/android/atservice/ATParser$ParserPhase;

    sget-object v1, Lcom/lge/android/atservice/ATParser$ParserPhase;->IDLE:Lcom/lge/android/atservice/ATParser$ParserPhase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/android/atservice/ATParser$ParserPhase;->DATA:Lcom/lge/android/atservice/ATParser$ParserPhase;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/android/atservice/ATParser$ParserPhase;->$VALUES:[Lcom/lge/android/atservice/ATParser$ParserPhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/android/atservice/ATParser$ParserPhase;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/lge/android/atservice/ATParser$ParserPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/android/atservice/ATParser$ParserPhase;

    return-object v0
.end method

.method public static values()[Lcom/lge/android/atservice/ATParser$ParserPhase;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/lge/android/atservice/ATParser$ParserPhase;->$VALUES:[Lcom/lge/android/atservice/ATParser$ParserPhase;

    return-object v0
.end method
