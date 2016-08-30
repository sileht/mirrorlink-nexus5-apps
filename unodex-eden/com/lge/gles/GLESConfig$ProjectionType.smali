.class public final enum Lcom/lge/gles/GLESConfig$ProjectionType;
.super Ljava/lang/Enum;
.source "GLESConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/gles/GLESConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProjectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/gles/GLESConfig$ProjectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/gles/GLESConfig$ProjectionType;

.field public static final enum FRUSTUM:Lcom/lge/gles/GLESConfig$ProjectionType;

.field public static final enum ORTHO:Lcom/lge/gles/GLESConfig$ProjectionType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/lge/gles/GLESConfig$ProjectionType;

    const-string v1, "ORTHO"

    invoke-direct {v0, v1, v2}, Lcom/lge/gles/GLESConfig$ProjectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$ProjectionType;->ORTHO:Lcom/lge/gles/GLESConfig$ProjectionType;

    new-instance v0, Lcom/lge/gles/GLESConfig$ProjectionType;

    const-string v1, "FRUSTUM"

    invoke-direct {v0, v1, v3}, Lcom/lge/gles/GLESConfig$ProjectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$ProjectionType;->FRUSTUM:Lcom/lge/gles/GLESConfig$ProjectionType;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/gles/GLESConfig$ProjectionType;

    sget-object v1, Lcom/lge/gles/GLESConfig$ProjectionType;->ORTHO:Lcom/lge/gles/GLESConfig$ProjectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/gles/GLESConfig$ProjectionType;->FRUSTUM:Lcom/lge/gles/GLESConfig$ProjectionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/gles/GLESConfig$ProjectionType;->ENUM$VALUES:[Lcom/lge/gles/GLESConfig$ProjectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/gles/GLESConfig$ProjectionType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/gles/GLESConfig$ProjectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/gles/GLESConfig$ProjectionType;

    return-object v0
.end method

.method public static values()[Lcom/lge/gles/GLESConfig$ProjectionType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/gles/GLESConfig$ProjectionType;->ENUM$VALUES:[Lcom/lge/gles/GLESConfig$ProjectionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/gles/GLESConfig$ProjectionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
