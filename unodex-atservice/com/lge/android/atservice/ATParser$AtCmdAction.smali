.class public final enum Lcom/lge/android/atservice/ATParser$AtCmdAction;
.super Ljava/lang/Enum;
.source "ATParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/ATParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AtCmdAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/android/atservice/ATParser$AtCmdAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/android/atservice/ATParser$AtCmdAction;

.field public static final enum ASSIGN:Lcom/lge/android/atservice/ATParser$AtCmdAction;

.field public static final enum NONE:Lcom/lge/android/atservice/ATParser$AtCmdAction;

.field public static final enum QUERY:Lcom/lge/android/atservice/ATParser$AtCmdAction;

.field public static final enum RANGE:Lcom/lge/android/atservice/ATParser$AtCmdAction;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/lge/android/atservice/ATParser$AtCmdAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;->NONE:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    new-instance v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;

    const-string/jumbo v1, "QUERY"

    invoke-direct {v0, v1, v3}, Lcom/lge/android/atservice/ATParser$AtCmdAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;->QUERY:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    new-instance v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;

    const-string/jumbo v1, "ASSIGN"

    invoke-direct {v0, v1, v4}, Lcom/lge/android/atservice/ATParser$AtCmdAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;->ASSIGN:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    new-instance v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;

    const-string/jumbo v1, "RANGE"

    invoke-direct {v0, v1, v5}, Lcom/lge/android/atservice/ATParser$AtCmdAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;->RANGE:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/android/atservice/ATParser$AtCmdAction;

    sget-object v1, Lcom/lge/android/atservice/ATParser$AtCmdAction;->NONE:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/android/atservice/ATParser$AtCmdAction;->QUERY:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/android/atservice/ATParser$AtCmdAction;->ASSIGN:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/android/atservice/ATParser$AtCmdAction;->RANGE:Lcom/lge/android/atservice/ATParser$AtCmdAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;->$VALUES:[Lcom/lge/android/atservice/ATParser$AtCmdAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/android/atservice/ATParser$AtCmdAction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;

    return-object v0
.end method

.method public static values()[Lcom/lge/android/atservice/ATParser$AtCmdAction;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/lge/android/atservice/ATParser$AtCmdAction;->$VALUES:[Lcom/lge/android/atservice/ATParser$AtCmdAction;

    return-object v0
.end method
