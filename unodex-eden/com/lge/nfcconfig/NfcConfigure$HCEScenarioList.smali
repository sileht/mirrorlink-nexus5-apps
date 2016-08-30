.class public final enum Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HCEScenarioList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

.field public static final enum config:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

.field public static final enum config_uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

.field public static final enum ese:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

.field public static final enum host:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

.field public static final enum host_ese:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

.field public static final enum host_uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

.field public static final enum na:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

.field public static final enum uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 348
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    const-string v1, "INITVALUE"

    invoke-direct {v0, v1, v3}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    const-string v1, "config"

    invoke-direct {v0, v1, v4}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->config:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    const-string v1, "uicc"

    invoke-direct {v0, v1, v5}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    const-string v1, "ese"

    invoke-direct {v0, v1, v6}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->ese:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    const-string v1, "host"

    invoke-direct {v0, v1, v7}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->host:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    const-string v1, "config_uicc"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->config_uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    const-string v1, "host_uicc"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->host_uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    const-string v1, "host_ese"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->host_ese:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    const-string v1, "na"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->na:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->config:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->ese:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->host:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->config_uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->host_uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->host_ese:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->na:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
