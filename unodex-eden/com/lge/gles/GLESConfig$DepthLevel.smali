.class public final enum Lcom/lge/gles/GLESConfig$DepthLevel;
.super Ljava/lang/Enum;
.source "GLESConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/gles/GLESConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DepthLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/gles/GLESConfig$DepthLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$gles$GLESConfig$DepthLevel:[I

.field public static final enum DEFAULT_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/gles/GLESConfig$DepthLevel;

.field public static final enum HIGH_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

.field public static final enum LOW_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$gles$GLESConfig$DepthLevel()[I
    .registers 3

    .prologue
    .line 42
    sget-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->$SWITCH_TABLE$com$lge$gles$GLESConfig$DepthLevel:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/gles/GLESConfig$DepthLevel;->values()[Lcom/lge/gles/GLESConfig$DepthLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/gles/GLESConfig$DepthLevel;->DEFAULT_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    invoke-virtual {v1}, Lcom/lge/gles/GLESConfig$DepthLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/gles/GLESConfig$DepthLevel;->HIGH_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    invoke-virtual {v1}, Lcom/lge/gles/GLESConfig$DepthLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/gles/GLESConfig$DepthLevel;->LOW_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    invoke-virtual {v1}, Lcom/lge/gles/GLESConfig$DepthLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->$SWITCH_TABLE$com$lge$gles$GLESConfig$DepthLevel:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/lge/gles/GLESConfig$DepthLevel;

    const-string v1, "HIGH_LEVEL_DEPTH"

    invoke-direct {v0, v1, v2}, Lcom/lge/gles/GLESConfig$DepthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->HIGH_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    .line 44
    new-instance v0, Lcom/lge/gles/GLESConfig$DepthLevel;

    const-string v1, "DEFAULT_LEVEL_DEPTH"

    invoke-direct {v0, v1, v3}, Lcom/lge/gles/GLESConfig$DepthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->DEFAULT_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    .line 45
    new-instance v0, Lcom/lge/gles/GLESConfig$DepthLevel;

    const-string v1, "LOW_LEVEL_DEPTH"

    invoke-direct {v0, v1, v4}, Lcom/lge/gles/GLESConfig$DepthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->LOW_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/gles/GLESConfig$DepthLevel;

    sget-object v1, Lcom/lge/gles/GLESConfig$DepthLevel;->HIGH_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/gles/GLESConfig$DepthLevel;->DEFAULT_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/gles/GLESConfig$DepthLevel;->LOW_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->ENUM$VALUES:[Lcom/lge/gles/GLESConfig$DepthLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static enumToFloat(Lcom/lge/gles/GLESConfig$DepthLevel;)F
    .registers 4
    .param p0, "level"    # Lcom/lge/gles/GLESConfig$DepthLevel;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-static {}, Lcom/lge/gles/GLESConfig$DepthLevel;->$SWITCH_TABLE$com$lge$gles$GLESConfig$DepthLevel()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/gles/GLESConfig$DepthLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 56
    :goto_e
    :pswitch_e
    return v0

    .line 50
    :pswitch_f
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_e

    .line 54
    :pswitch_12
    const/high16 v0, -0x3d380000    # -100.0f

    goto :goto_e

    .line 48
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/gles/GLESConfig$DepthLevel;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/gles/GLESConfig$DepthLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/gles/GLESConfig$DepthLevel;

    return-object v0
.end method

.method public static values()[Lcom/lge/gles/GLESConfig$DepthLevel;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->ENUM$VALUES:[Lcom/lge/gles/GLESConfig$DepthLevel;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/gles/GLESConfig$DepthLevel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
