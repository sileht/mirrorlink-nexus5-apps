.class public final enum Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
.super Ljava/lang/Enum;
.source "ServiceCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/service/dispatcher/ServiceCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

.field public static final enum EVENT:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

.field public static final enum MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

.field public static final enum NONE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

.field public static final enum STORY:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    const-string v1, "MANAGE"

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    new-instance v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v3}, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->EVENT:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    new-instance v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    const-string v1, "STORY"

    invoke-direct {v0, v1, v4}, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->STORY:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    new-instance v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->NONE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    sget-object v1, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->EVENT:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->STORY:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->NONE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->ENUM$VALUES:[Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    return-object v0
.end method

.method public static values()[Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->ENUM$VALUES:[Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
