.class public final enum Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;
.super Ljava/lang/Enum;
.source "SmpteOffset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leff/midi/event/meta/SmpteOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

.field public static final enum FRAME_RATE_24:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

.field public static final enum FRAME_RATE_25:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

.field public static final enum FRAME_RATE_30:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

.field public static final enum FRAME_RATE_30_DROP:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    const-string v1, "FRAME_RATE_24"

    invoke-direct {v0, v1, v2, v2}, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_24:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    new-instance v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    const-string v1, "FRAME_RATE_25"

    invoke-direct {v0, v1, v3, v3}, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_25:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    new-instance v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    const-string v1, "FRAME_RATE_30_DROP"

    invoke-direct {v0, v1, v4, v4}, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30_DROP:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    new-instance v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    const-string v1, "FRAME_RATE_30"

    invoke-direct {v0, v1, v5, v5}, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    sget-object v1, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_24:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_25:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30_DROP:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    aput-object v1, v0, v5

    sput-object v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->ENUM$VALUES:[Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "v"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput p3, p0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->value:I

    .line 158
    return-void
.end method

.method public static fromInt(I)Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;
    .registers 2
    .param p0, "val"    # I

    .prologue
    .line 162
    packed-switch p0, :pswitch_data_12

    .line 173
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 165
    :pswitch_5
    sget-object v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_24:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    goto :goto_4

    .line 167
    :pswitch_8
    sget-object v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_25:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    goto :goto_4

    .line 169
    :pswitch_b
    sget-object v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30_DROP:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    goto :goto_4

    .line 171
    :pswitch_e
    sget-object v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    goto :goto_4

    .line 162
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    return-object v0
.end method

.method public static values()[Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->ENUM$VALUES:[Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    array-length v1, v0

    new-array v2, v1, [Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
