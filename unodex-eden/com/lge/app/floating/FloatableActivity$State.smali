.class final enum Lcom/lge/app/floating/FloatableActivity$State;
.super Ljava/lang/Enum;
.source "FloatableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FloatableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/app/floating/FloatableActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CREATE:Lcom/lge/app/floating/FloatableActivity$State;

.field public static final enum DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/app/floating/FloatableActivity$State;

.field public static final enum NEWINTENT:Lcom/lge/app/floating/FloatableActivity$State;

.field public static final enum PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

.field public static final enum RESTART:Lcom/lge/app/floating/FloatableActivity$State;

.field public static final enum RESUME:Lcom/lge/app/floating/FloatableActivity$State;

.field public static final enum START:Lcom/lge/app/floating/FloatableActivity$State;

.field public static final enum STOP:Lcom/lge/app/floating/FloatableActivity$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    new-instance v0, Lcom/lge/app/floating/FloatableActivity$State;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v3}, Lcom/lge/app/floating/FloatableActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/floating/FloatableActivity$State;->CREATE:Lcom/lge/app/floating/FloatableActivity$State;

    new-instance v0, Lcom/lge/app/floating/FloatableActivity$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/lge/app/floating/FloatableActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/floating/FloatableActivity$State;->START:Lcom/lge/app/floating/FloatableActivity$State;

    new-instance v0, Lcom/lge/app/floating/FloatableActivity$State;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lcom/lge/app/floating/FloatableActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/floating/FloatableActivity$State;->RESUME:Lcom/lge/app/floating/FloatableActivity$State;

    new-instance v0, Lcom/lge/app/floating/FloatableActivity$State;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/lge/app/floating/FloatableActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/floating/FloatableActivity$State;->PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

    new-instance v0, Lcom/lge/app/floating/FloatableActivity$State;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v7}, Lcom/lge/app/floating/FloatableActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    new-instance v0, Lcom/lge/app/floating/FloatableActivity$State;

    const-string v1, "DESTROY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/app/floating/FloatableActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/floating/FloatableActivity$State;->DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

    new-instance v0, Lcom/lge/app/floating/FloatableActivity$State;

    const-string v1, "NEWINTENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/app/floating/FloatableActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/floating/FloatableActivity$State;->NEWINTENT:Lcom/lge/app/floating/FloatableActivity$State;

    new-instance v0, Lcom/lge/app/floating/FloatableActivity$State;

    const-string v1, "RESTART"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/app/floating/FloatableActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/floating/FloatableActivity$State;->RESTART:Lcom/lge/app/floating/FloatableActivity$State;

    .line 157
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v1, Lcom/lge/app/floating/FloatableActivity$State;->CREATE:Lcom/lge/app/floating/FloatableActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/app/floating/FloatableActivity$State;->START:Lcom/lge/app/floating/FloatableActivity$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/app/floating/FloatableActivity$State;->RESUME:Lcom/lge/app/floating/FloatableActivity$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/app/floating/FloatableActivity$State;->PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/app/floating/FloatableActivity$State;->DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/app/floating/FloatableActivity$State;->NEWINTENT:Lcom/lge/app/floating/FloatableActivity$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/app/floating/FloatableActivity$State;->RESTART:Lcom/lge/app/floating/FloatableActivity$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/app/floating/FloatableActivity$State;->ENUM$VALUES:[Lcom/lge/app/floating/FloatableActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/app/floating/FloatableActivity$State;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/app/floating/FloatableActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/app/floating/FloatableActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/lge/app/floating/FloatableActivity$State;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->ENUM$VALUES:[Lcom/lge/app/floating/FloatableActivity$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/app/floating/FloatableActivity$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
