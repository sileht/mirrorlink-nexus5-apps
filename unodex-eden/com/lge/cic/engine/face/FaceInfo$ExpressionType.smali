.class public final enum Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;
.super Ljava/lang/Enum;
.source "FaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/engine/face/FaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExpressionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

.field public static final enum NEUTRAL:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

.field public static final enum SMILE:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    const-string v1, "NEUTRAL"

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;->NEUTRAL:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    new-instance v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    const-string v1, "SMILE"

    invoke-direct {v0, v1, v3}, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;->SMILE:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    sget-object v1, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;->NEUTRAL:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;->SMILE:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;->ENUM$VALUES:[Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    return-object v0
.end method

.method public static values()[Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;->ENUM$VALUES:[Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
